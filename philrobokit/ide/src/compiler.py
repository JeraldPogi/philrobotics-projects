
'''

    @filename: compiler.py
    @project : PhilRoboKit IDE

    PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
    http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
    phirobotics.core@philrobotics.com

    Copyright (C) 2013  Julius Constante

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
from firmware import parseUserCode
from configs import CompilerConfig

COMPILER_NOTICE = '''
    MPLAB XC8 Compiler is reproduced and distributed by PhilRobotics Hackerspace
    under license from Microchip Technology Inc. All rights reserved by Microchip
    Technology Inc. MICROCHIP SOFTWARE OR FIRMWARE IS PROVIDED "AS IS,"
    WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
    NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
    PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
    MICROCHIP BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY
    ARISING OUT OF OR IN CONNECTION WITH THE SOFTWARE OR FIRMWARE OR
    THE USE OF OTHER DEALINGS IN THE SOFTWARE OR FIRMWARE.


'''

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
            
        self.CC = self.Configs.getCompiler()
        self.cflags = self.Configs.getCflags()
        self.lflags = self.Configs.getLflags()
            
        self.CompilerCommands = None            
        self.CompilerProcess = None # todo: use QtCore.QProcess class instead
        
        self.LogList = QtCore.QStringList()
            
    def run(self):
        if not self.CC:
            print 'no supported compiler!'
            return
        #print self.CC
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
                                or msg_lowered.find("conflicts with") >= 0 \
                                or msg_lowered.find("cannot find the path specified") >= 0 :
                            self.LogList.append( "<font color=red>%s</font>" % msg )
                            bStop = True
                        else:
                            self.LogList.append( "<font color=green>%s</font>" % msg )
            except:
                print 'got errors in compiler thread!'
                self.LogList.append( "<font color=red>%s</font>" % self.CC)
                self.CompilerProcess = None
                bStop = True
                
        self.CompilerCommands = None
        if bStop:
            self.LogList.append( "<font size=4 color=red>ERROR: build failed!</font>")
        else:
            self.LogList.append( "<font size=4 color=cyan>Done building.</font>")
            
    def getCompilerInfo(self):
        if self.isRunning():
            return None
        self.CompilerCommands = [[ self.CC, '--ver' ]] # get version info
        self.start()
        while True:
            self.usleep(1000)
            if not self.isRunning():
                break;            
        if not self.LogList.count():
            return None
        else:
            info = ''
            self.LogList.takeLast()
            for msg in self.LogList:
                info += msg
            return info
                        

    def buildProject(self, userCode=None, boardName='', verbose=False):
        if self.isRunning():
            return False, "busy"
        if not os.path.isfile(userCode):
            return False, "file not found"
        
        if boardName == 'Anito-877A':
            self.chip = '16F877A'
        elif boardName == 'Anito-4520':
            self.chip = '18F4520'
        else:
            return False, "board not supported"
        
        # output folder - same location with user code
        outpath = os.path.dirname( str(userCode) ) + '/' + OUT_DIR
        
        Result, Includes, Sources, Defines = parseUserCode( userCode, outpath + '/' + LIB_OUT_DIR )
        # print Result, Includes, Sources, Defines
        if not Result:
            self.BuildProcess = None
            return False, "file write error"

        self.CompilerCommands = []
        pcodeFiles = []
        for i in range(len(Sources)):
            src = Sources[i]
            command = [ self.CC, '--CHIP=' + self.chip ]
            command += Includes
            command += Defines
            command += self.cflags.split(' ')
            if verbose:
                command += ['-V', '-V'] # 2 V's
            else:
                command += ['-Q']
            if i==0: # user code
                command += ['--OUTDIR=' + outpath, src]
                self.CompilerCommands.append( [ '@echo', '[CC]', os.path.basename(str(userCode)) ] )
                pcodeFiles.append( outpath + '/' + os.path.basename(src)[:-2] + '.p1' )
            else: # separate folder for library intermediates
                ext = os.path.splitext(src)[1]
                if ext == '.as':
                    command += ['--OUTDIR=' + outpath + '/' + LIB_OUT_DIR, src]
                    self.CompilerCommands.append( [ '@echo', '[AS]', os.path.basename(src) ] )
                    pcodeFiles.append( outpath + '/' + LIB_OUT_DIR + '/' + os.path.basename(src)[:-3] + '.obj' )
                else:
                    command += ['--OUTDIR=' + outpath + '/' + LIB_OUT_DIR, src]
                    self.CompilerCommands.append( [ '@echo', '[CC]', os.path.basename(src) ] )
                    pcodeFiles.append( outpath + '/' + LIB_OUT_DIR + '/' + os.path.basename(src)[:-2] + '.p1' )
            self.CompilerCommands.append(command)

        self.CompilerCommands.append( [ '@echo', '[LD]', os.path.basename(str(userCode)) + '.hex' ] )
        command = [ self.CC, '--CHIP=' + self.chip ]
        command += ['--OUTDIR=' + outpath]
        command += self.lflags.split(' ')
        if verbose:
            command += ['-V', '-V', '--TIME'] # 2 V's
        else:
            command += ['-Q']
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
        return outpath + '/' + fname + '.hex'

