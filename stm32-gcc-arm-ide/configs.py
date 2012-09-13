
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

# default toolchains (GCC-ARM)
DEFAULT_TCHAIN_WIN32 = 'tools\\gccarm\\bin\\arm-none-eabi-'
DEFAULT_TCHAIN_LINUX = 'tools/gccarm/bin/arm-none-eabi-'
DEFAULT_TCHAIN_OSX   = 'tools/gccarm/bin/arm-none-eabi-'
# make command
DEFAULT_MAKECMD_WIN32 = 'tools\\msys\\bin\\make.exe'
DEFAULT_MAKECMD_LINUX = 'make'
DEFAULT_MAKECMD_OSX   = 'make'
# rm command
DEFAULT_RMCMD_WIN32 = 'tools/msys/bin/rm -rf'
DEFAULT_RMCMD_LINUX = 'rm'
DEFAULT_RMCMD_OSX   = 'rm'

# default chip
DEFAULT_CHIP = 'STM32F10X_MD_VL'

# default flags
COMMON_FLAGS = '-mcpu=cortex-m3 -mthumb -march=armv7-m'
DEFAULT_CFLAGS  = COMMON_FLAGS + ' -Os -c -g -x c -Wall -nostdlib -Wl,--gc-sections'
DEFAULT_CFLAGS += ' -fno-common -ffunction-sections -fdata-sections -DUSE_STDPERIPH_DRIVER'
DEFAULT_AFLAGS  = COMMON_FLAGS
DEFAULT_LFLAGS  = '-nostartfiles -T$(LKR_SCRIPT)'

# compiler defines for header parser
DEFAULT_COMPILER_DEFINES = 'USE_STDPERIPH_DRIVER:1'

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
        
    def getVersions(self):
        return "beta"
        '''
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
        '''

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
                            QtCore.QVariant(DEFAULT_TCHAIN_WIN32)).toString()
        elif os.sys.platform == 'linux2':
            self.CC = self.compilerCfg.value("COMPILER",
                            QtCore.QVariant(DEFAULT_TCHAIN_LINUX)).toString()
        elif os.sys.platform == 'darwin':
            self.CC = self.compilerCfg.value("COMPILER",
                            QtCore.QVariant(DEFAULT_TCHAIN_OSX)).toString()
        else:
            # todo: other host platform
            self.CC = ""        
        self.CHIP = self.compilerCfg.value("CHIP", QtCore.QVariant(DEFAULT_CHIP)).toString()
        self.CFLAGS = self.compilerCfg.value("CFLAGS", QtCore.QVariant(DEFAULT_CFLAGS)).toString()
        self.AFLAGS = self.compilerCfg.value("AFLAGS", QtCore.QVariant(DEFAULT_AFLAGS)).toString()
        self.LFLAGS = self.compilerCfg.value("LFLAGS", QtCore.QVariant(DEFAULT_LFLAGS)).toString()                            
        self.compilerCfg.endGroup()

        self.compilerCfg.beginGroup("MAKEFILE")        
        if os.sys.platform == 'win32':
            self.MAKE = self.compilerCfg.value("MAKE",
                            QtCore.QVariant(DEFAULT_MAKECMD_WIN32)).toString()
            if str(self.MAKE)==DEFAULT_MAKECMD_WIN32:
                os.putenv('CYGWIN', 'nodosfilewarning')
            self.RM = self.compilerCfg.value("RM",
                            QtCore.QVariant(DEFAULT_RMCMD_WIN32)).toString()
        elif os.sys.platform == 'linux2':
            self.MAKE = self.compilerCfg.value("MAKE",
                            QtCore.QVariant(DEFAULT_MAKECMD_LINUX)).toString()
            self.RM = self.compilerCfg.value("RM",
                            QtCore.QVariant(DEFAULT_RMCMD_LINUX)).toString()
        elif os.sys.platform == 'darwin':
            self.MAKE = self.compilerCfg.value("MAKE",
                            QtCore.QVariant(DEFAULT_MAKECMD_OSX)).toString()
            self.RM = self.compilerCfg.value("RM",
                            QtCore.QVariant(DEFAULT_RMCMD_OSX)).toString()
        else:
            # todo: other host platform
            self.MAKE = ""                            
        self.compilerCfg.endGroup()

    def saveCompilerSettings(self):
        # todo: add to menu        
        self.compilerCfg.beginGroup("TOOLCHAIN")        
        self.compilerCfg.setValue( "COMPILER", QtCore.QVariant( self.CC ) )
        self.compilerCfg.setValue( "CHIP", QtCore.QVariant( self.CHIP ) )
        self.compilerCfg.setValue( "CFLAGS", QtCore.QVariant( self.CFLAGS ) )
        self.compilerCfg.setValue( "AFLAGS", QtCore.QVariant( self.AFLAGS ) )
        self.compilerCfg.setValue( "LFLAGS", QtCore.QVariant( self.LFLAGS ) )        
        self.compilerCfg.endGroup()
        
        self.compilerCfg.beginGroup("MAKEFILE")        
        self.compilerCfg.setValue( "MAKECMD", QtCore.QVariant( self.MAKE ) )
        self.compilerCfg.setValue( "RMCMD", QtCore.QVariant( self.RM ) )        
        self.compilerCfg.endGroup()

    def getCompiler(self):
        return str( self.CC )
    
    def getChip(self):
        return str( self.CHIP )
    
    def getCflags(self):
        return str( self.CFLAGS )
        
    def getAflags(self):
        return str( self.AFLAGS )
    
    def getLflags(self):
        return str( self.LFLAGS )
        
    def getMakeCmd(self):
        return str( self.MAKE )
    
    def getRmCmd(self):
        return str( self.RM )

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

