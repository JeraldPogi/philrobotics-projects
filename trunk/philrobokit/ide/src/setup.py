
import os, glob
from cx_Freeze import setup, Executable
from configs import get_svn_revision

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

# library files
files += glob.glob('libraries/*')

# example projects
files += glob.glob('examples/*')

# pickit2 command line files
files += glob.glob('tools/pickit2/*')

# tinybld files
files += glob.glob('hardware/bootloaders/tinybld/*')

# version file
vfile = open('configs/versions.txt', 'w') # overwrite
svn_rev = get_svn_revision()
if svn_rev:
    vfile.write('IDE build ' + svn_rev + '\n')
vfile.write('firmware lib ' + "1.xx" + '\n') # todo: firmware library version
vfile.close()

files.append('configs/versions.txt')

######## Platform dependent settings ##################################
if os.sys.platform == 'win32':
    # add win32 for pyserial
    packages.append('serial.win32')
    # add tool chain files
    for dirname, dirnames, filenames in os.walk('tools/picc_win32'):
        for filename in filenames:
            fn = str( os.path.join(dirname, filename) )
            if fn.find('.svn') < 0 : # exclude svn files
                    files.append( fn )
    
    EXE = Executable(
        script = 'main.pyw',
        base = 'Win32GUI',
        targetName = 'PhilRoboKitIDE.exe',
        icon = 'images/app.ico',
        )
elif os.sys.platform == 'linux2':
    # add tool chain files
    for dirname, dirnames, filenames in os.walk('tools/picc_linux'):
        for filename in filenames:
            fn = str( os.path.join(dirname, filename) )
            if fn.find('.svn') < 0 : # exclude svn files
                    files.append( fn )
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

