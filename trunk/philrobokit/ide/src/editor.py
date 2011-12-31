
'''

@filename: editor.py

'''

import os
from PyQt4 import QtGui, QtCore, Qsci
from PyQt4.Qsci import QsciScintilla, QsciLexerCPP

# library path
LIB_DIR = 'libraries'
# PhilRobokit Library
PRK_LIB = LIB_DIR + '/PhilRobokitProjectLibrary'
# file containing keywords
KEYWORD_FILE = 'keywords.txt'
# user source
PROJECT_ALIAS = 'PhilRobokit Proyekto' #'PhilRobokit Project'
PROJECT_EXT = '.phr'
PROJECT_NONAME = 'untitled'

__default_content__ = '''
void init()
{

}

void program()
{

}
'''

class CppEditor(QsciScintilla):
    '''
    classdocs
    '''
    def __init__(self, parent=None, fileName=None):
        '''
        Constructor
        '''
        super(CppEditor, self).__init__(parent)
        self.parent = parent
        
        self.setAcceptDrops(False) # drag&drop is on its parent
        
        # Set the default font
        font = QtGui.QFont()
        font.setFamily('Courier')
        font.setFixedPitch(True)
        font.setPointSize(10)
        self.setFont(font)
        self.setMarginsFont(font)
        
        # C/C++ lexer
        self.lexer = QsciLexerCPP(self,  True)
        self.lexer.setDefaultFont(font)
        self.lexer.setAPIs(self.parent.getLibraryAPIs())
        self.setLexer(self.lexer)
        self.SendScintilla(QsciScintilla.SCI_STYLESETFONT, 1, 'Courier')
        
        # Convert tab to 4 white spaces
        self.setTabWidth(4)
        self.setIndentationsUseTabs(False)
        self.setAutoIndent(True)
        
        # Current line visible with special background color
        self.setCaretLineVisible(True)
        self.setCaretLineBackgroundColor(QtGui.QColor("#ffe4e4"))
        
        # Enable brace matching
        self.setBraceMatching(QsciScintilla.SloppyBraceMatch)
        
        # Enable folding visual- use boxes
        self.setFolding(QsciScintilla.BoxedTreeFoldStyle)
        
        # show line numbers
        fontmetrics = QtGui.QFontMetrics(font)
        self.setMarginsFont(font)
        self.setMarginWidth(0, fontmetrics.width("00000") + 4)
        self.setMarginLineNumbers(0, True)
        self.setMarginsBackgroundColor(QtGui.QColor("#eecc77"))
        
        # not too small
        self.setMinimumSize(480, 320)
        
        # set the length of the string before the editor tries to auto-complete
        self.setAutoCompletionThreshold(2)
        # tell the editor we are using a QsciAPI for the auto-completion
        self.setAutoCompletionSource(QsciScintilla.AcsAPIs)
        
        # "CTRL+Space" autocomplete
        self.shortcut_ctrl_space = QtGui.QShortcut(QtGui.QKeySequence("Ctrl+Space"), self)        
        self.connect(self.shortcut_ctrl_space,
            QtCore.SIGNAL('activated()'), self.autoCompleteFromAll)
        
        self.stringToSearch = ""
        
        self.connect(self, QtCore.SIGNAL('textChanged()'), self.parent.onChildContentChanged )
                
        if fileName:
            self.curFile = fileName
            self.loadFile(fileName)
            self.isUntitled = False
        else:
            self.curFile = PROJECT_NONAME + PROJECT_EXT
            self.setText( __default_content__ )
            self.isUntitled = True
        
    def loadFile(self, fileName):
        qfile = QtCore.QFile(fileName)
        if not qfile.open(QtCore.QFile.ReadOnly | QtCore.QFile.Text):
            QtGui.QMessageBox.warning(self, PROJECT_ALIAS,
                    "Cannot read file %s:\n%s." % (fileName, qfile.errorString()))
            return False
        instr = QtCore.QTextStream(qfile)
        self.setText(instr.readAll())
        return True
    def saveFile(self, fileName):
        qfile = QtCore.QFile(fileName)
        if not qfile.open(QtCore.QFile.WriteOnly | QtCore.QFile.Text):
            QtGui.QMessageBox.warning(self, PROJECT_ALIAS,
                    "Cannot write file %s:\n%s." % (fileName, qfile.errorString()))
            return False

        outstr = QtCore.QTextStream(qfile)
        outstr << self.text()
        
        self.curFile = fileName
        self.isUntitled = False
        return True
    
    def saveAs(self):
        fileName = QtGui.QFileDialog.getSaveFileName(self, "Save As",
                self.curFile, PROJECT_ALIAS + " (*" + PROJECT_EXT + ");;" + 
                    "C source (*.c);;Text File (*.txt);;All files (*.*)" )
        if not fileName:
            return False
        return self.saveFile(fileName)
    def save(self):
        if self.isUntitled:
            return self.saveAs()
        else:
            return self.saveFile(self.curFile)
        
    def currentFile(self):
        return self.curFile

    def findText(self, text=None):
        if text:
            self.stringToSearch = text
        searchDlg = QtGui.QInputDialog(self)
        repeate = True        
        while repeate:            
            searchResult = searchDlg.getText(self, "Find Text",
                                             "type string to search:",
                                             text=self.stringToSearch )
            repeate = searchResult[1]
            if repeate:
                self.stringToSearch = searchResult[0]
                self.findFirst(
                            self.stringToSearch,
                            False, # regular expression
                            False, # case sensitive
                            False, # whole word matches only
                            True,  # wraps around
                            True ) # forward
        

class MultipleCppEditor(QtGui.QTabWidget):
    '''
    classdocs
    '''
    def __init__(self, parent=None):
        '''
        Constructor
        '''
        super(MultipleCppEditor, self).__init__(parent)
        
        self.setAttribute(QtCore.Qt.WA_DeleteOnClose)
        
        self.prepareLibraryAPIs()
        
        self.setAcceptDrops(True)
        
        if self.count()==0:
            self.newFile()
        
    def newFile(self):
        child = CppEditor(self)
        self.addTab(child, PROJECT_NONAME + " * ")
        self.setCurrentIndex(self.count()-1)
    def openFile(self):
        fileName = QtGui.QFileDialog.getOpenFileName(
                                        self, self.tr("Open Source File"),
                                        "", PROJECT_ALIAS + " (*" + PROJECT_EXT + ");;" 
                                        "C Source File (*.c);;Text File (*.txt);;All files (*.*)" )
        if fileName == "":
            return False
        #check if it's already opened
        for i in range(self.count()):
            child = self.widget(i)
            if fileName == child.currentFile(): # file already opened
                self.setCurrentIndex(i)
                return True
        child = CppEditor(self, fileName)
        tabtext = os.path.basename( str(fileName) )
        if tabtext.lower().find(PROJECT_EXT) == len(tabtext) - len(PROJECT_EXT):
            tabtext = tabtext[:tabtext.lower().find(PROJECT_EXT)]
        self.addTab(child, tabtext)
        self.setCurrentIndex(self.count()-1)
        return True
    def saveFile(self):
        child = self.currentWidget()
        rc = child.save()
        if rc:
            fileName = child.currentFile()
            tabtext = os.path.basename( str(fileName) )
            if tabtext.lower().find(PROJECT_EXT) == len(tabtext) - len(PROJECT_EXT):
                tabtext = tabtext[:tabtext.lower().find(PROJECT_EXT)]
            self.setTabText(self.currentIndex(), tabtext)
            return True
        return False
    def closeFile(self):
        if self.count()==0:
            return # nothing to close
        # todo: check if the file has change before closing
        child = self.currentWidget()
        self.removeTab(self.currentIndex())
        child.setParent(None)
        child.close()
        
    def getCurrentFile(self):
        child = self.currentWidget()
        return child.currentFile()
    
    def findChildText(self, text=None):
        child = self.currentWidget()
        if child:
            return child.findText(text)
    
    def onChildContentChanged(self):
        title = self.tabText(self.currentIndex())
        if not title.contains('*', QtCore.Qt.CaseInsensitive):
            self.setTabText(self.currentIndex(), title + " * ")
        
    def prepareLibraryAPIs(self):
        self.LibraryAPIs = Qsci.QsciAPIs(QsciLexerCPP(self,True))
        try:
            keyword_file = open( PRK_LIB + '/' + KEYWORD_FILE, 'r')
            for line in keyword_file.readlines():
                if line.strip(): # ignore blank lines
                    if line[0] <> '#': # ignore comments
                        keyword = line.split('\t')[0]
                        # todo: classify keywords according to types
                        self.LibraryAPIs.add(keyword)
            keyword_file.close()
        except:
            print 'file not found'
        self.LibraryAPIs.prepare()
        
    def getLibraryAPIs(self):
        return self.LibraryAPIs
    
    def dragEnterEvent(self, e):
        if e.mimeData().hasUrls():
            url = str( e.mimeData().urls()[0].toString() ).lower()
            if url.rfind(PROJECT_EXT) == len(url) - len(PROJECT_EXT):
                e.accept()
                return
        e.ignore() 
        
    def dropEvent(self, e):
        try:
            fname = str(e.mimeData().urls()[0].toLocalFile() )
            #check if it's already opened
            for i in range(self.count()):
                child = self.widget(i)
                if fname == child.currentFile():
                    self.setCurrentIndex(i)
                    return
            child = CppEditor(self, fname)
            title = os.path.basename(fname)
            if title.lower().rfind(PROJECT_EXT) == len(title) - len(PROJECT_EXT):
                title = title[:title.lower().rfind(PROJECT_EXT)]
            self.addTab(child, title)
            self.setCurrentIndex(self.count()-1)
        except:
            print "drop error"
    
        