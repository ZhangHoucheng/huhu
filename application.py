#/usr/bin/env python
#coding = utf8

import os
import tornado.web
from tornado.web import url
from tornado.options import define, options

from view.index import IndexHandler

class Application(tornado.web.Application):
    def __init__(self):
        handlers = [
                    (r'/',IndexHandler),
#                     (r'/about',about)
                    
                    ]
        settings = dict(
                        template_path = os.path.join(os.path.dirname(__file__),"templates"),
                        static_path = os.path.join(os.path.dirname(__file__),"static"),
                        huhu_title='HuhuKingdom',
                        debug =True,
                        )
        tornado.web.Application.__init__(self, handlers, **settings)
      
  
application = Application()