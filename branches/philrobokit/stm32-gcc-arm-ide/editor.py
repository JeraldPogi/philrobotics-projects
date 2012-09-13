
'''

    @filename: editor.py
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

import os
from PyQt4 import QtGui, QtCore
from cppeditor import CppEditor, PROJECT_ALIAS, PROJECT_EXT, PROJECT_NONAME
from finddialog import FindDialog
from firmware import getLibraryKeywords

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
        
        self.DefaultKeywords = getLibraryKeywords()
        
        self.findDlg = FindDialog(self)
        
        self.setAcceptDrops(True)
        #self.setTabShape(QtGui.QTabWidget.Triangular)
        self.setMovable(True)
        self.setTabsClosable(True)
        
        self.connect(self, QtCore.SIGNAL('tabCloseRequested(int)'), self.closeFile)
        
        if self.count()==0:
            self.newFile()
        
    def newFile(self):
        child = CppEditor(self)
        self.addTab(child, PROJECT_NONAME + " * ")
        self.setCurrentIndex(self.count()-1)
        self.setTabToolTip(self.currentIndex(), child.currentFile())
        
    def openFile(self, fileName=None):
        if fileName == None: # prompt open dialog if filename is not specified
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
        self.setTabToolTip(self.currentIndex(), child.currentFile())
        return True
    
    def saveFile(self):
        child = self.currentWidget()
        if child == None:
            return None
        rc = child.save()
        if rc:
            fileName = child.currentFile()
            tabtext = os.path.basename( str(fileName) )
            if tabtext.lower().find(PROJECT_EXT) == len(tabtext) - len(PROJECT_EXT):
                tabtext = tabtext[:tabtext.lower().find(PROJECT_EXT)]
            self.setTabText(self.currentIndex(), tabtext)
            self.setTabToolTip(self.currentIndex(), fileName)
            return True
        return False
    
    def saveFileAs(self):
        child = self.currentWidget()
        rc = child.saveAs()
        if rc:
            fileName = child.currentFile()
            tabtext = os.path.basename( str(fileName) )
            if tabtext.lower().find(PROJECT_EXT) == len(tabtext) - len(PROJECT_EXT):
                tabtext = tabtext[:tabtext.lower().find(PROJECT_EXT)]
            self.setTabText(self.currentIndex(), tabtext)
            self.setTabToolTip(self.currentIndex(), fileName)
            return True
        return False
    
    def closeFile(self, idx = 0):
        if self.count()==0:
            return True# nothing to close
        # check if the file has changed before closing
        child = self.widget(idx)
        if child.isModified:
            result = QtGui.QMessageBox.question(self, "Modified",
                         'Save changes on "' + child.currentFile() + '" ?',
                         QtGui.QMessageBox.Yes, QtGui.QMessageBox.No, QtGui.QMessageBox.Cancel)
            if result == QtGui.QMessageBox.Cancel:
                return False
            elif result == QtGui.QMessageBox.Yes:
                if child.save() == None: # file was not save after
                    return False
        self.removeTab(idx)
        child.setParent(None)
        child.close()
        return True
    
    def closeCurrentFile(self):
        return self.closeFile(self.currentIndex())
        
    def getCurrentFile(self):
        child = self.currentWidget()
        if child:
            return child.currentFile()
        return None
    
    def editUndo(self):
        child = self.currentWidget()
        if child: child.undo()
            
    def editRedo(self):
        child = self.currentWidget()
        if child: child.redo()
    
    def editCut(self):
        child = self.currentWidget()
        if child:
            if child.hasSelectedText(): child.cut()
            
    def editCopy(self):
        child = self.currentWidget()
        if child: child.copy()
            
    def editPaste(self):
        child = self.currentWidget()
        if child: child.paste()
        
    def editSelectAll(self):
        child = self.currentWidget()
        if child: child.selectAll()
        
    def editClear(self):
        child = self.currentWidget()
        if child: child.clear()
    
    def showFindDialog(self):
        child = self.currentWidget()
        if child:
            if child.hasSelectedText():
                self.findDlg.setFindText(child.selectedText ())
        self.findDlg.show()
        
    def findChildText(self, text=None, forwardDirection=True, caseSensitive=False,
                      wrapSearch=True, wholeWord=False, regExp=False):
        if text:
            child = self.currentWidget()
            if child:
                #print "fw = ", forwardDirection, " cs = ", caseSensitive, " wrap = ", wrapSearch
                result = child.findFirst( text,
                            regExp, # regular expression
                            caseSensitive, # case sensitive
                            wholeWord, # whole word matches only
                            wrapSearch,  # wraps around
                            forwardDirection) # forward
                return result
        return False
    
    def replaceChildText(self, newText=None):
        child = self.currentWidget()
        if child and child.hasSelectedText():
            child.replaceSelectedText(newText) # returns None
            return True                
        return False
    
    def replaceFindChildText(self, oldText=None, newText=None, forwardDirection=True,
                             caseSensitive=False, wrapSearch=True, wholeWord=False, regExp=False):
        if oldText:
            child = self.currentWidget()
            if child:
                child.replace(newText)
                result = child.findFirst( oldText,
                            regExp, # regular expression
                            caseSensitive, # case sensitive
                            wholeWord, # whole word matches only
                            wrapSearch,  # wraps around
                            forwardDirection) # forward
                return result               
        return False
    
    def replaceAllChildText(self, oldText=None, newText=None, caseSensitive=False,
                            wholeWord=False, regExp=False):
        if oldText:
            if (not caseSensitive) and (oldText.lower() == newText.lower()):
                print "nothing to replace"
                return False
            child = self.currentWidget()
            if child:
                result = child.findFirst( oldText,
                            regExp, # regular expression
                            caseSensitive, # case sensitive
                            wholeWord, # whole word matches only
                            True,  # wraps around
                            True) # forward
                if result:
                    cnt = 0
                    while cnt < 4096: # limit loop
                        child.replace(newText)
                        cnt += 1
                        if not child.findNext(): break
                    return True      
        return False
                
    def onChildContentChanged(self):
        title = self.tabText(self.currentIndex())
        if not title.contains('*', QtCore.Qt.CaseInsensitive):
            self.setTabText(self.currentIndex(), title + " * ")
        
    def getDefaultKeywords(self):
        return self.DefaultKeywords
    
    def importFirmwareLib(self, library=''):        
        child = self.currentWidget()
        if child and len(library):
            child.insertIncludeDirective(library)
    
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
            self.openFile(fname)
        except:
            print "drop error"
    
    def closeAllTabs(self):
        for index in range(self.count()):
            self.setCurrentIndex(index)
            if not self.closeFile():
                return False
        return True

        