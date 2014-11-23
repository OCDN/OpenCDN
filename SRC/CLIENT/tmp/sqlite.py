#!/usr/bin/env python

import sqlite3

conn = sqlite3.connect("/Users/jelope/Adm/openCDN/SRC/CLIENT/data/database/traffic.db")
sqlite3.isolation_level = None
db = conn.cursor()

sql = "select * from data"
db.execute(sql)
res = db.fetchall()
print res
