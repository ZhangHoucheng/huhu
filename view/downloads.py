#/usr/bin/env python
#coding = utf8

from tornado.web import RequestHandler
from config import upload_dir
import os, sys
from libriarys import db_connection

class DownloadHandler(RequestHandler):
    def get(self):
        list = db_connection.get_image("0", "9", "emotion")
        self.render('downloads.html',list=list)
        
class DetailsHandler(RequestHandler):
    def get(self,id=None,type='emotion'):
        image = db_connection.get_image_by_id(id)
        self.render('details.html',image=image)

class Download_wallpaperHandler(RequestHandler):
    def get(self):
        image = db_connection.get_image("0", "9", "wallpaper")
        self.render('downloads.html',list = image)