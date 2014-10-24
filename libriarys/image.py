#!/usr/bin/env python
#coding=utf8

import os, sys

def GetImageFile(path):
    list = os.listdir(path)
    fielnum = 0
    for line in list:
        filepath = os.path.join(path,line)
        if os.path.isdir(filepath):
            pass
        elif os.path:
            fielnum = fielnum + 1
            print line
    return list

def GetPicInfo(file):
    print file

if __name__ == "__main__":
    image = GetImageFile(os.getcwd()+"\\..\\static\\image\\upload\\")
    print image
