
'''

    @filename: serialport.py
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

import serial, os, glob
from PyQt4 import QtGui, QtCore

MAX_PORT_NUM = 50
BAUDRATES = [110, 300, 1200, 2400, 4800, 9600, 19200, 38400, 57600, 115200, 230400, 460800, 921600]
DEFAULT_BAUD_IDX = 5 # 9600
RXD_UPDATE_PERIOD = 100  #milliseconds

def scan_serialports():
    ports = []
    if os.name == "nt":
        for i in range(MAX_PORT_NUM):
            try:
                ser = serial.Serial(i)
                ports.append(ser.name)
                ser.close()
            except serial.SerialException:
                pass
    elif os.name == 'posix':
        devices = glob.glob('/dev/ttyS*') + glob.glob('/dev/ttyUSB*') + glob.glob('/dev/tty.PL*')
        for device in devices:
            try:
                ser = serial.Serial(device)
                ports.append(ser.portstr)
                ser.close()
            except serial.SerialException:
                pass
    return ports

class SerialPortMonitor(QtGui.QDialog):
    ''' Serial Port Monitor Dialog
    '''
    def __init__(self, parent=None):
        super(SerialPortMonitor, self).__init__(parent)
        self.resize(400,360)
        self.setWindowTitle('Serial Port Monitor')
        
        self.serialPort = None
        self.timerId = None
        
        self.userInput = QtGui.QLineEdit()
        self.sendButton = QtGui.QPushButton('Send')
        self.sendButton.setAutoDefault(True)
        self.clearButton = QtGui.QPushButton('Clear')
        self.monitorWindow = QtGui.QTextEdit()
        self.monitorWindow.setReadOnly(True)
        self.monitorWindow.setFontPointSize(10.0)
        # end-of-line options
        self.addCR = QtGui.QCheckBox('+CR')
        self.addCR.setCheckState(QtCore.Qt.Checked)
        self.addLF = QtGui.QCheckBox('+LF')
        self.addLF.setCheckState(QtCore.Qt.Checked)
        # defined baudrates
        self.baudList = QtGui.QComboBox()
        for baud in BAUDRATES:
            self.baudList.addItem(str(baud))
        self.baudList.setCurrentIndex(DEFAULT_BAUD_IDX)

        # character mode (ascii or hex)
        self.charModeGroup = QtGui.QButtonGroup(self)
        self.asciiModeButton = QtGui.QRadioButton("ASCII", self)
        self.hexModeButton = QtGui.QRadioButton("HEX", self)
        self.charModeGroup.addButton(self.asciiModeButton, 0)
        self.charModeGroup.addButton(self.hexModeButton, 1)
        self.asciiModeButton.setChecked(True) # default to ascii display
        
        # signals
        self.baudList.currentIndexChanged.connect(self.baudrateChange)
        self.sendButton.clicked.connect(self.sendString)
        self.clearButton.clicked.connect(self.monitorWindow.clear)
        
        layout = QtGui.QGridLayout()
        # 20x10 grid addWidget( widget, row, column, row_span, column_span ) 
        layout.addWidget(self.userInput, 0, 0, 1, 18)
        layout.addWidget(self.sendButton, 0, 18, 1, 2)
        layout.addWidget(self.monitorWindow, 1, 0, 8, 20)
        
        layout.addWidget(self.clearButton, 9, 0, 2, 1)
        #layout.addItem(QtGui.QSpacerItem(30,10), 9, 3, 1, 1)

        layout.addWidget(QtGui.QLabel('Mode:'), 9, 4, 2, 2)
        layout.addWidget(self.asciiModeButton, 9, 6, 1, 1)
        layout.addWidget(self.hexModeButton, 10, 6, 1, 1)
        #layout.addItem(QtGui.QSpacerItem(30,10), 9, 11, 1, 1)

        layout.addWidget(QtGui.QLabel('EOL:'), 9, 12, 2, 1)
        layout.addWidget(self.addCR, 9, 13, 1, 1)
        layout.addWidget(self.addLF, 10, 13, 1, 1)
        #layout.addItem(QtGui.QSpacerItem(30,10), 9, 15, 1, 1)

        layout.addWidget(QtGui.QLabel('Baudrate:'), 9, 16, 2, 1)
        layout.addWidget(self.baudList, 9, 17, 2, 3)

        self.setLayout(layout)
        
    def openPort(self, portname=None):
        if portname:
            self.closePort() # close first previous port
            try:
                baud = int(self.baudList.currentText())
                self.serialPort = serial.Serial(portname, baud) # default to 8-N-1 config
                self.timerId = self.startTimer(RXD_UPDATE_PERIOD)
                if not self.timerId: # unable to start timer
                    self.closePort()
                    return False
                self.serialPort.flushInput()
                self.serialPort.flushOutput()
                self.setWindowTitle('Serial Port Monitor - ' + portname)        
                return True
            except:
                self.serialPort = None # error in opening
        return False
            
    def closePort(self):
        if self.serialPort:
            try:
                self.serialPort.close()
            except:
                pass # maybe already closed
        if self.timerId:
            self.killTimer(self.timerId)
        self.serialPort, self.timerId = None, None
        
    def isPortOpen(self):
        if self.serialPort:
            return True
        return False
        
    def baudrateChange(self, index=0):
        if self.serialPort:
            newbaud = int(self.baudList.currentText())
            self.serialPort.baudrate = newbaud
        
    def sendString(self):
        if self.serialPort:
            string = str( self.userInput.text() )
            if self.hexModeButton.isChecked():
                try:
                    string = string.decode('hex')
                except: # error in conversion (e.g. odd-length)
                    QtGui.QMessageBox.warning(self, 'serial monitor', 'unable to decode hex string input!')
                    return
            if self.addCR.isChecked():
                string += '\r'
            if self.addLF.isChecked():
                string += '\n'
            self.serialPort.write(string)
        
    def timerEvent(self, *args, **kwargs):
        if self.serialPort:
            bytestoread = self.serialPort.inWaiting()
            if bytestoread:
                prev = self.monitorWindow.toPlainText()
                rcv = self.serialPort.read(bytestoread)
                if self.hexModeButton.isChecked():
                    self.monitorWindow.setText( prev + rcv.encode('hex') )
                else:
                    self.monitorWindow.setText( prev + rcv )
                self.monitorWindow.moveCursor(QtGui.QTextCursor.End) # auto scroll       
        return QtGui.QDialog.timerEvent(self, *args, **kwargs)
        
    def showEvent(self, *args, **kwargs):
        self.monitorWindow.clear() # clear monitor window on dialog open
        return QtGui.QDialog.showEvent(self, *args, **kwargs)
    
    def closeEvent(self, *args, **kwargs):
        self.closePort() # close serial port on dialog hide
        return QtGui.QDialog.closeEvent(self, *args, **kwargs)
        