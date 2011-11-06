
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
        
        self.Compiler = PicCompiler(self)
        self.PollCompilerTimerID = None
        
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
    
    def startBuild(self):
        self.insertLog("<font color=green>------- Start Project Build. -------</font>", True)
        fn = self.Editor.getCurrentFile()
        rc = self.Compiler.buildProject(userCode = fn)
        if not rc[0]:
            self.insertLog( "<font color=red>%s</font>"%rc[1] )
            if rc[1] == "file not found":
                QtGui.QMessageBox.warning( self, "Build Error", "File not found (may be unsaved yet). " + \
                                             "Create or save first the file." )
            elif rc[1] == "busy":
                QtGui.QMessageBox.warning( self, "Busy", "Previous build process still running!" )
            elif rc[1] == "abort":
                QtGui.QMessageBox.warning( self, "Error", "Unable to start build process!" )
        else:
            self.insertLog( "<font color=lightblue><i>   %s   </i></font>"%rc[1] )
            self.PollCompilerTimerID = self.startTimer(50)
            if not self.PollCompilerTimerID:
                self.insertLog("<font color=red>Unable to start Timer.</font>")

    def stopBuild(self):
        if self.PollCompilerTimerID:
            self.killTimer(self.PollCompilerTimerID)
            self.PollCompilerTimerID = None
            self.Compiler.pollBuildProcess(True)
            self.insertLog("<font color=red>----- Stopped. -----</font>")
        else:
            print "nothing to stop"
        
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
        
        self.exitAct = QtGui.QAction("E&xit", self,
                shortcut=QtGui.QKeySequence("Alt+F4"),
                statusTip="Exit the application", triggered=QtGui.qApp.closeAllWindows)
        
        self.findAct = QtGui.QAction("&Find", self,
                shortcut=QtGui.QKeySequence("Ctrl+F"),
                statusTip="Find text", triggered=self.Editor.findChildText)
        
        self.runAct = QtGui.QAction(QtGui.QIcon("./images/run.png"), "&Compile",
                self, shortcut=QtGui.QKeySequence("Ctrl+B"),
                statusTip="Build the current project", triggered=self.startBuild)
        self.stopAct = QtGui.QAction(QtGui.QIcon("./images/stop.png"), "S&top",
                self, statusTip="Cancel the build process", triggered=self.stopBuild)
        
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
        self.fileMenu.addSeparator()
        self.fileMenu.addAction(self.exitAct)
        
        self.editMenu = self.menuBar().addMenu("&Edit")
        self.editMenu.addAction(self.findAct)
        
        self.projectMenu = self.menuBar().addMenu("&Project")
        self.projectMenu.addAction(self.runAct)
        self.projectMenu.addAction(self.stopAct)
        
        self.ToolsMenu = self.menuBar().addMenu("&Tools")
        
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
    
    def insertLog(self, log='', resetWindow=False):
        if resetWindow:
            self.log.setText('')
        self.log.append(log)
        
    def timerEvent(self, *args, **kwargs):
        timerID = args[0].timerId()
        if timerID == self.PollCompilerTimerID:
            result = self.Compiler.pollBuildProcess()
            if result[0]:
                msg = result[1]
                msg_lowered = msg.lower()
                if msg_lowered.find("warning") >= 0:
                    print msg.lower()
                    warning_msg = "<font color=yellow>%s</font>" % msg
                    self.insertLog(warning_msg)
                # todo: other error messages
                elif msg_lowered.find("error") >= 0 \
                        or msg_lowered.find("exit status = 1") >= 0 \
                        or msg_lowered.find("^ (") >= 0 \
                        or msg_lowered.find("defined") >= 0:                    
                    error_msg = "<font color=red>%s</font>" % msg
                    self.insertLog(error_msg)
                else:
                    self.insertLog( "<font color=lightgreen>%s</font>" % msg )
            else:
                self.killTimer(timerID)
                self.PollCompilerTimerID = None
        
        