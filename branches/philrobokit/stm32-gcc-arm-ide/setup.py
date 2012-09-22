
'''

    @filename: setup.py
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

import os, glob
from cx_Freeze import setup, Executable
from configs import get_svn_revision

includes = ['sip', 'PyQt4.QtCore']
excludes = ['unicodedata', 'bz2' ]
packages = []
paths = []
files = []
script_exe = True
EXE = None

######## Files to include in the distribution ########################

# *.png images
files += glob.glob('images/*.png')

# core firmware files
files += glob.glob('hardware/cores/*')

# library files
files += glob.glob('libraries/*')

# example projects
files += glob.glob('examples/*')

'''
# version file
vfile = open('configs/versions.txt', 'w') # overwrite
svn_rev = get_svn_revision()
if svn_rev:
    vfile.write('IDE build ' + svn_rev + '\n')
vfile.write('firmware lib ' + "1.xx" + '\n') # todo: firmware library version
vfile.close()

files.append('configs/versions.txt')
'''

######## Platform dependent settings ##################################
if os.sys.platform == 'win32':
    # add win32 for pyserial
    packages.append('serial.win32')
    # add tool chain files
    files += glob.glob('tools/gccarm/*')
    files += glob.glob('tools/msys/*')
    # add PL2303 usb driver
    files += glob.glob('drivers/PL2303/windows/*')
    EXE = Executable(
        script = 'main.pyw',
        base = 'Win32GUI',
        targetName = 'stm32-ide.exe',
        icon = 'images/app.ico',
        )

elif os.sys.platform == 'linux2':
    # add tool chain files
    files += glob.glob('tools/gccarm/*')
    EXE = Executable(
        script = 'main.pyw',
        targetName = 'stm32-ide',
        base = None,
        icon = None,
        )

elif os.sys.platform == 'darwin': # note: use cx_Freeze 4.3 or later
    # prevent dynamic library loading error on OS X
    script_exe = False
    # add tool chain files
    files += glob.glob('tools/gccarm/*')
    # add PL2303 usb driver
    files += glob.glob('drivers/PL2303/macosx/*')
    EXE = Executable(
        script = 'main.pyw',
        targetName = 'stm32-ide',
        base = None,
        icon = None,
        )

else:
    print 'platform not (yet) supported!'

##################### cx_freeze ##################################
if EXE:
    setup( name = "STM32-IDE",
           description = 'STM32-GCC-ARM-Embedded Integrated Development Environment',
           version = '0.2',
           author = 'PhilRobotics',
           options = {'build_exe': {
                                    'include_files' : files,
                                    'includes' : includes,
                                    'excludes' : excludes,
                                    'packages' : packages,
                                    'path' : paths,
                                    'create_shared_zip' : False,
                                    'append_script_to_exe' : script_exe,
                                    'include_in_shared_zip' : False,
                                    } },
           executables = [EXE]  )

