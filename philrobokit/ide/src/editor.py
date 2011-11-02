
'''

@filename: editor.py

'''

from PyQt4 import QtGui
from PyQt4.Qsci import QsciScintilla

class CppEditor(QsciScintilla):
    '''
    classdocs
    '''
    def __init__(self, parent=None):
        '''
        Constructor
        '''
        super(CppEditor, self).__init__(parent)


class MultipleCppEditor(QtGui.QTabWidget):
    '''
    classdocs
    '''
    def __init__(self, parent=None):
        '''
        Constructor
        '''
        super(MultipleCppEditor, self).__init__(parent)
        