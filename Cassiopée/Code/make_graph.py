import MySQLdb as mdb
import pandas as pd
import pandas.io.sql as psql
import matplotlib.pyplot as plt
import tkinter

db = mdb.Connection(host='localhost', db='cassiopee', passwd='clochette', user='root', charset='utf8')

query = "select date FROM cve"

# Envoie resultat query dans un dataframe pandas
df = psql.read_sql(query, con=db)

# Convertit les string en dates numériques
df['date'] = df['date'].astype('datetime64[ns]')

# Crée une colonne qui compte le nombre de CVE par date
df['count'] = df.date.map(df.groupby('date').size())

print(df)

df.plot(x='date')
plt.show()