import os
from cx_Freeze import setup, Executable

includes = ['sip', 'PyQt4.QtCore']
excludes = ['unicodedata', 'bz2' ]
packages = []
path = []
files = []

icons = ['new', 'open', 'save', 'run', 'stop']
for icon in icons:
    fn = 'images/' + icon + '.png'
    files.append(fn)

# add tool chain files
for dirname, dirnames, filenames in os.walk('tools/picc_win32'):
    for filename in filenames:
        fn = str( os.path.join(dirname, filename) )
        if fn.find('.svn') < 0 : # exclude svn files
                files.append( fn )

#add library files
for dirname, dirnames, filenames in os.walk('libraries'):
    for filename in filenames:
        fn = str( os.path.join(dirname, filename) )
        if fn.find('.svn') < 0 : # exclude svn files
            # *.c , *.h & *.mcp only
            if fn.find('.c') == len(fn) - 2 or \
                fn.find('.h') == len(fn) - 2 or \
                fn.find('.mcp') == len(fn) - 4:
                files.append( fn )

exe = Executable(
    script = 'main.pyw',
    base = 'Win32GUI',
    targetName = 'PhilRoboKitIDE.exe',
    icon = None,
    )
 
setup(
    name = "PhiRoboKit IDE",
    description = 'PhiRoboKit Integrated development environment',
    version = '0.1',
    author = 'PhilRobotics',
    options = {'build_exe': {
                            'include_files' : files,
                            'includes' : includes,
                            'excludes' : excludes,
                            'packages' : packages,
                            'path' : path,
                            'create_shared_zip' : False,
                            'append_script_to_exe' : True,
                            'include_in_shared_zip' : False,
                        }
              },
    executables = [exe]
    )


