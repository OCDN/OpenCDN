#!/usr/bin/env python

import sqlite3

cx = sqlite3.connect("/Users/jelope/Adm/openCDN/SRC/CLIENT/data/database/traffic.db")
sqlite3.isolation_level = None

f = open("/Users/jelope/Adm/openCDN/SRC/CLIENT/init/sql/traffic.sql", 'r')
get = f.read()