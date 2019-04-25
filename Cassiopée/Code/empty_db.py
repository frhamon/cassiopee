import MySQLdb as mdb

db = mdb.Connection(host='localhost', db='cassiopee', passwd='clochette', user='root')

c = db.cursor()

c.execute(""" delete from icscert """)
c.execute(""" delete from product """)
c.execute(""" delete from vendor """)
c.execute(""" delete from sector """)
c.execute(""" delete from cve """)
c.execute(""" delete from cvss """)
c.execute(""" delete from cwe """)
c.execute(""" delete from sfp2 """)
c.execute(""" delete from sfp1 """)

db.commit()
c.close()
db.close()
