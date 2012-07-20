
'''

    @filename: about.py
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

SPLASH_IMAGE = 'images/about.png'

SPLASH_NOTICE = '''
  PhilRoboKit IDE  Copyright (C) 2012  PhilRobotics
  This program comes with ABSOLUTELY NO WARRANTY.
  This is free software, and you are welcome
  to redistribute it under certain conditions.

  

'''

class AboutDialog(QtGui.QSplashScreen):
    def __init__(self, parent=None):
        QtGui.QSplashScreen.__init__(self, parent, flags=QtCore.Qt.WindowStaysOnTopHint)
        
        self.pix = QtGui.QPixmap( SPLASH_IMAGE )
        self.setPixmap(self.pix)
        self.setMask( self.pix.mask() )
        
        self.showMessage( SPLASH_NOTICE + '    loading modules . . .',
            QtCore.Qt.AlignLeft | QtCore.Qt.AlignBottom, QtGui.QColor("#eecc77"));
        
    def mousePressEvent(self, *args, **kwargs):
        # print 'you pressed me!'
        self.close()
        return QtGui.QSplashScreen.mousePressEvent(self, *args, **kwargs)


