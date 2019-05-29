import MySQLdb as mdb
import pandas as pd
import pandas.io.sql as psql
import matplotlib.pyplot as plt
import tkinter

def list():
    print()
    print('Voici la liste des graphes disponibles: ')
    print("1. Premier graphe un peu nul pour l'instant")
    print("2. Répartition des advisories par secteurs")
    print("3. Nombre de CVE par ICS-CERT")


def autolabel(rects, xpos='center'):
    """
    Attach a text label above each bar in *rects*, displaying its height.

    *xpos* indicates which side to place the text w.r.t. the center of
    the bar. It can be one of the following {'center', 'right', 'left'}.
    """

    ha = {'center': 'center', 'right': 'left', 'left': 'right'}
    offset = {'center': 0, 'right': 1, 'left': -1}

    for rect in rects:
        height = rect.get_height()
        ax.annotate('{}'.format(height),
                    xy=(rect.get_x() + rect.get_width() / 2, height),
                    xytext=(offset[xpos] * 3, 3),  # use 3 points offset
                    textcoords="offset points",  # in both directions
                    ha=ha[xpos], va='bottom')

def graph(i, mdp):
    db = mdb.Connection(host='localhost', db='cassiopee', passwd=mdp, user='root', charset='utf8')



    if(i == '1'):
        query = "select date_creation FROM cve"

        # Envoie resultat query dans un dataframe pandas
        df = psql.read_sql(query, con=db)

        # Convertit les string en dates numériques
        df['date_creation'] = df['date_creation'].astype('datetime64[ns]')

        # Crée une colonne qui compte le nombre de CVE par date
        df['count'] = df.date_creation.map(df.groupby('date_creation').size())

        df.plot(x='date_creation')
        plt.show()

    if(i == '2'):
        query_sector = "select * from sector_instances"

        df_sector = psql.read_sql(query_sector, con=db)

        df_sector.plot(x='sname',
                       y='quantity',
                       kind='bar',
                       title='Number of products per sector'
                       )
        plt.show()

    if(i == '3'):
        query_sector = "select * from icscert_instances"

        df_sector = psql.read_sql(query_sector, con=db)

        df_sector.plot(x='icscert',
                       y='quantity',
                       kind='bar',
                       title='Number of CVE per ICSCERT'
                       )

        plt.show()
