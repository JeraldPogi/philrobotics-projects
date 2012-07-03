
'''

@filename: tinypicbld.py

'''

import os, serial, time
from PyQt4 import QtCore

TINYBLD_16F877A_HEX = "hardware/bootloaders/tinybld/16f877a/tinybld16f877a.HEX"

class TinyPICBootloaderThread(QtCore.QThread):
    '''
    The TinyPic Boot Loader:
    http://www.etc.ugal.ro/cchiculita/software/picbootloader.htm
    
    python routines based on "pytbl.py"
    Copyright (C)2005 Combustion Ingenieros Ltda
                       http://www.cihologramas.com
    Author: Ricardo Amezquita Orozco
             <ramezquitao@cihologramas.com>
    '''
    def __init__(self, parent=None):
        QtCore.QThread.__init__(self, parent)
        self.parent = parent
        
        self.serialPortName = None
        self.Port = None
        self.BaudRate = 57600 # default baudrate (bps)
        self.TimeOut = 1.0 # default timeout (sec)
        self.HexFile = ''
        
        self.LogList = QtCore.QStringList()
        
    def getFW(self, chip='pic16f877a'):
        # todo: other chip parts
        return os.getcwd() + '/' + TINYBLD_16F877A_HEX
        
    def run(self):
        if self.serialPortName == None:
            self.LogList.append("error: no serial port selected")
            return
        
        try:
            self.Port = serial.Serial( self.serialPortName,
                                       baudrate = self.BaudRate, timeout = self.TimeOut )
        except:
            self.LogList.append("error: unable to open serial port!")
            return
        
        pic_mem = { }
        max_flash, family = self.detectPIC( True )
        
        if max_flash == None:
            self.LogList.append("error: chip not detected.")
            self.Port.close()
            return
        
        try:
            f=open(self.HexFile, 'r')
        except IOError:
            self.LogList.append("error: unable to read Hex file.")
            self.Port.close()
            return
        
        lines = f.readlines()
        f.close()
        act=0;        
        for rec in lines:
            act += 1               
            # Check for the record begining
            if rec[0]!=":":
                print "Hex file not recognized:\nLine: "+str(act)+" File: " + self.HexFile
                self.LogList.append("error: Hex file not recognized")
                f.close()
                self.Port.close()
                return
            # Read the register size
            rl=eval("0x"+rec[1:3])
                
            # Read the register address 
            # Have in mind that the physical PIC address is half of the
            # address registered in the .hex file for the 16F family    
            di=eval("0x"+rec[3:7])
                
            # Read the register type    
            rt=eval("0x"+rec[7:9])
    
            # Calculate checksum
            chs=rl+eval("0x"+rec[3:5])+eval("0x"+rec[5:7])+rt
            # Only use the data register
            if rt==0:
                for i in range(9,9+2*rl,2):
                    data=rec[i:i+2]
                    
                    # Calculate hex file checksum
                    chs=chs+eval("0x"+data)
    
                    # store data in pic_mem (it uses hex file address)
                    # and move the first 4 address to the needed location                    
                    if di < 0x08:
                        if family=="16F8XX" or family=="16F8X":
                            pic_mem[di+2*max_flash-200]=eval("0x"+data)
                        elif family=="18F":
                            pic_mem[di+max_flash-200]=eval("0x"+data)
                    else:
                        pic_mem[di]=eval("0x"+data)
    
                    di=di+1
    
                    #Calculate hex file checksum
                    chs=((-chs)&255)
                    # TODO: Check the hex file checksum
                    
        # The programing block size is family dependant:
        # For the 16F8XX family the block size is 8 bytes long (check in the
        # asm file for the max block size) 
        # For the 18F family the block size is 64 byte long    
        if family=="16F8XX":
            hblock=8 #Hex Block 8 bytes
            block=4  #PIC Block 4 instructions (8 memory positions)
            maxpos=max_flash-100+4
            minpos=4
            
        if family=="16F8X":
            #The pic 16F87 and 16F88 do erase the program memory in blocks
            #of 32 word blocks (64 bytes)
            
            hblock=64 #Hex Block 64 bytes
            block=32  #PIC Block 32 instructions (64 memory positions)
            
            maxpos=max_flash-100+4
            minpos=0
            
            pic_mem[0]=0x8A
            pic_mem[1]=0x15
            pic_mem[2]=0xA0
            pic_mem[3]=0x2F
            
        if family=="18F":
            # The blocks have to be written using a 64 bytes boundary
            # so the first 8 bytes (reserved by TinyPic) will be re writen
            # So we have to include a goto max_flash-200+8
    
            goto_add=((max_flash-200+8)/2)
            hh_goto=(goto_add/0x10000)&0x0F
            h_goto=(goto_add/0x100)&0xFF
            l_goto=goto_add&0xFF
            
            pic_mem[0]=l_goto
            pic_mem[1]=0xEF
            pic_mem[2]=h_goto
            pic_mem[3]=0xF0+hh_goto
            block=64
            hblock=64
            maxpos=max_flash-200+8
            minpos=0
            
        for pic_pos in range(minpos,maxpos,block):        
            mem_block=[255]*hblock
            write_block=False
            for j in range(0,hblock):
    
                #Remember .hex file address is pic_address/2 for the 16F familly
                if (family=="16F8XX") or (family == "16F8X"):
                    hex_pos=2*pic_pos+j
                elif family=="18F":
                    hex_pos=pic_pos+j
                else :
                    print "Error, family not supported:",family
                    self.LogList.append("error: family not supported")
                    self.Port.close()
                    return
                
                if pic_mem.has_key(hex_pos):
                    mem_block[j]=pic_mem[hex_pos]
                    write_block=True
            if write_block:
                ret=self.writeMem(pic_pos,mem_block,family)
                if ret!="K":
                    print "done write block"
                    self.LogList.append(" tinyPIC bootloader finished loading.")
                    self.Port.close()
                    return
        
        self.Port.close()
        self.LogList.append(" tinyPIC bootloader finished loading.")
        
    def detectPIC(self, resetRTS=False):
        print 'detecting pic using ', self.serialPortName

        if resetRTS: # use '#RTS' pin to toggle VPP
            self.Port.setRTS(1) # set low
            time.sleep(0.1)
            self.Port.setRTS(0) # set high
            time.sleep(0.1)
        else: # use TXD BREAK
            self.Port.setBreak(False)
            self.Port.sendBreak(0.1)
            self.Port.setBreak(True)
            time.sleep(0.2)

        #self.Port.flushInput() # clear input buffer
        self.Port.flush()
        self.Port.flushInput()
        self.Port.write( chr(0xC1) )
        ret=self.Port.read(2) # read two bytes
        if len(ret)!=2:
            self.LogList.append("error: PIC not available")
            return None, None
        #Leer el tipo de pic retornado por la tarjeta
        if ret[1] != "K":
            self.LogList.append("error: PIC not recognized (protocol error)")
            #return None, None
            
        pt = ord(ret[0])
        print 'ret = 0x%02X, 0x%02X' %(ord(ret[0]), ord(ret[1]) )

        if pt==0x31:
            PicType="16F876A-16F877A";
            max_flash=0x2000;
        elif pt==0x32:
            PicType="16f873A-p16f874A";
            max_flash=0x1000;
        elif pt==0x33:
            PicType="16F87-16F88";
            max_flash=0x1000;
        elif pt==0x41:
            PicType="18F252-18F452";
            max_flash=0x8000;
        elif pt==0x42:
            PicType="18F242-18F442";
            max_flash=0x4000;
        elif pt==0x43:
            PicType="18F258-18F458";
            max_flash=0x8000;
        elif pt==0x44:
            PicType="18F248-18F448";
            max_flash=0x4000;
        elif pt==0x45:
            PicType="18F1320-18F2320";
            max_flash=0x2000;
        elif pt==0x46:
            PicType="18F1220-18F2220";
            max_flash=0x1000;
        elif pt==0x47:
            PicType="18F4320";
            max_flash=0x2000;
        elif pt==0x48:
            PicType="18F4220";
            max_flash=0x1000;
        elif pt==0x4A:
            PicType="18F6720-18F8720";
            max_flash=0x20000;
        elif pt == 0x4B:
            PicType="18F6620-18F8620"
            max_flash=0x10000
        elif pt ==0x4C:
            PicType="18F6520-18F8520"
            max_flash=0x8000
        elif pt==0x4D:
            PicType="18F8680";
            max_flash=0x10000;
        elif pt==0x4E:
            PicType="18F2525-18F4525";
            max_flash=0xC000;
        elif pt==0x4F:
            PicType="18F2620-18F4620";
            max_flash=0x10000;
        elif pt==0x55:
            PicType="18F2550-18F4550";
            max_flash=0x8000;
        elif pt==0x56:
            PicType="18F2455-18F4455";
            max_flash=0x6000;
        else:
            self.LogList.append("error: microcontroller not supported or not detected!")
            return None, None
        
        family=None
        
        if (pt==0x31) or (pt==0x32):
            family="16F8XX"
        elif (pt==0x33):
            family="16F8X"
        elif (pt>0x40) and (pt<0x60):
            family="18F"

        self.LogList.append("Detected Microcontroller: " + PicType)
        return max_flash, family

    def programDevice( self, fileName=None, serialPort=None ):
        if self.isRunning():
            return False, "busy"
        if not fileName:
            return False, "program what?"
        
        self.serialPortName = serialPort
        self.LogList.clear()
        
        if not os.path.isfile(fileName): # file not found
            print 'hexfile not found: ', fileName
            return False, "No *.hex file found! (re)build first the project."
        
        self.HexFile = fileName
        
        self.start()
            
        return True, "TinyPIC bootloader running. Please wait..."
        
    def writeMem(self, pic_pos, mem_block, family):
        self.LogList.append("writing to: 0x%05X"%pic_pos)
        
        self.Port.flushInput()
        
        hm=(pic_pos/256)&255
        lm=(pic_pos&255)
        rl=len(mem_block)
    
        if (family=="16F8XX")or(family=="16F8X"):
            # Calculate checksum
            chs=hm+lm+rl
            self.Port.write(chr(hm)+chr(lm)+chr(rl))
            for i in range(0,rl):
            
                # Calculate checksum
                chs=chs+mem_block[i]
                
                self.Port.write(chr(mem_block[i]))
                
            chs=((-chs)&255)
            self.Port.write(chr(chs))
    
        if family=="18F":
            # Calculate checksum
            chs=hm+lm+rl
            # the pic receives 3 byte memory address
            # U TBLPTRH TBLPTRL
            # Todo: Check if U can be different to 0
            #           U TBLPTRH TBLPTRL
            self.Port.write(chr(0)+chr(hm)+chr(lm)+chr(rl))
            for i in range(0,rl):
                # Calculate checksum
                chs=chs+mem_block[i]
                
                self.Port.write(chr(mem_block[i]))
        
            chs=((-chs)&255)
            self.Port.write(chr(chs))
    
        ret=self.Port.read(1)
        if ret!="K":
            self.LogList.append("Error writing to the memory position: "+hex(pic_pos))
        return ret
    
    def pollBootLoadProcess(self):
        if self.isRunning() or self.LogList.count()>0:
            if self.LogList.count():
                return True, str(self.LogList.takeFirst())
            else:
                return True, ''
        else:
            return False, "process not running"
        
        