
'''

@filename: compiler.py

'''

import os
import sys

class PicCompiler:
    '''
    classdocs
    '''
    def __init__(self):
        '''
        Constructor
        '''
        if sys.platform == 'win32':
            self.toolpath = 'tools/picc_win32'
        elif sys.platform == 'linux2':
            self.toolpath = 'tools/picc_linux'
        else:
            self.toolpath = None
        
    def getInfo(self):
        if self.toolpath:
            try:
                # todo: use "Popen" class from "subprocess" modules
                info = os.popen(os.getcwd() + '/' + self.toolpath + '/bin/picc --ver').read()
                if info:
                    return info
            except:
                return 'running ' + os.getcwd() + '/' + self.toolpath + '/bin/picc --ver'
        return None
        
            