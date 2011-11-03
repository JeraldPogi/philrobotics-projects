#!/bin/bash

python setup_linux.py build

# todo: add 'atexit' module in the package
cp /usr/lib/python2.7/atexit.py ./build/exe.linux-x86_64-2.7/atexit.py
