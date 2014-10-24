#/usr/bin/env python
#coding = utf8

import psycopg2
from config import *

conn = psycopg2.connect(database=db, user=user, password=password, host=host, port=db_port) 
cur = conn.cursor()

