#!/usr/bin/env python
# coding:utf-8
# author: lh

import os, sys, unicodedata

def nfd2nfc(filepath):
    with open(filepath, 'r') as fin:
        pic = fin.read()
        pic = unicodedata.normalize('NFC', pic)
        with open(filepath, 'w') as fout:
            fout.write(pic)

if len(sys.argv) == 1:
    print("Need args!")
    exit(1)

dir = sys.argv[1]

for parent, dirnames, filenames in os.walk(dir):
    for filename in filenames:
        nfd2nfc(os.path.join(parent, filename))


