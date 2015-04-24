#/usr/bin/env python
#coding = utf8

from tornado.web import RequestHandler
from config import upload_dir
import os, sys

class DownloadHandler(RequestHandler):
    def get(self):
        list = os.listdir(upload_dir)
        self.render('downloads.html',list=list)
        
class DetailsHandler(RequestHandler):
    def get(self,id=None,type='emotion'):
        image=['id','type']
        self.render('details.html',list=image)

class Download_wallpaperHandler(RequestHandler):
    def get(self):
        list = os.listdir(upload_dir)
        self.render('downloads.html',list = list)