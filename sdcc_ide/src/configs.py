
'''

@filename: cofigs.py

'''
from PyQt4 import QtCore

# directory containing ini files
CONFIG_DIR = 'configs'
# IDE configurations file
IDE_CONFIG = CONFIG_DIR + '/ide.ini'
# compiler configurations file
COMPILER_CONFIG = CONFIG_DIR + '/compiler.ini'
# board settings file
BOARD_CONFIG = CONFIG_DIR + '/board.ini'

#default main window dimensions
IDE_SIZE = [480, 560]
IDE_POS = [100, 100]

class Configurations:
    '''
    classdocs
    '''
    def __init__(self, parent=None):
        '''
        Constructor
        '''
        self.parent = parent # QMainWindow parent
        
        self.ideCfg = QtCore.QSettings(IDE_CONFIG, QtCore.QSettings.IniFormat, self.parent)
        self.compilerCfg = QtCore.QSettings(COMPILER_CONFIG, QtCore.QSettings.IniFormat, self.parent)
        self.boardCfg = QtCore.QSettings(BOARD_CONFIG, QtCore.QSettings.IniFormat, self.parent)
        
        self.restoreIdeSettings()
        
    def restoreIdeSettings( self ):
        # reads settings from previous session
        self.ideCfg.beginGroup( "MainWindow" )
        self.parent.resize( self.ideCfg.value( "size",
                            QtCore.QVariant( QtCore.QSize(IDE_SIZE[0],IDE_SIZE[1]) ) ).toSize() )
        self.parent.move( self.ideCfg.value( "position",
                            QtCore.QVariant( QtCore.QPoint(IDE_POS[0],IDE_POS[1]) ) ).toPoint() )
        self.ideCfg.endGroup()
        #todo: other IDE settings
        
    def saveIdeSettings( self ):
        # save IDE settings.
        self.ideCfg.beginGroup( "MainWindow" )
        self.ideCfg.setValue( "size", QtCore.QVariant( self.parent.size() ) )
        self.ideCfg.setValue( "position", QtCore.QVariant( self.parent.pos() ) )
        self.ideCfg.endGroup()
        #todo: other IDE settings



