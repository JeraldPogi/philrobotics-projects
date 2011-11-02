
'''

@filename: editor.py

'''

from PyQt4 import QtGui
from PyQt4.Qsci import QsciScintilla, QsciLexerCPP

class CppEditor(QsciScintilla):
    '''
    classdocs
    '''
    def __init__(self, parent=None):
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
        