# /usr/bin/env python
# coding=utf-8

import pymysql
from config import *
import hashlib
import time
# import image
# import socket

db = pymysql.connect(database=dbname, user=user, password=password, host=host, port=db_port,use_unicode=True, charset="utf8")

def create_user(name,email,password,client_ip,status ="1"):
    cur = db.cursor()
    current_time = time.strftime('%Y-%m-%d',time.localtime(time.time()))
    m = hashlib.md5()
    m.update(password.encode('utf-8'))
    password = m.hexdigest()
#     myname = socket.getfqdn(socket.gethostname())
#     client_ip = str(socket.gethostbyname(myname))
    query = "insert into users (name,email,password,last_time,last_ip,status) \
    values('%s','%s','%s','%s','%s','%s')" % (name,email,password,current_time,client_ip,status)
    cur.execute(query)
    cur.close()
    db.commit()
    db.close()

def create_image(name,url,description='',tag='',type = ''):
#     url = upload_dir + inname
    cur = db.cursor()
    current_time = time.strftime('%Y-%m-%d',time.localtime(time.time()))
    query = "insert into image (name,url,created_at,description,tag,type) \
    values('%s','%s','%s','%s','%s','%s')" % (name,url,current_time,description,tag,type)
    cur.execute(query)
    cur.close()
    db.commit()
    db.close()

if __name__ == '__main__':
#     create_image('huhu','a.gif','呼呼是个大笨猫','胖胖','emotion')
    url = upload_dir+'a.gif';
    print(url)
    
    
    
    
    