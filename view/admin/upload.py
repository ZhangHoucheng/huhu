#/usr/bin/env python
#coding = utf8

from tornado.web import RequestHandler
from config import upload_dir
import os
from libriarys import db_connection
from libriarys import commonfunction

class UploadHandler(RequestHandler):
    def get(self):
#         list = os.listdir(upload_dir)
        tips = ''
        self.render('admin/upload.html',tips=tips)

    def post(self):
        type = self.get_argument('type')
        description = self.get_argument('desc')
        tag = self.get_argument('tag')
        upload_path=os.path.join(upload_dir,type)
        file_metas=self.request.files['file']
        for meta in file_metas:
            filename=meta['filename']
            inname = commonfunction.random_str(8)+filename
            filepath=os.path.join(upload_path,inname)
            with open(filepath,'wb') as up:
                up.write(meta['body'])
#             innerpath = filepath.replace('\\' ,'|')
            db_connection.create_image(filename,type, inname, description, tag)
#             self.write('finished!')
        tips = "upload succeeded!"
        self.render('admin/upload.html' ,tips=tips)
