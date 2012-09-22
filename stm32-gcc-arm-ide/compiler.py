
'''

    @filename: compiler.py
    @project : PhilRoboKit IDE

    PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
    http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
    phirobotics.core@philrobotics.com

    Copyright (C) 2012  Julius Constante

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see http://www.gnu.org/licenses

'''

import os, subprocess
from PyQt4 import QtCore
from firmware import parseUserCode, getLinkerScript, getCompilerDefines
from configs import CompilerConfig
from cppeditor import PROJECT_EXT

# output directory 
OUT_DIR = '.phr_out'
# makefile filename
MAKEFILE = 'Makefile'

class PicCompilerThread(QtCore.QThread):
    '''
    classdocs
    '''
    def __init__(self, parent=None):
        QtCore.QThread.__init__(self, parent)
        self.parent = parent
        
        self.Configs = CompilerConfig(self)
        self.Configs.saveCompilerSettings()

        # platform dependent settings
        self.isWin32Platform = False
        if os.sys.platform == 'win32':
            self.isWin32Platform = True
            
        self.TCHAIN = self.Configs.getCompiler()
        self.make = self.Configs.getMakeCmd()

        self.UserCode = None
        self.CleanBuild = True
        self.CompilerProcess = None # todo: use QtCore.QProcess class instead
        
        self.LogList = QtCore.QStringList()
            
    def run(self):
        if not self.TCHAIN:
            print 'no supported compiler!'
            return
        
        self.LogList.clear()
        if not self.UserCode: # just get version info
            command = [ self.TCHAIN + 'gcc', '--version' ]
        else:
            projectName = os.path.splitext(os.path.basename(self.UserCode))[0]
            # output folder - same location with user code
            outpath = os.path.join( os.path.dirname(self.UserCode) , OUT_DIR )
            
            Result, Includes, Sources = parseUserCode( self.UserCode, outpath )
            #print Includes, Sources
            if not Result or not self.generateMakefile(outpath, projectName, Includes, Sources, self.CleanBuild):
                self.BuildProcess = None
                self.LogList.append( "<font color=red>file write error</font>" )
                return

            command = [ self.make , '-f'+os.path.join(outpath, MAKEFILE)]
            if self.CleanBuild:
                command.append('clean')
            command.append('all')
            
        try:
            self.CompilerProcess = subprocess.Popen( command,
                         stdin=subprocess.PIPE,
                         stdout=subprocess.PIPE,
                         stderr=subprocess.STDOUT,
                         shell=self.isWin32Platform )
            error_count = 0
            while True:
                self.usleep(50000)
                if not self.CompilerProcess:
                    break;
                # read single lines    
                buff = self.CompilerProcess.stdout.readline()
                if buff == '': # got nothing
                    if self.CompilerProcess.poll() != None: # process exited
                        self.CompilerProcess = None
                        # print 'compiler process finished.'
                        break
                else:
                    msg = str(buff)
                    msg_lowered = msg.lower()
                    # string to QString
                    if msg_lowered.find("warning:") >= 0:
                        self.LogList.append( "<font color=orange>%s</font>" % msg )
                    # todo: other error messages
                    elif msg_lowered.find("error:") >= 0 \
                            or msg_lowered.find("make: ***") >= 0 \
                            or msg_lowered.find("undefined reference to") >= 0:                    
                        self.LogList.append( "<font color=red>%s</font>" % msg )
                        error_count += 1
                    else:
                        self.LogList.append( "<font color=green>%s</font>" % msg )
        except:
            print 'got errors in compiler thread!'
            self.LogList.append( "<font color=red>ERROR: build failed!</font>")
            self.LogList.append( "<font color=red>%s</font>" % self.TCHAIN)
            self.CompilerProcess = None
        
        if not error_count:
            self.LogList.append( "<font size=4 color=cyan>done.</font>" )
        else:
            self.LogList.append( "<font size=4 color=red>done with error(s) !</font>"  )
        
        print 'compiler thread done.'
            
    def getCompilerInfo(self):
        if self.isRunning():
            return None

        self.UserCode = None
        self.start()
        while True:
            self.usleep(1000)
            if not self.isRunning():
                break;            
        if not self.LogList.count():
            return None
        else:
            self.LogList.takeLast()
            info = ''
            for msg in self.LogList:
                info += msg
            return info                        

    def buildProject(self, userCode=None, cleanBuild=False):
        if self.isRunning():
            return False, "busy"
        if not os.path.isfile(userCode):
            return False, "file not found"
        
        self.UserCode = str(userCode)
        self.CleanBuild = cleanBuild
        self.start()
        return True, "Build process running. Please wait..."

    def pollBuildProcess(self, stopProcess=False):
        if self.isRunning() or self.LogList.count()>0:
            if stopProcess:
                self.LogList.clear()
                try:
                    self.CompilerProcess.kill() # needs Admin privilege on Windows!
                    self.CompilerProcess = None
                    self.exit()
                    return True, "killed"
                except:
                    print "n0 u can't kill me! :-p"
                    self.CompilerProcess.wait() # just wait for the process to finish
                    self.CompilerProcess = None
                    self.exit()
                    return False, "waited"             
            if self.LogList.count():
                return True, str(self.LogList.takeFirst())
            else:
                return True, ''
        else:
            return False, "process not running"
            
    def generateMakefile(self, outPath='.', projectName='a', includePaths='', sourceFiles='', verbose=False):
        objects = []
        try:
            fout = open( os.path.join(outPath, MAKEFILE), 'w' )
            fout.write( '#\n# Automatically generated Makefile\n#\n\n' )
            fout.write( 'PROJECT = ' + projectName + '\n\n' )
            fout.write( 'OUTPUT_DIR = ' + outPath + '\n' )
            fout.write( 'ELF_FILE = $(OUTPUT_DIR)/$(PROJECT).elf\n' )
            fout.write( 'BIN_FILE = $(OUTPUT_DIR)/$(PROJECT).bin\n' )
            fout.write( 'MAP_FILE = $(OUTPUT_DIR)/$(PROJECT).map\n' )
            fout.write( 'LKR_SCRIPT = ' + getLinkerScript() + '\n\n')
            fout.write( 'TCHAIN = ' + self.TCHAIN.replace('\\','/') + '\n\n' )
            fout.write( 'INCLUDES =  \\\n' )
            for path in includePaths:
                fout.write( '\t\t' + path + ' \\\n' )
            fout.write( '\n\n' )
            fout.write( 'DEFINES = ' + getCompilerDefines() + '\n')
            fout.write( 'CFLAGS = ' + self.Configs.getCflags() + ' $(DEFINES)\n')
            fout.write( 'CXXFLAGS = ' + self.Configs.getCxxflags() + ' $(DEFINES)\n')
            fout.write( 'AFLAGS = ' + self.Configs.getAflags() + '\n' )
            fout.write( 'LFLAGS = ' + self.Configs.getLflags() + '\n\n\n' )
            fout.write( 'RM = ' + self.Configs.getRmCmd() + '\n\n\n' )
            fout.write( 'OBJECTS =  \\\n' )
            for src in sourceFiles:
                src = str(src)
                folder, objname = os.path.split( src[:src.rfind('.')] + '.o' )
                newfolder = os.path.split(folder)[1]
                objdir = os.path.join(outPath, 'obj', newfolder)
                if not os.path.exists(objdir): os.makedirs( objdir )
                obj = '$(OUTPUT_DIR)/obj/' + newfolder + '/' + objname
                fout.write( '\t\t' + obj + ' \\\n' )
                objects.append(obj)
            fout.write( '\n\n' )
            fout.write( 'all : $(BIN_FILE)\n' )
            fout.write( '\t@$(TCHAIN)size $(ELF_FILE)\n\n' )
            fout.write( 'clean:\n' )
            fout.write( '\t@$(RM) $(OBJECTS)\n' )
            fout.write( '\t@$(RM) $(OUTPUT_DIR)/$(PROJECT).*\n\n\n' )
            fout.write( '$(ELF_FILE): $(OBJECTS)\n' )
            fout.write( '\t@echo [LINKER] $(@F)\n')
            if verbose:
                fout.write( '\t$(TCHAIN)gcc $(LFLAGS) $^ -o $@\n\n' )
            else:
                fout.write( '\t@$(TCHAIN)gcc $(LFLAGS) $^ -o $@\n\n' )
            fout.write( '$(BIN_FILE): $(ELF_FILE)\n' )
            fout.write( '\t@echo [BIN Copy] $(@F)\n')
            fout.write( '\t@$(TCHAIN)objcopy -Obinary $< $@\n\n\n' )
            i = 0
            for src in sourceFiles:
                src = str(src)
                fout.write( objects[i] + ' : ' + src + '\n')
                src_ext = os.path.splitext(src)[1].lower()
                if src_ext == PROJECT_EXT:
                    fout.write( '\t@echo [CXX] $< \n' )
                    if verbose:
                        fout.write( '\t$(TCHAIN)gcc $(INCLUDES) $(CXXFLAGS) -x c++ $< -o $@\n\n')
                    else:
                        fout.write( '\t@$(TCHAIN)gcc $(INCLUDES) $(CXXFLAGS) -x c++ $< -o $@\n\n')
                elif src_ext == '.s':
                    fout.write( '\t@echo [AS] $(<F)\n' )
                    if verbose:
                        fout.write( '\t$(TCHAIN)as $(AFLAGS) $< -o $@\n\n')
                    else:
                        fout.write( '\t@$(TCHAIN)as $(AFLAGS) $< -o $@\n\n')
                elif src_ext == '.c':
                    fout.write( '\t@echo [CC] $(<F)\n' )
                    if verbose:
                        fout.write( '\t$(TCHAIN)gcc $(INCLUDES) $(CFLAGS) $< -o $@\n\n')
                    else:
                        fout.write( '\t@$(TCHAIN)gcc $(INCLUDES) $(CFLAGS) $< -o $@\n\n')
                elif src_ext == '.cpp' or src_ext == '.cxx':
                    fout.write( '\t@echo [CXX] $(<F)\n' )
                    if verbose:
                        fout.write( '\t$(TCHAIN)gcc $(INCLUDES) $(CXXFLAGS) $< -o $@\n\n')
                    else:
                        fout.write( '\t@$(TCHAIN)gcc $(INCLUDES) $(CXXFLAGS) $< -o $@\n\n')
                i += 1
            fout.close()
            return True
        except:
            return False
            
    def getExpectedBinFileName(self, userCode=None):
        if not userCode:
            return None
        outpath = os.path.dirname( str(userCode) ) + '/' + OUT_DIR
        fname = os.path.basename( str(userCode) )
        dotpos = fname.rfind('.')
        if dotpos > 0:
            binfile = outpath + '/' + fname[:dotpos] + '.bin'
        else:
            binfile = outpath + '/' + fname + '.bin'
        return binfile
    


