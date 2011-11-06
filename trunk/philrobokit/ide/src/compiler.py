
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
    def __init__(self, chip='16F877A'):
        '''
        Constructor
        '''
        
        # PIC chip part
        self.chip = chip
        
        # compiler; todo: support for PICC18
        self.PICC = None
        
        # subprocess class    
        self.proc = None
        
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
            return [False, 'file not found']
        #if not self.proc:
        #    return [False, 'previous process ongoing']
        
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
        
        self.proc = subprocess.Popen(
                         commands,
                         stdin=subprocess.PIPE,
                         stdout=subprocess.PIPE,
                         stderr=subprocess.PIPE,
                         shell=self.subprocessShell )
        
        # todo: dont wait!; show progressbar instead
        log = self.proc.stdout.read()
        return [True, log]
        
        
        