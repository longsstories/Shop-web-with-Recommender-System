from unidecode import unidecode
import sqlite3
from sqlite3 import Error

def create_connection(db_file):
  conn = None
  try:
      conn = sqlite3.connect(db_file)
  except Error as e:
      print(e)
  return conn

database='E:\Folders\longworkspace\Shop-web-with-Recommender-System\database.db'
conn=create_connection(database)
c = conn.cursor()

c.execute("select id from hanghoa")
ids=c.fetchall()

for id in ids:
   c.execute("select name from hanghoa where id="+str(id[0]))
   name=c.fetchone()
   unaccented_name=unidecode(name[0])
   c.execute('update hanghoa set name_unaccented="'+unaccented_name+'" where id='+str(id[0]))
   conn.commit()

