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
        upload_path=os.path.join(upload_dir,type)  #文件的暂存路径
        file_metas=self.request.files['file']    #提取表单中‘name’为‘file’的文件元数据
        for meta in file_metas:
            filename=meta['filename']
            inname = commonfunction.random_str(8)+filename
            filepath=os.path.join(upload_path,inname)
            with open(filepath,'wb') as up:      #有些文件需要已二进制的形式存储，实际中可以更改
                up.write(meta['body'])
#             innerpath = filepath.replace('\\' ,'|')
            db_connection.create_image(filename,type, inname, description, tag)
#             self.write('finished!')
        tips = "upload succeeded!"
        self.render('admin/upload.html' ,tips=tips)
