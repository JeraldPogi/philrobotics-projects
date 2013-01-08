
'''

    @filename: pickit2.py
    @project : PhilRoboKit IDE

    PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
    http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
    phirobotics.core@philrobotics.com

    Copyright (C) 2013  Julius Constante

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

import os, subprocess
from PyQt4 import QtCore

#pickit2 command line executables
PK2CMD_DIR = 'tools/pickit2/'
PK2CMD_WIN32 = PK2CMD_DIR + 'pk2cmd_win32'
PK2CMD_LINUX = PK2CMD_DIR + 'pk2cmd_linux'
PK2CMD_OSX   = PK2CMD_DIR + 'pk2cmd_osx'


class PICkit2ProgrammerThread(QtCore.QThread):
    '''
    classdocs
    '''
    def __init__(self, parent=None, chip='16F877A'):
        QtCore.QThread.__init__(self, parent)
        self.parent = parent
        self.chip = chip

        # platform dependent settings
        self.isWin32Platform = False
        if os.sys.platform == 'win32':
            self.pickit2 = os.getcwd() + '/' + PK2CMD_WIN32
            self.isWin32Platform = True
        elif os.sys.platform == 'linux2':
            self.pickit2 = os.getcwd() + '/' + PK2CMD_LINUX
        elif os.sys.platform == 'darwin':
            self.pickit2 = os.getcwd() + '/' + PK2CMD_OSX
        else:
            self.pickit2 = None
            
        self.ProgrammerArguments = None            
        self.ProgrammerProcess = None # todo: use QtCore.QProcess class instead
        
        self.LogList = QtCore.QStringList()
            
    def run(self):
        self.LogList.clear()
        if not self.pickit2:
            self.LogList.append('error: no supported pickit2 commands!')
            return
        # print self.ProgrammerArguments
        if self.ProgrammerArguments:
            try:
                commands = []
                for cmd in self.ProgrammerArguments:
                    commands.append(cmd)
                self.ProgrammerProcess = subprocess.Popen(
                             commands,
                             stdin=subprocess.PIPE,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.STDOUT,
                             shell=self.isWin32Platform )
                while True:
                    self.usleep(50000)
                    if not self.ProgrammerProcess:
                        break;
                    # read single lines    
                    buff = self.ProgrammerProcess.stdout.readline()
                    if buff == '': # got nothing
                        if self.ProgrammerProcess.poll() != None: # process exited
                            self.ProgrammerProcess = None
                            print 'pickit2 process finished.'
                            break
                    else:
                        self.LogList.append(buff)
            except:
                print 'got errors in pickit2 thread!'
                self.ProgrammerProcess = None
                
        self.ProgrammerArguments = None
        print 'pickit2 thread done.'
            
    def getPICkit2Info(self):
        if self.isRunning():
            return False, "busy"
        self.ProgrammerArguments = [ str(self.pickit2), str('-B'+PK2CMD_DIR), str('-?V') ]
        self.start()
        while True:
            self.usleep(1000)
            if not self.isRunning():
                break;            
        if not self.LogList.count():
            return None
        else:
            info = ''
            for msg in self.LogList:
                info += msg
            return info
                        

    def programDevice(self, chip='pic16f877a', fileName=None):
        if self.isRunning():
            return False, "busy"
        if not fileName or not self.pickit2:
            return False, "program what?"
        
        if not os.path.isfile(fileName): # file not found
            print 'hexfile not found: ', fileName
            return False, "No *.hex file found! (re)build first the project."
        
        self.ProgrammerArguments = [ self.pickit2,  '-B'+PK2CMD_DIR, '-P'+chip ]
        # todo: not entire device (e.g. retain eeprom)
        self.ProgrammerArguments += [ '-M', '-F'+fileName, '-R' ]
        
        self.start()
        return True, "PICkit2 running. Please wait..."

    def pollPK2Process(self, stopProcess=False):
        if self.isRunning() or self.LogList.count()>0:
            if stopProcess:
                self.LogList.clear()
                try:
                    self.ProgrammerProcess.kill() # needs Admin privilege on Windows!
                    self.ProgrammerProcess = None
                    return True, "killed"
                except:
                    print "n0 u can't kill me! :-p"
                    self.ProgrammerProcess.wait() # just wait for the process to finish
                    self.ProgrammerProcess = None
                    return False, "waited"
            if self.LogList.count():
                return True, str(self.LogList.takeFirst())
            else:
                return True, ''
        else:
            return False, "process not running"
