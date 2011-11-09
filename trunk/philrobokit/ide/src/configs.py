
'''

@filename: cofigs.py

'''
import os

# directory containing ini files
__CONFIG_DIR__ = 'configs'
# IDE configurations file
__IDE_CONFIG__ = 'ide.ini'
# compiler configurations file
__COMPILER_CONFIG__ = 'compiler.ini'
# board settings file
__BOARD_CONFIG__ = 'board.ini'


class Configurations:
    '''
    classdocs
    '''
    def __init__(self, parent=None):
        '''
        Constructor
        '''
        self.ideCfg = None
        self.compilerCfg = None
        self.boardCfg = None
        
        if not os.path.exists( __CONFIG_DIR__ ):
            self.createDefaults()

    def createDefaults(self):
        try:
            # create configuration folder if not yet exiting
            if not os.path.exists( __CONFIG_DIR__ ):
                os.makedirs( __CONFIG_DIR__ )
            # create files
            self.ideCfg = open( __CONFIG_DIR__ + '/' + __IDE_CONFIG__, 'w+' )
            self.compilerCfg = open( __CONFIG_DIR__ + '/' + __COMPILER_CONFIG__, 'w+' )
            self.boardCfg = open( __CONFIG_DIR__ + '/' + __BOARD_CONFIG__, 'w+' )
            self.ideCfg.close()
            self.compilerCfg.close()
            self.boardCfg.close()
            # todo: write the contents to these files
            return True
        except:
            print "unable to create default configurations"
            return False




