#/usr/bin/env python
#coding = utf8

from tornado.web import RequestHandler

class IndexHandler(RequestHandler):
    def get(self):
        self.render('index.html')
    
