
'''

@filename: about.py

'''

from PyQt4 import QtGui, QtCore

SPLASH_IMAGE = 'images/about.png'

class AboutDialog(QtGui.QSplashScreen):
    def __init__(self, parent=None):
        QtGui.QSplashScreen.__init__(self, parent, flags=QtCore.Qt.WindowStaysOnTopHint)
        
        self.pix = QtGui.QPixmap( SPLASH_IMAGE )
        self.setPixmap(self.pix)
        self.setMask( self.pix.mask() )
        
        self.showMessage("  loading modules . . .",
                QtCore.Qt.AlignLeft | QtCore.Qt.AlignBottom, QtGui.QColor("#eecc77"));
        
    def mousePressEvent(self, *args, **kwargs):
        # print 'you pressed me!'
        self.close()
        return QtGui.QSplashScreen.mousePressEvent(self, *args, **kwargs)


