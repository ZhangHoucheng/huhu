#/usr/bin/env python
#coding = utf8

from tornado.web import RequestHandler
from config import upload_dir
import os, sys

class ExpressionsHandler(RequestHandler):
    def get(self):
        list = os.listdir(upload_dir)
        self.render('expressions.html',list=list[:4])
