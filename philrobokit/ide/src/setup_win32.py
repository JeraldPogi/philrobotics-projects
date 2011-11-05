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

tools = ['picc']
for tool in tools:
    fn = 'tools/picc_win32/bin/' + tool + '.exe'
    files.append(fn)
# todo: add all needed files automatically
files.append('tools/picc_win32/dat/en_msgs.txt')


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


