
'''

@filename: compiler.py

'''

import os, subprocess
from PyQt4 import QtCore
from firmware import parseUserCode
from configs import CompilerConfig

# output directory 
OUT_DIR = '.phr_out'
LIB_OUT_DIR = 'lib'

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
            
        self.PICC = self.Configs.getCompiler()
        self.chip = self.Configs.getChip()
        self.cflags = self.Configs.getCflags()
        self.lflags = self.Configs.getLflags()
            
        self.CompilerCommands = None            
        self.CompilerProcess = None # todo: use QtCore.QProcess class instead
        
        self.LogList = QtCore.QStringList()
            
    def run(self):
        if not self.PICC:
            print 'no supported compiler!'
            return
        #print self.PICC
        self.LogList.clear()
        bStop = False
        for command in self.CompilerCommands:
            if bStop:
                break
            try:
                arguments = []
                for arg in command:
                    arguments.append(arg)
                self.CompilerProcess = subprocess.Popen(
                             arguments,
                             stdin=subprocess.PIPE,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.STDOUT,
                             shell=self.isWin32Platform )
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
                        if msg_lowered.find("warning") >= 0:
                            self.LogList.append( "<font color=orange>%s</font>" % msg )
                        # todo: other error messages
                        elif msg_lowered.find("error") >= 0 \
                                or msg_lowered.find("exit status = 1") >= 0 \
                                or msg_lowered.find("^ (") >= 0 \
                                or msg_lowered.find("defined") >= 0 \
                                or msg_lowered.find("conflicts with") >= 0:                    
                            self.LogList.append( "<font color=red>%s</font>" % msg )
                            bStop = True
                        else:
                            self.LogList.append( "<font color=green>%s</font>" % msg )
            except:
                print 'got errors in compiler thread!'
                self.LogList.append( "<font color=red>ERROR: build failed!</font>")
                self.LogList.append( "<font color=red>%s</font>" % self.PICC)
                self.CompilerProcess = None
                bStop = True
                
        self.CompilerCommands = None
        print 'compiler thread done.'
            
    def getCompilerInfo(self):
        if self.isRunning():
            return None
        self.CompilerCommands = [[ self.PICC, '--ver' ]] # get version info
        self.start()
        while True:
            self.usleep(1000)
            if not self.isRunning():
                break;            
        if not self.LogList.count():
            return None
        else:
            info = ''
            self.LogList.takeFirst()
            for msg in self.LogList:
                info += msg
            return info
                        

    def buildProject(self, userCode=None):
        if self.isRunning():
            return False, "busy"
        if not os.path.isfile(userCode):
            return False, "file not found"
        
        # output folder - same location with user code
        outpath = os.path.dirname( str(userCode) ) + '/' + OUT_DIR
        
        Result, Includes, Sources = parseUserCode( userCode, outpath + '/' + LIB_OUT_DIR )
        # print Result, Includes, Sources
        if not Result:
            self.BuildProcess = None
            return False, "file write error"

        self.CompilerCommands = []
        pcodeFiles = []
        for i in range(len(Sources)):
            src = Sources[i]
            command = [ self.PICC, '--CHIP=' + self.chip ]
            command += Includes
            command += self.cflags.split(';')
            if i==0: # user code
                command += ['--OUTDIR=' + outpath, src]
                pcodeFiles.append( outpath + '/' + os.path.basename(src)[:-2] + '.p1' )
            else: # separate folder for library intermediates
                command += ['--OUTDIR=' + outpath + '/' + LIB_OUT_DIR, src]
                pcodeFiles.append( outpath + '/' + LIB_OUT_DIR + '/' + os.path.basename(src)[:-2] + '.p1' )
            self.CompilerCommands.append(command)

        command = [ self.PICC, '--CHIP=' + self.chip ]
        command += ['--OUTDIR=' + outpath]
        command += self.lflags.split(';')
        command += pcodeFiles        
        self.CompilerCommands.append(command)

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
            
    def getExpectedHexFileName(self, userCode=None):
        if not userCode:
            return None
        outpath = os.path.dirname( str(userCode) ) + '/' + OUT_DIR
        fname = os.path.basename( str(userCode) )
        dotpos = fname.rfind('.')
        if dotpos > 0:
            hexfile = outpath + '/' + fname[:dotpos] + '.hex'
        else:
            hexfile = outpath + '/' + fname + '.hex'
        return hexfile

