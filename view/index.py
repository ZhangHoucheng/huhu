#/usr/bin/env python
#coding = utf8

from tornado.web import RequestHandler
from config import upload_dir
import os, sys

class IndexHandler(RequestHandler):
    def get(self):
        list = os.listdir(upload_dir)
        self.render('index.html',list=list)
