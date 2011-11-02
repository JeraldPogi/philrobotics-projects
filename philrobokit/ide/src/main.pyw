#!/usr/bin/env python

import sys
from PyQt4 import QtGui

from mainwindow import AppMainWindow

if __name__ == '__main__':
    app = QtGui.QApplication(sys.argv)
    mainWin = AppMainWindow()
    mainWin.show()
    sys.exit(app.exec_())