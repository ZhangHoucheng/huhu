#/usr/bin/env python
#coding = utf8

from tornado.web import RequestHandler
from config import upload_dir
import os, sys

class UploadHandler(RequestHandler):
    def get(self):
        list = os.listdir(upload_dir)
        self.render('admin/upload.html',list=list[:4])
        
#     def post(self):
#         upload_path=os.path.join(os.path.dirname(__file__),'files')  #�ļ����ݴ�·��
#         file_metas=self.request.files['file']    #��ȡ���С�name��Ϊ��file�����ļ�Ԫ����
#         for meta in file_metas:
#             filename=meta['filename']
#             filepath=os.path.join(upload_path,filename)
#             with open(filepath,'wb') as up:      #��Щ�ļ���Ҫ�Ѷ����Ƶ���ʽ�洢��ʵ���п��Ը���
#                 up.write(meta['body'])
#             self.write('finished!')
