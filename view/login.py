#/usr/bin/env python
#coding=utf-8

from tornado.web import RequestHandler
from config import upload_dir
import os

class LoginHandler(RequestHandler):
    def get(self):
        self.render('login.html')
        
    def post(self,id=None):
        email = self.get_argument('email')
        passwd = self.get_argument('password')

        list = os.listdir(upload_dir)
        self.render('index.html',list=list[:4])