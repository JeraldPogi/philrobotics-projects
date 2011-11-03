from cx_Freeze import setup, Executable

includes = ['sip', 'PyQt4.QtCore']
excludes = ['unicodedata', 'bz2' ]
packages = []
path = []
files = []

icons = ['new', 'open', 'save']
for icon in icons:
    fn = 'images/' + icon + '.png'
    files.append(fn)

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


