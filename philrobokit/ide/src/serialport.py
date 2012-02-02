
'''

@filename: serialport.py

'''

import serial, os, glob
from PyQt4 import QtGui, QtCore

MAX_PORT_NUM = 50

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