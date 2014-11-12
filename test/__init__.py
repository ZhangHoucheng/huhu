#!/usr/bin/env python
#coding=utf-8

from libriarys.db_connection import db
from  datetime  import  *  
import  time 
from config import *
import os

def insert_users():
    cur = db.cursor()
    for i in range(50):
        cur.execute('insert into users values(%s,%s,%s,%s,%s,%s,%s,%s)',
                    (i,'name_'+str(i),str(i)+('@aaa.com'),2*i,
                     datetime.fromtimestamp(time.time()),
                     datetime.fromtimestamp(time.time()),
                     '192.168.0.1'+str(i),'1'))
 
    db.commit()
    cur.close()
    db.close()

def insert_image():
    cur = db.cursor()
    for i in range(50):
        cur.execute('insert into image values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)',
                    (i,'name_'+str(i),'',datetime.fromtimestamp(time.time()),
                     i*i,i,'Long life the King!',200,200,'huhu'+str(i)+',cute'))
                    
    db.commit()
    cur.execute('select * from users')
    rows = cur.fetchall()  
    print(rows)
    cur.close()
    db.close()

def show_users():
    cur=db.cursor()
    cur.execute('select * from users')
    rows = cur.fetchall()  
    print(rows)
    cur.close()
    db.close()

def show_image():
    cur=db.cursor()
    cur.execute('select * from image')
    rows = cur.fetchall()  
    print(rows)
    cur.close()
    db.close()

if __name__ == '__main__':
    show_image()
#     list = os.listdir(upload_dir)
#     print (list)

