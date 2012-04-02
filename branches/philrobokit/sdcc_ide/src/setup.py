
import os, glob
from cx_Freeze import setup, Executable

includes = ['sip', 'PyQt4.QtCore']
excludes = ['unicodedata', 'bz2' ]
packages = []
paths = []
files = []
EXE = None

######## Files to include in the distribution ########################

# *.png images
files += glob.glob('images/*.png')

# core firmware files
files += glob.glob('hardware/cores/*')
files += glob.glob('hardware/cores/lib/*')

# library files
'''
for dirname, dirnames, filenames in os.walk('libraries'):
    for filename in filenames:
        fn = str( os.path.join(dirname, filename) )
        if fn.find('.svn') < 0 : # exclude svn files
            # *.c , *.h, *.mcp & *.txt only
            if fn.find('.c') == len(fn) - 2 or \
                fn.find('.h') == len(fn) - 2 or \
                fn.find('.mcp') == len(fn) - 4 or \
                fn.find('.txt') == len(fn) - 4 :
                files.append( fn )
'''

# pickit2 command line files
files += glob.glob('tools/pickit2/*')

######## Platform dependent settings ##################################
if os.sys.platform == 'win32':
    # add win32 for pyserial
    packages.append('serial.win32')
    # add tool chain files
    '''
    for dirname, dirnames, filenames in os.walk('tools/picc_win32'):
        for filename in filenames:
            fn = str( os.path.join(dirname, filename) )
            if fn.find('.svn') < 0 : # exclude svn files
                    files.append( fn )
    '''
    EXE = Executable(
        script = 'main.pyw',
        base = 'Win32GUI',
        targetName = 'PhilRoboKitIDE.exe',
        icon = 'images/app.ico',
        )
elif os.sys.platform == 'linux2':
    # add tool chain files
    '''
    for dirname, dirnames, filenames in os.walk('tools/picc_linux'):
        for filename in filenames:
            fn = str( os.path.join(dirname, filename) )
            if fn.find('.svn') < 0 : # exclude svn files
                    files.append( fn )
    '''
    EXE = Executable(
        script = 'main.pyw',
        targetName = 'PhilRoboKitIDE',
        base = None,
        icon = None,
        )
else:
    print 'platform not (yet) supported!'

##################### cx_freeze ##################################
if EXE:
    setup( name = "PhiRoboKit IDE",
           description = 'PhiRoboKit Integrated Development Environment',
           version = '00.04',
           author = 'PhilRobotics',
           options = {'build_exe': {
                                    'include_files' : files,
                                    'includes' : includes,
                                    'excludes' : excludes,
                                    'packages' : packages,
                                    'path' : paths,
                                    'create_shared_zip' : False,
                                    'append_script_to_exe' : True,
                                    'include_in_shared_zip' : False,
                                    } },
           executables = [EXE]  )

