#!/usr/bin/env python
# encoding: utf-8

import os

#database config
# host = 'localhost'
host = '192.168.27.196'
db_port = '5432'
user = 'postgres'
dbname = 'huhu'
password = 'postgres'

if os.name == 'nt':
    upload_dir = os.getcwd()+"\\static\\image\\upload\\"
else:
    upload_dir = os.getcwd()+"/static/image/upload/"
