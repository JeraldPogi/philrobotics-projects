
'''

    @filename: firmware.py
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

import os, glob, pyclibrary
from configs import FirmwareConfig

# library path
LIB_DIR = 'libraries'
# PhilRobokit Library
PRK_CORE_DIR = 'hardware/cores'
PRK_BSP_DIR = PRK_CORE_DIR + '/bsp'
STMLIB_DIR = PRK_CORE_DIR + '/stm_lib'
CMSIS_CM3_DIR = PRK_CORE_DIR + '/cmsis/CM3'
CM3_CORE_DIR = CMSIS_CM3_DIR + '/CoreSupport'
CM3_DEVICE_DIR = CMSIS_CM3_DIR + '/DeviceSupport/ST/STM32F10x'

STARTUP_CODE = PRK_BSP_DIR + '/startup_stm32f10x_md_vl.s'
LINKER_SCRIPT = PRK_BSP_DIR + '/stm32_flash_md_vl.ld'

# Example Projects
EXAMPLES_DIR = 'examples'
# required header file(s)
REQUIRED_INCLUDES = ['#include <stm32f10x.h>']

fwconfig = FirmwareConfig()

def scanFirmwareLibs():
    libraries = []
    folders = glob.glob(LIB_DIR + '/*') # scan all folders inside LIB_DIR
    for folder in folders:
        libname = folder[len(LIB_DIR)+1:]
        headerfile = folder + '/' + libname + '.h' # header filename must be based on its folder name
        if os.path.isfile(headerfile): # check if header file exists
            libraries.append( libname )
    return libraries

def getExampleProjects(libFolders=[]):
    sampleProjects = {} # use dictionary
    # get example projects that use core libraries
    sampleFolders = os.walk(EXAMPLES_DIR).next()[1] # get intermediate subfolders
    for lib in sampleFolders:
        if lib[0] != '.': # skip hidden folders
            projects = glob.glob(EXAMPLES_DIR + '/' + lib +'/*.phr') # scan phr files
            if len(projects):
                group = str(lib).upper()
                if not sampleProjects.has_key(group): # avoid duplicates
                    sampleProjects[group] = projects # store in the dictionary
    # get example projects that use optional user libraries
    for lib in libFolders:
        projects = glob.glob(LIB_DIR + '/' + lib +'/examples/*.phr')
        if len(projects):
            group = str(lib).upper()
            if not sampleProjects.has_key(group):
                sampleProjects[group] = projects
    #print sampleProjects
    return sorted(sampleProjects.items(), key=lambda x: x[1]) # sort according to keys (folder name)

def getCoreSourceFiles(userIncludes = []):
    # scan all *.c files
    srcs = []
    required = glob.glob(PRK_BSP_DIR + '/*.s') \
                   + glob.glob(PRK_BSP_DIR + '/*.c') \
                   + glob.glob(CM3_CORE_DIR + '/*.c') \
                   + glob.glob(CM3_DEVICE_DIR+ '/*.c')
    required.append(STMLIB_DIR + '/src/misc.c')
    required.append(STMLIB_DIR + '/src/stm32f10x_gpio.c')
    required.append(STMLIB_DIR + '/src/stm32f10x_rcc.c')
    required.append(STMLIB_DIR + '/src/stm32f10x_tim.c')
    required.append(STMLIB_DIR + '/src/stm32f10x_usart.c')

    for include in userIncludes:
        userheader = os.path.join( include[2:], os.path.split(include[2:])[1] + '.h' )
        try:
            fin = open(userheader, 'r')
            for line in fin.readlines():
                if line.replace(' ', '').find('#include') == 0: # found an '#include' directive
                    temp = line.strip()[len('#includes')-1 : ].strip()
                    header = temp[1:-1].strip() # get the header file
                    src = STMLIB_DIR + '/src/' + header[:-2] + '.c'
                    if os.path.isfile(src) and not (src in required):
                        required.append( src )
            fin.close()
        except:
            pass
        
    for fname in required:
        srcs.append( os.path.join(os.getcwd(), fname) )
        
    return srcs

def getIncludeDirs():
    dirs = [ PRK_BSP_DIR, STMLIB_DIR + '/inc', CM3_CORE_DIR, CM3_DEVICE_DIR ]
    includes = []
    for d in dirs:
        includes.append('-I' + os.getcwd() + '/' + d)
    #print includes
    return includes

# output: { pass, [includes], [sources] }
# [sources] contains the path name of the parsed used code
def parseUserCode(userCode=None, outPath=None, toolChain=''):
    
    # check if user code (e.g. test.phr) exists
    if not os.path.isfile(userCode): # file not found
        return False, [], []
    
    # create output directory, if not existing
    if not os.path.exists( outPath ):
        try:
            os.makedirs( outPath )
        except: # unable to create the directory
            return False, [], []
    
    # initial return values (empty)
    includes = []
    sources = [userCode]
    try:
        fin = open(userCode, 'r')
        for line in fin.readlines():
            if line.replace(' ', '').find('#include') == 0: # found an '#include' directive
                temp = line.strip()[len('#includes')-1 : ].strip()
                header = temp[1:-1].strip() # get the header file
                # print header
                libpath = LIB_DIR + '/' + header[:-2]
                # check the folder and the header file if they exist
                if os.path.exists( libpath ) and os.path.isfile(libpath + '/' + header):
                    # print libpath
                    # todo: scan header file
                    include = '-I' + libpath
                    if not (include in includes): # include only once
                        includes.append( include )
                        sources += glob.glob(libpath + '/*.c') # compile all *.c files
        fin.close()
    except:
        return False, [], []
        
    
    # lib core include paths and source files
    sources += getCoreSourceFiles(includes)
    includes += getIncludeDirs()
    
    return True, includes, sources

def getLinkerScript():
    return os.path.join( os.getcwd(), LINKER_SCRIPT )

def getLibraryKeywords(headerFiles=[]):
    if not len(headerFiles):
        # search default header files
        headerFiles = glob.glob( PRK_BSP_DIR + '/*.h' )
        #headerFiles += glob.glob( STMLIB_DIR + '/inc/*.h' ) # large files!!
        
    #print header_files

    fwconfig.saveFwSettings()
    #print fwconfig.getDefines()
    
    # parse header files with CParser
    parser = pyclibrary.CParser( headerFiles , macros=fwconfig.getDefines() )
    parser.processAll()

    functions = [] # C functions
    for func, type in parser.defs['functions'].items():
        functions.append( func )
    #print 'functions:\n', functions

    fnmacros = [] # function macros
    for macro, type in parser.defs['fnmacros'].items():
        fnmacros.append( macro )
    #print 'fnmacros:\n', fnmacros

    values = [] # variable defines
    for val, type in parser.defs['values'].items():
        if val.find('__') <> 0:
            values.append( val )
    #print 'values:\n', values

    keywords = functions
    keywords += fnmacros
    keywords += values
    keywords = list(set(keywords)) # remove duplicate items
    #print keywords
    #print 'found %d keywords' %len(keywords)

    return keywords


