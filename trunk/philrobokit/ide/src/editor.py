
'''

@filename: editor.py

'''

from PyQt4 import QtGui, QtCore
from PyQt4.Qsci import QsciScintilla, QsciLexerCPP

class CppEditor(QsciScintilla):
    '''
    classdocs
    '''
    def __init__(self, parent=None, fileName=None):
        '''
        Constructor
        '''
        super(CppEditor, self).__init__(parent)
        
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
        self.setLexer(self.lexer)
        self.SendScintilla(QsciScintilla.SCI_STYLESETFONT, 1, 'Courier')
        
        # Convert tab to 4 white spaces
        self.setTabWidth(4)
        self.setIndentationsUseTabs(False)
        
        # Current line visible with special background color
        self.setCaretLineVisible(True)
        self.setCaretLineBackgroundColor(QtGui.QColor("#ffe4e4"))
        
        # Enable brace matching
        self.setBraceMatching(QsciScintilla.SloppyBraceMatch)
        
        # Enable folding visual- use boxes
        self.setFolding(QsciScintilla.BoxedTreeFoldStyle)
        
        
        if fileName:
            self.curFile = fileName
            self.loadFile(fileName)
            self.isUntitled = False
        else:
            self.curFile = "untitled.c"
            self.isUntitled = True
        
    def loadFile(self, fileName):
        qfile = QtCore.QFile(fileName)
        if not qfile.open(QtCore.QFile.ReadOnly | QtCore.QFile.Text):
            QtGui.QMessageBox.warning(self, "CppEditor",
                    "Cannot read file %s:\n%s." % (fileName, qfile.errorString()))
            return False
        instr = QtCore.QTextStream(qfile)
        self.setText(instr.readAll())
        return True
    def saveFile(self, fileName):
        qfile = QtCore.QFile(fileName)
        if not qfile.open(QtCore.QFile.WriteOnly | QtCore.QFile.Text):
            QtGui.QMessageBox.warning(self, "CppEditor",
                    "Cannot write file %s:\n%s." % (fileName, qfile.errorString()))
            return False

        outstr = QtCore.QTextStream(qfile)
        outstr << self.text()
        return True
    def saveAs(self):
        fileName = QtGui.QFileDialog.getSaveFileName(self, "Save As",
                self.curFile)
        if not fileName:
            return False
        return self.saveFile(fileName)
    def save(self):
        if self.isUntitled:
            return self.saveAs()
        else:
            return self.saveFile(self.curFile)
        
    def startBuild(self):
        print "todo: start build"
    def stopBuild(self):
        print "todo: stop build"


class MultipleCppEditor(QtGui.QTabWidget):
    '''
    classdocs
    '''
    def __init__(self, parent=None):
        '''
        Constructor
        '''
        super(MultipleCppEditor, self).__init__(parent)
        
        if self.count()==0:
            self.newFile()
        
    def newFile(self):
        child = CppEditor(self)
        self.addTab(child, "untitled.c")
        self.setCurrentIndex(self.count()-1)        
    def openFile(self):
        fileName = QtGui.QFileDialog.getOpenFileName(
                                        self, self.tr("Open Source File"),
                                        "", "C source (*.c);;Text File (*.txt);;All files (*.*)" )
        if fileName == "":
            return False
        child = CppEditor(self, fileName)
        self.addTab(child, fileName.right(fileName.length() - fileName.lastIndexOf('/') - 1 ))
        self.setCurrentIndex(self.count()-1)
        return True
    def saveFile(self):
        child = self.currentWidget()
        return child.save()
    def closeFile(self):
        # todo: check if the file has change before closing
        self.removeTab(self.currentIndex())
        
    def startBuild(self):
        child = self.currentWidget()
        child.startBuild()
    def stopBuild(self):
        child = self.currentWidget()
        child.stopBuild()
        