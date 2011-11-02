'''

@filename: mainwindow.py

'''

from PyQt4 import QtGui

class AppMainWindow(QtGui.QMainWindow):
    '''
    classdocs
    '''

    def __init__(self):
        '''
        Constructor
        '''
        super(AppMainWindow, self).__init__()
        self.setWindowTitle("PhilRobokit IDE")
        self.setMinimumSize(580, 600)
        