
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
               '--chip=' + self.chip,
               '-I' + os.getcwd() + '/' + PRK_LIB,
               '--OUTDIR=' + outpath,
               userCode]
        
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
                         stderr=subprocess.PIPE,
                         shell=self.subprocessShell )
            return [True, "build process running..."]
        except:
            return [False, "abort"]
    
    def pollBuildProcess(self):
        if self.BuildProcess:
            buff = self.BuildProcess.stdout.readline()
            if buff == '': # got nothing
                if self.BuildProcess.poll() != None: # process exited
                    self.BuildProcess = None
                    return [False, "process exited"]
            else:
                return [True, buff.strip()]
        else:
            return [False, "process not running"]
        
        
        