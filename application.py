#/usr/bin/env python
#coding = utf8

import os
import tornado.web
from tornado.web import url
from tornado.options import define, options

from view.index import IndexHandler
from view.about import AboutHandler
from view.cartoons import CatroonsHandler
from view.downloads import DownloadHandler,Download_wallpaperHandler,DetailsHandler
from view.movies import MoviesHandler
from view.admin.index import AdminHandler
from view.login import LoginHandler
from view.admin.upload import UploadHandler

class Application(tornado.web.Application):
    def __init__(self):
        handlers = [
                    (r'/',IndexHandler),
                    (r'/about',AboutHandler),
                    (r'/cartoons',CatroonsHandler),
                    (r'/movies',MoviesHandler),
                    (r'/downloads/emotions',DownloadHandler),
                    (r'/downloads/wallpaper',Download_wallpaperHandler),
                    (r'/downloads/details/([0-9Xx\-]+)',DetailsHandler),
                    (r'/admin',AdminHandler),
                    (r'/login',LoginHandler),
                    (r'/admin/upload',UploadHandler),

                    ]
        settings = dict(
                        template_path = os.path.join(os.path.dirname(__file__),"templates"),
                        static_path = os.path.join(os.path.dirname(__file__),"static"),
                        huhu_title='HuhuKingdom',
                        debug =True,
                        )
        tornado.web.Application.__init__(self, handlers, **settings)
      
  
application = Application()