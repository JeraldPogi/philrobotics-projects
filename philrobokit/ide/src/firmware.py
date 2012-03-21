
'''

@filename: firmwarelibs.py

'''

import os, glob, pyclibrary

# library path
LIB_DIR = 'libraries'
# PhilRobokit Library
PRK_CORE_DIR = 'hardware/cores'
PRK_CORELIB_DIR = PRK_CORE_DIR + '/lib'
# required header file(s)
REQUIRED_INCLUDES = ['#include <PhilRoboKit_CoreLib_Macro.h>']

def scanFirmwareLibs():
    libraries = []
    folders = glob.glob(LIB_DIR + '/*') # scan all folders inside LIB_DIR
    for folder in folders:
        libname = folder[len(LIB_DIR)+1:]
        headerfile = folder + '/' + libname + '.h' # header filename must be based on its folder name
        if os.path.isfile(headerfile): # check if header file exists
            libraries.append( libname )
    return libraries

def getCoreSourceFiles():
    # scan all *.c files
    srcs = glob.glob(PRK_CORE_DIR + '/*.c') + glob.glob(PRK_CORELIB_DIR + '/*.c')
    #for f in srcs:
    #    print f
    return srcs

def getIncludeDirs():
    dirs = [PRK_CORE_DIR, PRK_CORELIB_DIR]
    includes = []
    for d in dirs:
        includes.append('-I' + os.getcwd() + '/' + d)
    #print includes
    return includes

# output: { pass, [defines], [includes], [sources] }
# [sources] contains the path name of the parsed used code
def parseUserCode(userCode=None, outPath=None):
    
    # check if user code (e.g. test.phr) exists
    if not os.path.isfile(userCode): # file not found
        return False, [], [], []
    
    # create output directory, if not existing
    if not os.path.exists( outPath ):
        try:
            os.makedirs( outPath )
        except: # unable to create the directory
            return False, [], [], []
    
    # initial return values (empty)
    defines = ['-DHI_TECH_C'] # todo: compiler defines
    includes = []
    sources = []
    
    # create temporary (parsed) source file
    parsedUserCode = str(userCode)
    
    # check if extension is not yet *.c
    if parsedUserCode.lower().rfind('.c') <> len(parsedUserCode) - len('.c'):
        parsedUserCode = os.path.basename(parsedUserCode)
        dotpos = parsedUserCode.rfind('.')
        if dotpos > 0:
            parsedUserCode = parsedUserCode[:dotpos] + '.c'
        else:
            parsedUserCode += '.c'
        parsedUserCode = outPath + '/' + parsedUserCode
        sources.append( parsedUserCode ) # must be first on the list to be compiled
        try:
            fin = open(userCode, 'rb')
            fout = open(parsedUserCode, 'wb')
            fout.writelines( REQUIRED_INCLUDES )
            for line in fin.readlines():
                fout.write(line)
                if line.strip().find('#include') == 0: # found an '#include' directive
                    temp = line.strip()[len('#includes')-1 : ].strip()
                    header = temp[1:-1].strip() # get the header file
                    # print header
                    libpath = LIB_DIR + '/' + header[:-2]
                    # check the folder and the header file if they exist
                    if os.path.exists( libpath ) and os.path.isfile(libpath + '/' + header):
                        # print libpath
                        include = '-I' + libpath
                        if not (include in includes): # include only once
                            includes.append( include )
                            sources += glob.glob(libpath + '/*.c') # compile all *.c files
                            # print sources
            fin.close()
            fout.close()
        except: # unable to copy contents
            return False, [], [], []

    # lib core include paths and source files
    includes += getIncludeDirs()
    sources += getCoreSourceFiles()
    
    return True, defines, includes, sources

def getLibraryKeywords():

    # search header files
    header_files = glob.glob( PRK_CORE_DIR + '/*.h' )
    header_files += glob.glob( PRK_CORELIB_DIR + '/*.h' )
    # todo: add only if these were also 'included' by the user
    header_files += glob.glob( LIB_DIR + '/*/*.h' )
    #print header_files

    # parse header files with CParser
    parser = pyclibrary.CParser( header_files )
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
    print 'found %d keywords' %len(keywords)

    return keywords


