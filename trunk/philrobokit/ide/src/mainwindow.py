
'''

@filename: mainwindow.py

'''

from PyQt4 import QtGui, QtCore
from editor import MultipleCppEditor
from firmware import scanFirmwareLibs 
from compiler import PicCompilerThread
from configs import Configurations
from serialport import scan_serialports, SerialPortMonitor
from pickit2 import PICkit2ProgrammerThread
from about import AboutDialog
#import time

class AppMainWindow(QtGui.QMainWindow):
    '''
    classdocs
    '''

    def __init__(self):
        '''
        Constructor
        '''
        super(AppMainWindow, self).__init__()
        
        self.aboutDlg = AboutDialog(self)
        self.aboutDlg.show()
        
        self.setWindowTitle("PhilRobokit IDE")
        self.setWindowIcon(QtGui.QIcon('images/app.png'))
        self.setMinimumSize(300, 400)
        
        self.Configs = Configurations(self)
                
        self.Editor = MultipleCppEditor(self)        
        self.setCentralWidget(self.Editor)
        
        self.Compiler = PicCompilerThread(self)
        self.pollCompilerTimerID = None
        
        self.serialPortName = None
        self.SerialPortMonitorDialog = SerialPortMonitor(self)
        
        self.PK2Programmer = PICkit2ProgrammerThread(self)
        self.pollPK2TimerID = None
        
        self.createActions()
        self.createMenus()
        self.createToolBars()
        self.createStatusBar()
        self.createLogWindow()
        
        #time.sleep(2) # todo: pyqt equivalent?
        self.aboutDlg.finish(self)
        
    def about(self):
        self.aboutDlg.show()
        # todo: other informations
        self.aboutDlg.showMessage("PhilRobokit IDE . [ beta version ]",
                           QtCore.Qt.AlignLeft | QtCore.Qt.AlignBottom, QtGui.QColor("#eecc77"));
    def openPhilRoboticsSite(self):
        # todo: change to .ORG
        QtGui.QDesktopServices.openUrl( QtCore.QUrl("http://www.philrobotics.com/") )
    def aboutCompiler(self):
        info = self.Compiler.getCompilerInfo()
        #self.log.append(info)
        if info:
            QtGui.QMessageBox.about( self, "Compiler Information", info )
        else:
            QtGui.QMessageBox.about( self, "Compiler Information", "no compiler found!" )
    
    def startBuild(self):
        if self.Compiler.isRunning():
            self.insertLog('compiler busy..')
            return
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
            self.pollCompilerTimerID = self.startTimer(50)
            if not self.pollCompilerTimerID:
                self.insertLog("<font color=red>Unable to start Timer.</font>")

    def stopBuild(self):
        if self.pollCompilerTimerID:
            self.killTimer(self.pollCompilerTimerID)
            self.pollCompilerTimerID = None
            self.Compiler.pollBuildProcess(True)
            self.insertLog("<font color=red>----- Stopped. -----</font>")
        else:
            print "nothing to stop"
            
    def programChip(self):
        print "todo: check if user code is already compiled."
        self.insertLog("<font size=2 color=blue>[beta] todo: program using serial bootloader.</font>" );
        
    def pickit2ProgramChip(self):
        #info = self.PK2Programmer.getPICkit2Info()
        #if info:
        #    self.insertLog("<font color=green>PICkit2 version information:</font>")
        #    self.insertLog(info)
        #return
        if self.PK2Programmer.isRunning():
            self.insertLog('pickit2 busy..')
            return
        info = self.PK2Programmer.programDevice('pic16f877a', self.Editor.getCurrentFile() )
        if info[0]:
            self.insertLog("<font color=green>PICkit2 Program Device:</font>", True)
            self.insertLog(info[1])
            self.pollPK2TimerID = self.startTimer(50)
            if not self.pollPK2TimerID:
                self.insertLog("<font color=red>Unable to start Timer.</font>")
        else:
            self.insertLog("<font color=red>%s</font>"%info[1])
        
    def selectSerialPort(self):
        act = self.serialPortGroup.checkedAction()
        if act:
            # todo: remember previously selected port
            portname = str( act.text() )
            if portname != self.serialPortName:
                self.serialPortName = portname
                self.insertLog( 'selected port: ' + self.serialPortName )
                if self.SerialPortMonitorDialog.isPortOpen():
                    if not self.SerialPortMonitorDialog.openPort(self.serialPortName):
                        self.SerialPortMonitorDialog.close()
                        self.insertLog( "<font color=red>unable to open %s</font>"%self.serialPortName)                                        
            
    def importFirmwareLib(self, action=None):
        if action:
            libname = str( action.text() )
            self.Editor.importFirmwareLib(libname)
    
    def openSerialPortMonitorDialog(self):
        if self.serialPortName == None:
            self.insertLog( "<font color=red>no serial port selected!</font>" )
            return
        if self.SerialPortMonitorDialog.openPort(self.serialPortName):
            self.SerialPortMonitorDialog.show() # non-modal open
        else:
            self.insertLog( "<font color=red>unable to open serial port!</font>" )
        
    def createActions(self):
        # file menu
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
        
        # edit menu
        self.findAct = QtGui.QAction("&Find", self,
                shortcut=QtGui.QKeySequence("Ctrl+F"),
                statusTip="Find text", triggered=self.Editor.findChildText)
        
        # project menu
        self.compileAct = QtGui.QAction(QtGui.QIcon("./images/build.png"), "&Compile",
                self, shortcut=QtGui.QKeySequence("Ctrl+B"),
                statusTip="Build the current project", triggered=self.startBuild)
        self.stopAct = QtGui.QAction(QtGui.QIcon("./images/stop.png"), "S&top",
                self, statusTip="Cancel the build process", triggered=self.stopBuild)
        self.programAct = QtGui.QAction(QtGui.QIcon("./images/load.png"), "&Bootloader",
                self, statusTip="Download program to the board", triggered=self.programChip)
        self.pickit2ProgramAct = QtGui.QAction(QtGui.QIcon("./images/pickit2.png"), "PIC&kit2",
                self, statusTip="Download program to the board using PICkit2 programmer",
                triggered=self.pickit2ProgramChip)
        
        self.firmwareLibList = scanFirmwareLibs()
        self.firmwareLibActs = []
        if len(self.firmwareLibList):
            for i in range(len(self.firmwareLibList)):
                self.firmwareLibActs.append(
                        QtGui.QAction(self.firmwareLibList[i],  self,
                            statusTip="include " + self.firmwareLibList[i] + " library" ) ) 
        
        # todo: serial monitor/terminal window
        self.serialMonitorAct = QtGui.QAction("Serial &Monitor",  self,
                #shortcut=QtGui.QKeySequence("Ctrl+Shift+M"),
                statusTip="Launch Serial Monitor Dialog", triggered=self.openSerialPortMonitorDialog)
        self.serialPortGroup = QtGui.QActionGroup(self)
        self.serialPortList = scan_serialports()
        self.serialPortActs = []
        if len(self.serialPortList):
            for i in range(len(self.serialPortList)):
                self.serialPortActs.append(
                        QtGui.QAction(self.serialPortList[i],  self, checkable=True,
                            statusTip="select " + self.serialPortList[i] + " serial port",
                            triggered=self.selectSerialPort) )
                self.serialPortGroup.addAction( self.serialPortActs[i] )
        
        # todo: board names??
        self.boardAnitoAct = QtGui.QAction("PhilRobokit &Anito",  self,
                checkable=True, statusTip="Select PhilRobokit Anito board" )
        self.boardEpicpicmoAct = QtGui.QAction("eGizmo &ePicPicMo",  self,
                checkable=True, statusTip="Select eGizmo ePicPicMo board" ) # todo: pic18 support
        self.boardGroup = QtGui.QActionGroup(self)
        self.boardGroup.addAction(self.boardAnitoAct)
        self.boardGroup.addAction(self.boardEpicpicmoAct)
        self.boardAnitoAct.setChecked(True)
        
        # help menu
        self.aboutAct = QtGui.QAction("&About", self, shortcut=QtGui.QKeySequence("F1"),
                statusTip="About the IDE", triggered=self.about)        
        self.aboutCompilerAct = QtGui.QAction("About &Compiler", self,
                statusTip="About PICC tool", triggered=self.aboutCompiler)
        self.aboutQtAct = QtGui.QAction("About &Qt", self,
                statusTip="Show the Qt library's About box", triggered=QtGui.qApp.aboutQt)
        self.visitSiteAct = QtGui.QAction("Visit &PhilRobotics", self,
                statusTip="Open PhilRobotics Website", triggered=self.openPhilRoboticsSite)
        
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
        self.projectMenu.addAction(self.compileAct)
        self.projectMenu.addAction(self.stopAct)
        self.programMenu = self.projectMenu.addMenu("Program Board...")
        self.programMenu.addAction(self.programAct)
        self.programMenu.addAction(self.pickit2ProgramAct)
        self.projectMenu.addSeparator()
        self.firmwareLibMenu = self.projectMenu.addMenu("Import &Library...")
        if len(self.firmwareLibActs):
            for i in range(len(self.firmwareLibActs)):
                self.firmwareLibMenu.addAction(self.firmwareLibActs[i])
        self.connect(self.firmwareLibMenu,
                     QtCore.SIGNAL("triggered (QAction *)"), self.importFirmwareLib)
        
        self.toolsMenu = self.menuBar().addMenu("&Tools")
        self.toolsMenu.addAction(self.serialMonitorAct)
        self.toolsMenu.addSeparator()
        self.boardMenu = self.toolsMenu.addMenu("&Board")
        self.boardMenu.addAction(self.boardAnitoAct)
        self.boardMenu.addAction(self.boardEpicpicmoAct)
        self.serialPortMenu = self.toolsMenu.addMenu("&Serial Port")
        if len(self.serialPortActs):
            for i in range(len(self.serialPortActs)):
                self.serialPortMenu.addAction(self.serialPortActs[i])
        #self.bootloaderMenu = self.toolsMenu.addMenu("&Booloader")
        
        self.helpMenu = self.menuBar().addMenu("&Help")
        self.helpMenu.addAction(self.visitSiteAct)
        self.helpMenu.addAction(self.aboutCompilerAct)
        self.helpMenu.addAction(self.aboutQtAct)
        self.helpMenu.addAction(self.aboutAct)
    
    def createToolBars(self):
        self.fileToolBar = self.addToolBar("File")
        self.fileToolBar.addAction(self.newAct)
        self.fileToolBar.addAction(self.openAct)
        self.fileToolBar.addAction(self.saveAct)
        
        self.projectToolBar = self.addToolBar("Project")
        self.projectToolBar.addAction(self.compileAct)
        self.projectToolBar.addAction(self.stopAct)
        self.projectToolBar.addAction(self.programAct)
        self.projectToolBar.addAction(self.pickit2ProgramAct)
        
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
        if timerID == self.pollCompilerTimerID:
            result = self.Compiler.pollBuildProcess()
            if result[0]:
                if len( result[1] ):
                    self.insertLog( result[1] )
            else:
                self.killTimer(timerID)
                self.pollCompilerTimerID = None
        if timerID == self.pollPK2TimerID:
            result = self.PK2Programmer.pollPK2Process()
            if result[0]:
                msg = result[1]
                if len(msg):
                    self.insertLog( "<font color=lightgreen>%s</font>" % msg )
            else:
                self.killTimer(timerID)
                self.pollPK2TimerID = None

        return QtGui.QMainWindow.timerEvent(self, *args, **kwargs)
        
   
    def closeEvent(self, *args, **kwargs):
        self.Configs.saveIdeSettings()
        return QtGui.QMainWindow.closeEvent(self, *args, **kwargs)
    
    
    