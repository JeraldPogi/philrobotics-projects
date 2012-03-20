
'''

@filename: firmwarelibs.py

'''

import os, glob

# library path
LIB_DIR = 'libraries'
# PhilRobokit Library
PRK_CORE_DIR = 'hardware/cores'
PRK_CORELIB_DIR = PRK_CORE_DIR + '/lib'
# required header file(s)
REQUIRED_INCLUDES = ['#include <PhilRobokit_Macro.h>']
# Library API keywords
KEYWORD_FILE = 'keywords.txt'

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
    defines = [] # todo: compiler defines
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
    keywords = []
    # search keyword files
    keyword_files = glob.glob(PRK_CORE_DIR + '/' + KEYWORD_FILE)
    keyword_files += glob.glob(PRK_CORELIB_DIR + '/' + KEYWORD_FILE)
    # todo: add only if these were also 'included' by the user
    keyword_files += glob.glob(LIB_DIR + '/*/' + KEYWORD_FILE)
    # parse these files
    for f in keyword_files:
        try:
            fin = open(f, 'r') # open for reading
            for line in fin.readlines():
                if line.strip(): # ignore blank lines
                    if line[0] <> '#': # ignore comments
                        keyword = line.split('\t')[0]
                        keywords.append(keyword)
            fin.close()
        except:
            print 'error in parsing: ', f
    #print keywords
    return keywords


