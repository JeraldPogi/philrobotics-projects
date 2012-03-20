
'''

@filename: compiler.py

'''

import os, subprocess
from PyQt4 import QtCore
from firmware import parseUserCode

# hi-tech C compilers
PICC_WIN32 = 'tools/picc_win32/bin/picc'
PICC_LINUX = 'tools/picc_linux/bin/picc'

# output directory 
OUT_DIR = '.phr_out'

class PicCompilerThread(QtCore.QThread):
    '''
    classdocs
    '''
    def __init__(self, parent=None, chip='16F877A'):
        QtCore.QThread.__init__(self, parent)
        self.parent = parent
        self.chip = chip

        # platform dependent settings
        self.isWin32Platform = False
        if os.sys.platform == 'win32':
            self.PICC = os.getcwd() + '/' + PICC_WIN32
            self.isWin32Platform = True
        elif os.sys.platform == 'linux2':
            self.PICC = os.getcwd() + '/' + PICC_LINUX
        else:
            self.PICC = None
            
        self.CompilerArguments = None            
        self.CompilerProcess = None # todo: use QtCore.QProcess class instead
        
        self.LogList = QtCore.QStringList()
            
    def run(self):
        if not self.PICC:
            print 'no supported compiler!'
            return
        # print self.CompilerArguments
        if self.CompilerArguments:
            try:
                commands = []
                for cmd in self.CompilerArguments:
                    commands.append(cmd)
                self.CompilerProcess = subprocess.Popen(
                             commands,
                             stdin=subprocess.PIPE,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.STDOUT,
                             shell=self.isWin32Platform )
                
                self.LogList.clear()
                while True:
                    self.usleep(50000)
                    if not self.CompilerProcess:
                        break;
                    # read single lines    
                    buff = self.CompilerProcess.stdout.readline()
                    if buff == '': # got nothing
                        if self.CompilerProcess.poll() != None: # process exited
                            self.CompilerProcess = None
                            print 'compiler process finished.'
                            break
                    else:
                        msg = str(buff)
                        msg_lowered = msg.lower()
                        # string to QString
                        if msg_lowered.find("warning") >= 0:
                            self.LogList.append( "<font color=yellow>%s</font>" % msg )
                        # todo: other error messages
                        elif msg_lowered.find("error") >= 0 \
                                or msg_lowered.find("exit status = 1") >= 0 \
                                or msg_lowered.find("^ (") >= 0 \
                                or msg_lowered.find("defined") >= 0:                    
                            self.LogList.append( "<font color=red>%s</font>" % msg )
                        else:
                            self.LogList.append( "<font color=lightgreen>%s</font>" % msg )
            except:
                print 'got errors in compiler thread!'
                self.CompilerProcess = None
                
        self.CompilerArguments = None
        print 'compiler thread done.'
            
    def getCompilerInfo(self):
        if self.isRunning():
            return [False, "busy"]
        self.CompilerArguments = [ self.PICC, '--ver' ] # get version info
        self.start()
        while True:
            self.usleep(1000)
            if not self.isRunning():
                break;            
        if not self.LogList.count():
            return None
        else:
            info = ''
            for msg in self.LogList:
                info += msg
            return info
                        

    def buildProject(self, userCode=None):
        if self.isRunning():
            return [False, "busy"]
        if not os.path.isfile(userCode):
            return [False, "file not found"]
        
        # output folder - same location with user code
        outpath = os.path.dirname( str(userCode) ) + '/' + OUT_DIR
        
        Result, Defines, Includes, Sources = parseUserCode( userCode, outpath )
        # print Result, Defines, Includes, Sources
        if not Result:
            self.BuildProcess = None
            return [False, "file write error"]

        Defines.append( '-D_' + self.chip )
           
        # todo: other compiler flags (e.g. hex output)
        '''CMD = [ self.PICC,
               '--CHIP=' + self.chip, # chip part number
              # '--WARN=-1',  # wrning level {-9 to 9}
              # '-V', # verbose
              # '--TIME', # compilation time
              # '--OUTPUT=bin', # create *.bin
              # '--MODE=lite', # pro, std, or lite
              # '--SUMMARY=psect', # default to 'mem'
               '-I' + os.getcwd() + '/' + PRK_LIB, # include directory
               '--OUTDIR=' + outpath, # output directory
               parsedUserCode] # C-codes '''
        
        self.CompilerArguments = [ self.PICC, '--CHIP=' + self.chip ]
        self.CompilerArguments += Defines
        self.CompilerArguments += Includes
        self.CompilerArguments += ['--OUTDIR=' + outpath]
        self.CompilerArguments += Sources
        
        self.start()
        return [True, "Build process running. Please wait..."]

    def pollBuildProcess(self, stopProcess=False):
        if self.isRunning():
            if stopProcess:
                try:
                    self.CompilerProcess.kill() # needs Admin privilege on Windows!
                    self.CompilerProcess = None
                    return [True, "killed"]
                except:
                    print "n0 u can't kill me! :-p"
                    self.CompilerProcess.wait() # just wait for the process to finish
                    self.CompilerProcess = None
                    return [False, "waited"]
            if self.LogList.count():
                return [True, str(self.LogList.takeFirst())]
            else:
                return [True, '']
        else:
            return [False, "process not running"]
            

