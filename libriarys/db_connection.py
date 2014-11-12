#/usr/bin/env python
#coding = utf8

import psycopg2
from config import *

db = psycopg2.connect(database=dbname, user=user, password=password, host=host, port=db_port) 
