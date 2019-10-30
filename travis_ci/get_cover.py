#!/usr/bin/env python
# coding:utf-8
# author: lh

import sys, json

dir, song = sys.argv[1:]

data = \


cover = data[dir]["cover"]
if song in data[dir]["items"].keys() and len(data[dir]["items"][song]) > 0:
    cover = data[dir]["items"][song]
print(cover)


