import MySQLdb as mdb

print("Connecting to database using MySQLdb")

db = mdb.connect(host='localhost',
                                db='cassiopee',
                                user='root',
                                passwd='clochette')

print("Succesfully Connected to database using MySQLdb!")

c = db.cursor()

c.execute(""" insert into sector values(default , 'nom de secteur') """)

db.commit()
print("Data have been sent to the Database!")

c.close()

db.close()

print("Connection closed")
