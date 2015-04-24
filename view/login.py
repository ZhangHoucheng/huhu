#/usr/bin/env python
#coding=utf-8

from tornado.web import RequestHandler

class LoginHandler(RequestHandler):
    def get(self):
        self.render('login.html')