@ECHO OFF

C:\Python27\python setup_win32.py build
copy C:\Python27\Lib\atexit.py build\exe.win32-2.7\atexit.py

ECHO.
ECHO Done creating Win32 executable.
ECHO -- PhilRobotics --
ECHO.
PAUSE
