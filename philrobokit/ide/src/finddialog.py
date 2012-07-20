
'''

    @filename: finddialog.py
    @project : PhilRoboKit IDE

    PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
    http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
    phirobotics.core@philrobotics.com

    Copyright (C) 2012  Julius Constante

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see http://www.gnu.org/licenses

'''

from PyQt4 import QtGui, QtCore

class FindDialog(QtGui.QDialog):
    '''
    classdocs
    '''
    def __init__(self, parent=None):
        super(FindDialog, self).__init__(parent)
        
        self.setWindowTitle('Find/Replace')
        self.setMaximumSize(720, 180)
        self.parent = parent
        
        # string inputs
        self.findInput = QtGui.QLineEdit()
        self.replaceInput = QtGui.QLineEdit()
        # push buttons
        self.findButton = QtGui.QPushButton("Find")
        self.replaceButton = QtGui.QPushButton("Replace")
        self.replaceFindButton = QtGui.QPushButton("Replace/Find")
        self.replaceAllButton = QtGui.QPushButton("Replace All")
        # checkbox options
        self.reverseFindCheckbox = QtGui.QCheckBox("Backward search")
        self.caseSensitiveCheckbox = QtGui.QCheckBox("Case sensitive")
        self.wrapAroundCheckbox = QtGui.QCheckBox("Wrap search")
        self.wrapAroundCheckbox.setCheckState(QtCore.Qt.Checked)
        self.wholeWordCheckbox = QtGui.QCheckBox("Whole Word")
        self.regExpCheckbox = QtGui.QCheckBox("Regular expressions")
        
        # grid layout (7 x 12 grid)
        layout = QtGui.QGridLayout()
        # string inputs layout position
        layout.addWidget(QtGui.QLabel('Find:'),0, 0, 1, 2)
        layout.addWidget(self.findInput, 0, 2, 1, 10)
        layout.addWidget(QtGui.QLabel('Replace with:'),1, 0, 1, 2)
        layout.addWidget(self.replaceInput, 1, 2, 1, 10)
        # checkboxes layout position
        layout.addWidget(self.reverseFindCheckbox, 3, 2, 1, 3)
        layout.addWidget(self.caseSensitiveCheckbox, 3, 5, 1, 3)
        layout.addWidget(self.wrapAroundCheckbox, 3, 8, 1, 3)
        layout.addWidget(self.wholeWordCheckbox, 4, 2, 1, 3)
        layout.addWidget(self.regExpCheckbox, 4, 5, 1, 5)
        # push buttons layout position
        layout.addWidget(self.findButton, 5, 0, 1, 3)
        layout.addWidget(self.replaceButton, 5, 3, 1, 3)
        layout.addWidget(self.replaceFindButton, 5, 6, 1, 3)
        layout.addWidget(self.replaceAllButton, 5, 9, 1, 3)
        
        self.setLayout(layout)
        
        # signals
        self.findButton.clicked.connect(self.findBtnClicked)
        self.replaceButton.clicked.connect(self.replaceBtnClicked)
        self.replaceFindButton.clicked.connect(self.replaceFindBtnClicked)
        self.replaceAllButton.clicked.connect(self.replaceAllBtnClicked)
        
    def setFindText(self, text):
        self.findInput.setText(text)

    def findBtnClicked(self):
        text = str( self.findInput.text() )
        if len(text):
            fw = not self.reverseFindCheckbox.isChecked()
            cs = self.caseSensitiveCheckbox.isChecked()
            wrap = self.wrapAroundCheckbox.isChecked()
            whole = self.wholeWordCheckbox.isChecked()
            regexp = self.regExpCheckbox.isChecked()
            self.parent.findChildText(text, fw, cs, wrap, whole, regexp)
        
    def replaceBtnClicked(self):
        newText = str( self.replaceInput.text() )
        self.parent.replaceChildText(newText)
        
    def replaceFindBtnClicked(self):
        oldText = str( self.findInput.text() )
        newText = str( self.replaceInput.text() )
        if len(oldText):
            fw = not self.reverseFindCheckbox.isChecked()
            cs = self.caseSensitiveCheckbox.isChecked()
            wrap = self.wrapAroundCheckbox.isChecked()
            whole = self.wholeWordCheckbox.isChecked()
            regexp = self.regExpCheckbox.isChecked()
            self.parent.replaceFindChildText(oldText, newText, fw, cs, wrap, whole, regexp)
        
    def replaceAllBtnClicked(self):
        oldText = str( self.findInput.text() )
        newText = str( self.replaceInput.text() )
        if len(oldText):
            cs = self.caseSensitiveCheckbox.isChecked()
            whole = self.wholeWordCheckbox.isChecked()
            regexp = self.regExpCheckbox.isChecked()
            self.parent.replaceAllChildText(oldText, newText, cs, whole, regexp)

        