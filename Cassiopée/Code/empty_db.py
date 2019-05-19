import MySQLdb as mdb


db = mdb.Connection(host='localhost', db='cassiopee', passwd='mathaouiz09', user='root')

c = db.cursor()

c.execute(""" delete from icscert_cve """)
c.execute(""" delete from icscert_product """)
c.execute(""" delete from product_countries """)
c.execute(""" delete from product_sector """)
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
