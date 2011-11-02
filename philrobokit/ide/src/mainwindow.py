
'''

@filename: mainwindow.py

'''

from PyQt4 import QtGui
from editor import MultipleCppEditor

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
        self.setMinimumSize(300, 400)
        self.resize(580, 600)
                
        self.Editor = MultipleCppEditor(self)
        
        self.setCentralWidget(self.Editor)
        
        self.createActions()
        self.createMenus()
        
    def createActions(self):
        self.newAct = QtGui.QAction( "&New",
                self, shortcut=QtGui.QKeySequence("Ctrl+N"),
                statusTip="Create a new file", triggered=self.Editor.newFile)
        
    def createMenus(self):
        self.fileMenu = self.menuBar().addMenu("&File")
        self.fileMenu.addAction(self.newAct)
        