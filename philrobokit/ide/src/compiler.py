
'''

@filename: compiler.py

'''

import os
import sys
import subprocess

# library path
LIB_DIR = 'libraries'
# PhilRobokit Library
PRK_LIB = LIB_DIR + '/PhilRobokitProjectLibrary'
# output directory 
OUT_DIR = 'philrobokit_output'


class PicCompiler:
    '''
    classdocs
    '''
    def __init__(self, parent=None, chip='16F877A'):
        '''
        Constructor
        '''
        self.parent = parent
        
        # PIC chip part
        self.chip = chip
        
        # compiler; todo: support for PICC18
        self.PICC = None
        
        # subprocess class    
        self.BuildProcess = None
        
        # platform dependent
        self.isWin32Platform = False
        self.subprocessShell = False
        
        if sys.platform == 'win32':
            self.toolpath = 'tools/picc_win32'
            self.isWin32Platform = True
            self.subprocessShell = True
        elif sys.platform == 'linux2':
            self.toolpath = 'tools/picc_linux'
        else:
            self.toolpath = None
            
        if self.toolpath:
            self.PICC = os.getcwd() + '/' + self.toolpath + '/bin/picc'
        
    def getInfo(self):
        if self.toolpath:
            try:              
                info = subprocess.Popen(
                            [ str(self.PICC), str('--ver') ], # get version info,
                            stdin=subprocess.PIPE,
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE,
                            shell=self.subprocessShell ).communicate()
                if info[0]:
                    return info[0]
            except:
                return 'failed to execute: ' + os.getcwd() + '/' + self.toolpath + '/bin/picc --ver'
        return None
        
    def buildProject(self, userCode=None):
        if not os.path.isfile(userCode):
            return [False, "file not found"]
        if self.BuildProcess:
            return [False, "busy"]
        
        # output folder - same location with user code
        outpath = os.path.dirname( str(userCode) ) + '/' + OUT_DIR
        
        # create output directory, if not existing
        if not os.path.exists( outpath ):
            os.makedirs( outpath )

        # todo: other compiler flags (e.g. hex output)
        CMD = [ self.PICC,
               '--CHIP=' + self.chip, # chip part number
              # '--WARN=-1',  # wrning level {-9 to 9}
              # '-V', # verbose
              # '--TIME', # compilation time
              # '--OUTPUT=bin', # create *.bin
              # '--MODE=lite', # pro, std, or lite
              # '--SUMMARY=psect', # default to 'mem'
               '-I' + os.getcwd() + '/' + PRK_LIB, # include directory
               '--OUTDIR=' + outpath, # output directory
               userCode] # C-codes
        
        commands = []
        for cmd in CMD:
            commands.append(str(cmd)) # Win32 workaround: QString problem
        
        # hey, why not use PyQt QProcess() instead of Popen()?
        # - for easy porting on other gui toolkit
        try:
            self.BuildProcess = subprocess.Popen(
                         commands,
                         stdin=subprocess.PIPE,
                         stdout=subprocess.PIPE,
                         stderr=subprocess.STDOUT,
                         shell=self.subprocessShell )
            return [True, "Build process running. Please wait..."]
        except:
            return [False, "abort"]
    
    def pollBuildProcess(self, stopProcess=False):
        if self.BuildProcess:
            if stopProcess:
                try:
                    self.BuildProcess.kill() # needs Admin privilege on Windows!
                    self.BuildProcess = None
                    return [True, "killed"]
                except:
                    print "n0 u can't kill me! :-p"
                    self.BuildProcess.wait() # just wait for the process to finish
                    self.BuildProcess = None
                    return [False, "waited"]               
            # read single lines    
            buff = self.BuildProcess.stdout.readline()
            if buff == '': # got nothing
                if self.BuildProcess.poll() != None: # process exited
                    self.BuildProcess = None
                    return [False, "process exited"]
            else:
                return [True, buff.strip()]
        else:
            return [False, "process not running"]
        
        
        