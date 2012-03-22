
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
LIB_OUT_DIR = 'lib'

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
            
        self.CompilerCommands = None            
        self.CompilerProcess = None # todo: use QtCore.QProcess class instead
        
        self.LogList = QtCore.QStringList()
            
    def run(self):
        if not self.PICC:
            print 'no supported compiler!'
            return
        self.LogList.clear()
        bStop = False
        for command in self.CompilerCommands:
            if bStop:
                break
            try:
                arguments = []
                for arg in command:
                    arguments.append(arg)
                self.LogList.append( "<font color=lightgreen>%s</font>" % arguments )
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
                            self.LogList.append( "<font color=yellow>%s</font>" % msg )
                        # todo: other error messages
                        elif msg_lowered.find("error") >= 0 \
                                or msg_lowered.find("exit status = 1") >= 0 \
                                or msg_lowered.find("^ (") >= 0 \
                                or msg_lowered.find("defined") >= 0:                    
                            self.LogList.append( "<font color=red>%s</font>" % msg )
                            bStop = True
                        else:
                            self.LogList.append( "<font color=lightgreen>%s</font>" % msg )
            except:
                print 'got errors in compiler thread!'
                self.CompilerProcess = None
                bStop = True
                
        self.CompilerCommands = None
        print 'compiler thread done.'
            
    def getCompilerInfo(self):
        if self.isRunning():
            return [False, "busy"]
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
            return [False, "busy"]
        if not os.path.isfile(userCode):
            return [False, "file not found"]
        
        # output folder - same location with user code
        outpath = os.path.dirname( str(userCode) ) + '/' + OUT_DIR
        
        Result, Defines, Includes, Sources = parseUserCode( userCode, outpath + '/' + LIB_OUT_DIR )
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

        self.CompilerCommands = []
        pcodeFiles = []
        for i in range(len(Sources)):
            src = Sources[i]
            command = [ self.PICC, '--CHIP=' + self.chip ]
            command += Defines
            command += Includes
            #command += ['--echo', '-Q', '--pass1']
            command += ['-Q', '--pass1']
            if i==0: # user code
                command += ['--OUTDIR=' + outpath, src]
                pcodeFiles.append( outpath + '/' + os.path.basename(src)[:-2] + '.p1' )
            else: # separate folder for library intermediates
                command += ['--OUTDIR=' + outpath + '/' + LIB_OUT_DIR, src]
                pcodeFiles.append( outpath + '/' + LIB_OUT_DIR + '/' + os.path.basename(src)[:-2] + '.p1' )
            self.CompilerCommands.append(command)

        command = [ self.PICC, '--CHIP=' + self.chip ]
        #command += ['--time', '--echo', '--OUTDIR=' + outpath]
        command += ['--OUTDIR=' + outpath]
        command += pcodeFiles        
        self.CompilerCommands.append(command)

        self.start()
        return [True, "Build process running. Please wait..."]

    def pollBuildProcess(self, stopProcess=False):
        if self.isRunning() or self.LogList.count()>0:
            if stopProcess:
                self.LogList.clear()
                try:
                    self.CompilerProcess.kill() # needs Admin privilege on Windows!
                    self.CompilerProcess = None
                    self.exit()
                    return [True, "killed"]
                except:
                    print "n0 u can't kill me! :-p"
                    self.CompilerProcess.wait() # just wait for the process to finish
                    self.CompilerProcess = None
                    self.exit()
                    return [False, "waited"]                
            if self.LogList.count():
                return [True, str(self.LogList.takeFirst())]
            else:
                return [True, '']
        else:
            return [False, "process not running"]
            

