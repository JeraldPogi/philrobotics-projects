from cx_Freeze import setup, Executable

includes = ['sip', 'PyQt4.QtCore', 'atexit']
files = []

icons = ['new', 'open', 'save', 'run', 'stop']
for icon in icons:
    fn = './images/' + icon + '.png'
    files.append(fn)

exe = Executable(
    script = 'main.pyw',
    targetName = 'PhilRoboKitIDE',
    base = None,
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
                            'create_shared_zip' : False,
                            'append_script_to_exe' : True,
                            'include_in_shared_zip' : False,
                        }
              },
    executables = [exe]
    )

