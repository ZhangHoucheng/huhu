#/usr/bin/env python
#coding = utf8

from tornado.web import RequestHandler
from config import upload_dir
import os, sys

class AboutHandler(RequestHandler):
    def get(self):
        list = os.listdir(upload_dir)
        self.render('about.html',list=list[:4])
