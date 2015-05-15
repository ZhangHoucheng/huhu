# /usr/bin/env python
# coding=utf-8

import pymysql
from config import *
import hashlib
import time

db = pymysql.connect(database=dbname, 
                     user=user, 
                     password=password, 
                     host=host, 
                     port=db_port,
                     use_unicode=True, 
                     charset="utf8",
                     cursorclass = pymysql.cursors.DictCursor
                     )

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

def create_image(name,type = '',url='',description='',tag=''):
#     url = upload_dir + inname
    cur = db.cursor()
    current_time = time.strftime('%Y-%m-%d',time.localtime(time.time()))
    query = "insert into image (name,url,created_at,description,tag,type) \
    values('%s','%s','%s','%s','%s','%s')" % (name,url,current_time,description,tag,type)
    cur.execute(query)
    cur.close()
    db.commit()

def get_image(start, end,type='emotion'):
    cur = db.cursor()
    query = "select * from image where type = '"+type+"' limit "+start+","+end
    cur.execute(query)
#     images = []
#     for image in cur:
#         images.append(image)
    cur.close()
    return cur.fetchall()
    
def get_image_by_id(id):
    cur = db.cursor()
    query = "select * from image where id = '"+id+"' limit 1"
    cur.execute(query)
    return cur.fetchone()

if __name__ == '__main__':
#     create_image('huhu','emotion','a.gif','呼呼是个大笨猫','胖胖')
#     url = upload_dir+'a.gif';
#     images = get_image('0','20',"wallpaper")
    cur = get_image_by_id('18')
    print(cur)
#     print(images)
    
    
    
    