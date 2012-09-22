
'''
    @filename: flashloader.py
    @project : PhilRoboKit IDE
    
    based on 'stm32loader.py'
    # Author: Ivan A-R <ivan@tuxotronic.org>
    # Project page: http://tuxotronic.org/wiki/projects/stm32loader
    
    # This file is part of stm32loader.
    #
    # stm32loader is free software; you can redistribute it and/or modify it under
    # the terms of the GNU General Public License as published by the Free
    # Software Foundation; either version 3, or (at your option) any later
    # version.
    #
    # stm32loader is distributed in the hope that it will be useful, but WITHOUT ANY
    # WARRANTY; without even the implied warranty of MERCHANTABILITY or
    # FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
    # for more details.

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

import os, serial, time
from PyQt4 import QtCore


class FlashLoaderThread(QtCore.QThread):
    def __init__(self, parent=None):
        QtCore.QThread.__init__(self, parent)
        self.parent = parent
        
        self.serialPortName = None
        self.BinFile = ''
        
        self.LogList = QtCore.QStringList()
        
    def openPort(self, aport='/dev/ttyUSB0', abaudrate=115200) :
        self.sp = serial.Serial(
            port=aport,
            baudrate=abaudrate,     # baudrate
            bytesize=8,             # number of databits
            parity=serial.PARITY_EVEN,
            stopbits=1,
            xonxoff=0,              # enable software flow control
            rtscts=0,               # disable RTS/CTS flow control
            timeout=2               # set a timeout value, None for waiting forever
        )
        
    def _wait_for_ask(self, info = ""):
        # wait for ask
        try:
            ask = ord(self.sp.read())
        except:
            self.LogList.append("Can't read port (or timeout occurred)!")
        else:
            if ask == 0x79:
                # ACK
                return 1
            else:
                if ask == 0x1F:
                    # NACK
                    self.LogList.append("NACK "+info)
                else:
                    # Unknow responce
                    self.LogList.append("Unknow response. "+info+": "+hex(ask))


    def reset(self):
        self.sp.setDTR(0)
        time.sleep(0.1)
        self.sp.setDTR(1)
        time.sleep(0.5)

    def initChip(self):
        # Set boot
        self.sp.setRTS(0)
        self.reset()

        self.sp.write("\x7F")       # Syncro
        return self._wait_for_ask("Syncro")

    def releaseChip(self):
        self.sp.setRTS(1)
        self.reset()
        self.sp.close()

    def cmdGeneric(self, cmd):
        self.sp.write(chr(cmd))
        self.sp.write(chr(cmd ^ 0xFF)) # Control byte
        return self._wait_for_ask(hex(cmd))

    def cmdGet(self):
        if self.cmdGeneric(0x00):
            lng = ord(self.sp.read())
            version = ord(self.sp.read())
            print "    Bootloader version: "+hex(version)
            dat = map(lambda c: hex(ord(c)), self.sp.read(lng))
            print "    Available commands: "+str(dat)
            self._wait_for_ask("0x00 end")
            return version
        else:
            self.LogList.append("Get (0x00) failed")

    def cmdGetVersion(self):
        if self.cmdGeneric(0x01):
            version = ord(self.sp.read())
            self.sp.read(2)
            self._wait_for_ask("0x01 end")
            print "    Bootloader version: "+hex(version)
            return version
        else:
            self.LogList.append("GetVersion (0x01) failed")
            return 0

    def cmdGetID(self):
        if self.cmdGeneric(0x02):
            length = ord(self.sp.read())
            deviceId = self.sp.read(length+1)
            self._wait_for_ask("0x02 end")
            return str(deviceId)
        else:
            self.LogList.append("GetID (0x02) failed")
            return '\xDE\xAD'


    def _encode_addr(self, addr):
        byte3 = (addr >> 0) & 0xFF
        byte2 = (addr >> 8) & 0xFF
        byte1 = (addr >> 16) & 0xFF
        byte0 = (addr >> 24) & 0xFF
        crc = byte0 ^ byte1 ^ byte2 ^ byte3
        return (chr(byte0) + chr(byte1) + chr(byte2) + chr(byte3) + chr(crc))


    def cmdReadMemory(self, addr, lng):
        assert(lng <= 256)
        if self.cmdGeneric(0x11):
            self.sp.write(self._encode_addr(addr))
            self._wait_for_ask("0x11 address failed")
            N = (lng - 1) & 0xFF
            crc = N ^ 0xFF
            self.sp.write(chr(N) + chr(crc))
            self._wait_for_ask("0x11 length failed")
            return map(lambda c: ord(c), self.sp.read(lng))
        else:
            self.LogList.append("ReadMemory (0x11) failed")


    def cmdGo(self, addr):
        if self.cmdGeneric(0x21):
            self.sp.write(self._encode_addr(addr))
            self._wait_for_ask("0x21 go failed")
        else:
            self.LogList.append("Go (0x21) failed")


    def cmdWriteMemory(self, addr, data):
        assert(len(data) <= 256)
        if self.cmdGeneric(0x31):
            self.sp.write(self._encode_addr(addr))
            self._wait_for_ask("0x31 address failed")
            lng = (len(data)-1) & 0xFF
            # print "    %s bytes to write" % [lng+1]
            self.sp.write(chr(lng)) # len really
            crc = 0xFF
            for c in data:
                crc = crc ^ c
                self.sp.write(chr(c))
            self.sp.write(chr(crc))
            self._wait_for_ask("0x31 programming failed")
        else:
            self.LogList.append("Write memory (0x31) failed")


    def cmdEraseMemory(self, sectors = None):
        if self.cmdGeneric(0x43):
            if sectors is None:
                # Global erase
                self.sp.write(chr(0xFF))
                self.sp.write(chr(0x00))
            else:
                # Sectors erase
                self.sp.write(chr((len(sectors)-1) & 0xFF))
                crc = 0xFF
                for c in sectors:
                    crc = crc ^ c
                    self.sp.write(chr(c))
                self.sp.write(chr(crc))
            self._wait_for_ask("0x43 erasing failed")
        else:
            self.LogList.append("Erase memory (0x43) failed")
        
    # Complex commands section

    def readMemory(self, addr, lng):
        data = []
        while lng > 256:
            #print "Read %(len)d bytes at 0x%(addr)X" % {'addr': addr, 'len': 256}
            data = data + self.cmdReadMemory(addr, 256)
            addr = addr + 256
            lng = lng - 256
        #print "Read %(len)d bytes at 0x%(addr)X" % {'addr': addr, 'len': 256}
        data = data + self.cmdReadMemory(addr, lng)
        return data

    def writeMemory(self, addr, data):
        lng = len(data)        
        offs = 0
        while lng > 256:
            #print "Write %(len)d bytes at 0x%(addr)X" % {'addr': addr, 'len': 256}
            self.cmdWriteMemory(addr, data[offs:offs+256])
            offs = offs + 256
            addr = addr + 256
            lng = lng - 256
        #print "Write %(len)d bytes at 0x%(addr)X" % {'addr': addr, 'len': 256}
        self.cmdWriteMemory(addr, data[offs:offs+lng] + ([0xFF] * (256-lng)) )
        
    def run(self):
        if self.serialPortName == None:
            self.LogList.append("<font size=4 color=orange>error: no serial port selected!</font>")
            return
        
        try:
            self.openPort( self.serialPortName, 115200 )
            self.LogList.append( "Open %s port OK." % self.serialPortName )
            if self.initChip():
                self.LogList.append( "Initialize Chip OK" )
            else:
                self.LogList.append("<font color=red>unable to initialize chip !</font>")
            self.LogList.append( "Bootloader Version: %X" % self.cmdGet() )
            self.LogList.append( "Chip ID: %s" % self.cmdGetID().encode('hex').upper() )
            
            self.LogList.append( 'Flash load: " %s " ' % self.BinFile )
            data = map(lambda c: ord(c), file(self.BinFile, 'rb').read())
            #print "data to write: ", data
            self.LogList.append( "erasing ....." )
            self.cmdEraseMemory()
            self.LogList.append( "... Erase Memory OK" )
            self.LogList.append( "writing ....." )
            self.writeMemory( 0x08000000, data )
            self.LogList.append( "... Write Memory OK" )
            self.LogList.append( "verifying ....." )
            verify = self.readMemory( 0x08000000, len(data) )
            if(data == verify):
                self.LogList.append( "... Verification OK" )
                self.LogList.append("<font size=4 color=cyan>STM32 Flash Loader finished loading.</font>")
            else:
                self.LogList.append("<font color=red>error: Verification FAILED !</font>")
                print str(len(data)) + ' vs ' + str(len(verify))
                for i in xrange(0, len(data)):
                    if data[i] != verify[i]:
                        print hex(i) + ': ' + hex(data[i]) + ' vs ' + hex(verify[i])
            
        except:
            self.LogList.append("<font size=4 color=red>error: Failed to load program!</font>")
            self.LogList.append( "Please check if the board is SWITCHed to bootloader mode," )
            self.LogList.append( "and then manually press the RESET button." )
            return
        finally:
            self.releaseChip()
            # print "releaseChip port closed."
        
    def programDevice( self, fileName=None, serialPort=None ):
        if self.isRunning():
            return False, "busy"
        if not fileName:
            return False, "program what?"
        
        self.serialPortName = serialPort
        self.LogList.clear()
        
        if not os.path.isfile(fileName): # file not found
            print 'binary file not found: ', fileName
            return False, "No *.bin file found! (re)build first the project."
        
        self.BinFile = fileName
        
        self.start()
            
        return True, "STM32 Flash Loader running. Please wait..."
    
    def pollBootLoadProcess(self):
        if self.isRunning() or self.LogList.count()>0:
            if self.LogList.count():
                return True, str(self.LogList.takeFirst())
            else:
                return True, ''
        else:
            return False, "process not running"
        
        