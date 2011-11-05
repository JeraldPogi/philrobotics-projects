
'''

@filename: mainwindow.py

'''

from PyQt4 import QtGui, QtCore
from editor import MultipleCppEditor
from compiler import PicCompiler

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
        
        self.Compiler = PicCompiler()
        
        self.createActions()
        self.createMenus()
        self.createToolBars()
        self.createStatusBar()
        self.createLogWindow()
        
    def about(self):
        QtGui.QMessageBox.about(self, "About",
                "<b>PhilRobotics</b>' Integrated Development Environment for PhilRoboKit Boards")
        
    def aboutCompiler(self):
        info = self.Compiler.getInfo()
        #self.log.append(info)
        if info:
            QtGui.QMessageBox.about( self, "Compiler Information", info )
        else:
            QtGui.QMessageBox.about( self, "Compiler Information", "no compiler found!" )
        
    def createActions(self):
        self.newAct = QtGui.QAction( QtGui.QIcon("./images/new.png"), "&New",
                self, shortcut=QtGui.QKeySequence("Ctrl+N"),
                statusTip="Create a new file", triggered=self.Editor.newFile)
        self.openAct = QtGui.QAction(QtGui.QIcon("./images/open.png"), "&Open",
                self, shortcut=QtGui.QKeySequence("Ctrl+O"),
                statusTip="Open an existing file", triggered=self.Editor.openFile)
        self.closeAct = QtGui.QAction("&Close",
                self, shortcut=QtGui.QKeySequence("Ctrl+W"),
                statusTip="Close the current window", triggered=self.Editor.closeFile)
        self.saveAct = QtGui.QAction(QtGui.QIcon("./images/save.png"), "&Save",
                self, shortcut=QtGui.QKeySequence("Ctrl+S"),
                statusTip="Save the current file", triggered=self.Editor.saveFile)
        
        self.runAct = QtGui.QAction(QtGui.QIcon("./images/run.png"), "&Compile",
                self, shortcut=QtGui.QKeySequence("Ctrl+R"),
                statusTip="Build the current project", triggered=self.Editor.startBuild)
        self.stopAct = QtGui.QAction(QtGui.QIcon("./images/stop.png"), "S&top",
                self, statusTip="Cancel the build process", triggered=self.Editor.stopBuild)
        
        self.aboutAct = QtGui.QAction("&About", self, shortcut=QtGui.QKeySequence("F1"),
                statusTip="About the IDE", triggered=self.about)
        
        self.aboutCompilerAct = QtGui.QAction("About &Compiler", self, shortcut=QtGui.QKeySequence("Alt+F1"),
                statusTip="About PICC tool", triggered=self.aboutCompiler)
        
    def createMenus(self):
        self.fileMenu = self.menuBar().addMenu("&File")
        self.fileMenu.addAction(self.newAct)
        self.fileMenu.addAction(self.openAct)
        self.fileMenu.addAction(self.saveAct)
        self.fileMenu.addAction(self.closeAct)
        
        self.projectMenu = self.menuBar().addMenu("&Project")
        self.projectMenu.addAction(self.runAct)
        self.projectMenu.addAction(self.stopAct)
        
        self.helpMenu = self.menuBar().addMenu("&Help")
        self.helpMenu.addAction(self.aboutCompilerAct)
        self.helpMenu.addAction(self.aboutAct)
    
    def createToolBars(self):
        self.fileToolBar = self.addToolBar("File")
        self.fileToolBar.addAction(self.newAct)
        self.fileToolBar.addAction(self.openAct)
        self.fileToolBar.addAction(self.saveAct)
        
        self.projectToolBar = self.addToolBar("Project")
        self.projectToolBar.addAction(self.runAct)
        self.projectToolBar.addAction(self.stopAct)
        
    def createStatusBar(self):
        self.statusBar().showMessage("Ready")
        
    def createLogWindow(self):
        self.log = QtGui.QTextEdit(self)
        self.log.setReadOnly(True)
        self.log.resize(self.width(), 100 )
        self.log.setText("Ready")
        palette = QtGui.QPalette(QtGui.QColor(0, 0, 0))
        self.log.setPalette(palette)
        logWindow = QtGui.QDockWidget(self)
        logWindow.setWidget(self.log)
        self.addDockWidget(QtCore.Qt.BottomDockWidgetArea, logWindow)
        