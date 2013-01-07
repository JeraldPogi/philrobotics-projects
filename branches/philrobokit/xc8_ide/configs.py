
'''

    @filename: configs.py
    @project : PhilRoboKit IDE

    PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
    http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
    phirobotics.core@philrobotics.com

    Copyright (C) 2012  Julius Constante

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
import os, glob, re
from PyQt4 import QtCore, QtGui

# directory containing ini files
CONFIG_DIR = 'configs/'
# IDE configurations file
IDE_CONFIG = CONFIG_DIR + 'ide.ini'
# compiler configurations file
COMPILER_CONFIG = CONFIG_DIR + 'compiler.ini'
# firmware configurations file
FIRMWARE_CONFIG = CONFIG_DIR + 'firmware.ini'
# board settings file
BOARD_CONFIG = CONFIG_DIR + 'board.ini'

# default main window dimensions
IDE_SIZE = [480, 560]
IDE_POS = [100, 100]

# default compilers (XC8)
DEFAULT_CC_WIN32 = 'tools\\xc8_win32\\bin\\xc8'
DEFAULT_CC_LINUX = 'tools/xc8_linux/bin/xc8'
DEFAULT_CC_OSX   = 'tools/xc8_osx/bin/xc8'

# default chip
DEFAULT_CHIP = '16F877A' 

# see compiler manual
'''   # '--WARN=-1',  # warning level {-9 to 9}
      # '-V', # verbose
      # '--TIME', # compilation time
      # '--OUTPUT=bin', # create *.bin
      # '--MODE=lite', # pro, std, or lite
      # '--SUMMARY=psect', # default to 'mem'
'''
       
# default flags
#DEFAULT_CFLAGS = '--CCI --OPT=space --RUNTIME=default,+download,+stackcall --pass1'
DEFAULT_CFLAGS = '--OPT=space --RUNTIME=default,+download,+stackcall --pass1'
DEFAULT_LFLAGS = '--SUMMARY=mem'

# compiler defines for header parser
DEFAULT_COMPILER_DEFINES = ''

class IdeConfig:
    '''
    classdocs
    '''
    def __init__(self, parent=None):
        '''
        Constructor
        '''
        self.parent = parent # QMainWindow parent
        self.ideCfg = QtCore.QSettings(IDE_CONFIG, QtCore.QSettings.IniFormat, self.parent)
        self.restoreIdeSettings()
        self.defaults = False
        
    def restoreIdeSettings( self ):
        # reads settings from previous session
        self.ideCfg.beginGroup( "MainWindow" )
        self.parent.resize( self.ideCfg.value( "size",
                            QtCore.QVariant( QtCore.QSize(IDE_SIZE[0],IDE_SIZE[1]) ) ).toSize() )
        self.parent.move( self.ideCfg.value( "position",
                            QtCore.QVariant( QtCore.QPoint(IDE_POS[0],IDE_POS[1]) ) ).toPoint() )
        self.ideCfg.endGroup()
        
        self.ideCfg.beginGroup( "SerialPort" )
        self.serialPortName = self.ideCfg.value("Name", QtCore.QVariant('')).toString()
        self.ideCfg.endGroup()
        
        self.ideCfg.beginGroup( "Board" )
        self.boardName = self.ideCfg.value("Name", QtCore.QVariant('')).toString()
        self.ideCfg.endGroup()
        
        #todo: other IDE settings
        
    def saveIdeSettings( self, serialPortName='', boardName='' ):
        if self.defaults:
            return
        # save IDE settings.
        self.ideCfg.beginGroup( "MainWindow" )
        self.ideCfg.setValue( "size", QtCore.QVariant( self.parent.size() ) )
        self.ideCfg.setValue( "position", QtCore.QVariant( self.parent.pos() ) )
        self.ideCfg.endGroup()
        
        self.ideCfg.beginGroup( "SerialPort" )
        self.ideCfg.setValue( "Name", QtCore.QVariant( serialPortName ) )
        self.ideCfg.endGroup()
        
        self.ideCfg.beginGroup( "Board" )
        self.ideCfg.setValue( "Name", QtCore.QVariant( boardName ) )
        self.ideCfg.endGroup()
        
        #todo: other IDE settings
        
    def setDefaults(self):
        result = QtGui.QMessageBox.question(self.parent, "Restore Defaults",
                         "Continue clearing configuration (*.ini) files",
                         "OK", "Cancel")
        if result:
            return
        # backup *.ini files
        for fname in glob.glob(CONFIG_DIR + '*.ini'):
            bkpfile = fname + '.bak'
            try:
                os.remove(bkpfile) # remove first existing backup file
            except:
                pass
            try:
                os.rename(fname, bkpfile)
            except:                
                pass
        QtGui.QMessageBox.about( self.parent, "Restore Defaults", "Please restart the IDE" )
        self.defaults = True
        
    def getSerialPortName(self):
        return self.serialPortName
    
    def getBoardName(self):
        return self.boardName
        
    def getVersions(self):
        ide_vsn = ''
        fw_vsn = ''
        try:
            vfile = open(CONFIG_DIR + 'versions.txt')
            for line in vfile.readlines():
                if line.find('build') >= 0:
                    ide_vsn = line.strip()
                if line.find('firmware') >= 0:
                    fw_vsn = line.strip()
            vfile.close()
            return ide_vsn + '  +  ' + fw_vsn            
        except:
            return "unknown"

class CompilerConfig:
    '''
    classdocs
    '''
    def __init__(self, parent=None):
        '''
        Constructor
        '''
        self.parent = parent
        
        self.compilerCfg = QtCore.QSettings(COMPILER_CONFIG, QtCore.QSettings.IniFormat, self.parent)
        
        self.restoreCompilerSettings()
        
    def restoreCompilerSettings(self):
        self.compilerCfg.beginGroup("TOOLCHAIN")
        
        if os.sys.platform == 'win32':
            self.CC = self.compilerCfg.value("COMPILER",
                            QtCore.QVariant(DEFAULT_CC_WIN32)).toString()
        elif os.sys.platform == 'linux2':
            self.CC = self.compilerCfg.value("COMPILER",
                            QtCore.QVariant(DEFAULT_CC_LINUX)).toString()
        elif os.sys.platform == 'darwin':
            self.CC = self.compilerCfg.value("COMPILER",
                            QtCore.QVariant(DEFAULT_CC_OSX)).toString()
        else:
            # todo: other host platform
            self.CC = ""
        
        self.CHIP = self.compilerCfg.value("CHIP", QtCore.QVariant(DEFAULT_CHIP)).toString()
        self.CFLAGS = self.compilerCfg.value("CFLAGS", QtCore.QVariant(DEFAULT_CFLAGS)).toString()
        self.LFLAGS = self.compilerCfg.value("LFLAGS", QtCore.QVariant(DEFAULT_LFLAGS)).toString()
                            
        self.compilerCfg.endGroup()

    def saveCompilerSettings(self):
        # todo: add to menu
        
        self.compilerCfg.beginGroup("TOOLCHAIN")
        
        self.compilerCfg.setValue( "COMPILER", QtCore.QVariant( self.CC ) )
        self.compilerCfg.setValue( "CHIP", QtCore.QVariant( self.CHIP ) )
        self.compilerCfg.setValue( "CFLAGS", QtCore.QVariant( self.CFLAGS ) )
        self.compilerCfg.setValue( "LFLAGS", QtCore.QVariant( self.LFLAGS ) )
        
        self.compilerCfg.endGroup()

    def getCompiler(self):
        return str( self.CC )
    
    def getChip(self):
        return str( self.CHIP )
    
    def getCflags(self):
        return str( self.CFLAGS )
    
    def getLflags(self):
        return str( self.LFLAGS )

class FirmwareConfig:
    '''
    classdocs
    '''
    def __init__(self, parent=None):
        '''
        Constructor
        '''
        self.parent = parent
        
        self.FwCfg = QtCore.QSettings(FIRMWARE_CONFIG, QtCore.QSettings.IniFormat, self.parent)
        
        self.restoreFwSettings()
        
    def restoreFwSettings(self):
        self.FwCfg.beginGroup("VALUES")
        
        self.defines = self.FwCfg.value("DEFINES", QtCore.QVariant(DEFAULT_COMPILER_DEFINES)).toString()
        
        self.FwCfg.endGroup()

    def saveFwSettings(self):
        self.FwCfg.beginGroup("VALUES")
        
        self.FwCfg.setValue( "DEFINES", QtCore.QVariant( self.defines ) )
        
        self.FwCfg.endGroup()

    def getDefines(self):
        define_dict = {}
        for raw in str(self.defines).split(';'):
            try:
                macro = raw.split(':')
                define_dict[macro[0]] = macro[1] # append new value
            except:
                pass
        return define_dict


# from djangoproject utils
def get_svn_revision(path=None):
    rev = None
    if path is None:
        path = os.getcwd()
    entries_path = '%s/.svn/entries' % path

    if os.path.exists(entries_path):
        entries = open(entries_path, 'r').read()
        # Versions >= 7 of the entries file are flat text.  The first line is
        # the version number. The next set of digits after 'dir' is the revision.
        if re.match('(\d+)', entries):
            rev_match = re.search('\d+\s+dir\s+(\d+)', entries)
            if rev_match:
                rev = rev_match.groups()[0]
        # Older XML versions of the file specify revision as an attribute of
        # the first entries node.
        else:
            from xml.dom import minidom
            dom = minidom.parse(entries_path)
            rev = dom.getElementsByTagName('entry')[0].getAttribute('revision')

    if rev:
        return u'svn-r%s' % rev
    return rev

