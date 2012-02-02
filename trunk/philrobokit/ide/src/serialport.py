
'''

@filename: serialport.py

'''

import serial, os, glob
from PyQt4 import QtGui, QtCore

MAX_PORT_NUM = 50
BAUDRATES = [110, 300, 1200, 2400, 4800, 9600, 19200, 38400, 57600, 115200, 230400, 460800, 921600]
DEFAULT_BAUD_IDX = 5 # 9600

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
        ports = glob.glob('/dev/ttyS*') + glob.glob('/dev/ttyUSB*')
    return ports

class SerialPortMonitor(QtGui.QDialog):
    ''' Serial Port Monitor Dialog
    '''
    def __init__(self, parent=None, port=None, baudrate=9600):
        super(SerialPortMonitor, self).__init__(parent)
        self.resize(400,360)
        self.setWindowTitle('Serial Port Monitor')
        
        self.userInput = QtGui.QLineEdit()
        self.sendButton = QtGui.QPushButton('Send')
        self.monitorWindow = QtGui.QTextEdit()
        self.monitorWindow.setReadOnly(True)
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
        
        layout = QtGui.QGridLayout()
        # grid addWidget( widget, row, column, row_span, column_span )
        layout.addWidget(self.userInput, 0, 0, 1, 8)
        layout.addWidget(self.sendButton, 0, 8, 1, 2)
        layout.addWidget(self.monitorWindow, 1, 0, 8, 10)
        #layout.addWidget(QtGui.QLabel('Options'), 9, 0, 1, 2)
        layout.addWidget(QtGui.QLabel('EOL:'), 9, 2, 1, 1)
        layout.addWidget(self.addCR, 9, 3, 1, 1)
        layout.addWidget(self.addLF, 9, 4, 1, 1)
        layout.addWidget(QtGui.QLabel('Baudrate:'), 9, 6, 1, 1)
        layout.addWidget(self.baudList, 9, 7, 1, 3)
        self.setLayout(layout)
        
        