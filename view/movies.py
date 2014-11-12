#/usr/bin/env python
#coding = utf8

from tornado.web import RequestHandler
from config import upload_dir
import os, sys

class MoviesHandler(RequestHandler):
    def get(self):
        list = os.listdir(upload_dir)
        self.render('movies.html',list=list[:4])
