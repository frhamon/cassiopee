import MySQLdb as mdb
import fill_db
import make_graph
from getpass import getpass
import os


mdp = getpass(prompt="Veuillez rentrer votre mot de passe mysql: ")
while(True):

    try :
        for i in range(2,10):
            fill_db.fill(mdp,i)
            p = os.system('mysqldump -u root -p"mathaouiz09" cassiopee -r ../Modélisation/cassiopee.sql')
    except (mdb._exceptions.IntegrityError, mdb._exceptions.OperationalError, mdb._exceptions.ProgrammingError) as e:
        if (e.args[0] == 1045):
            print("Mot de passe incorrect")
            print()
            mdp = getpass(prompt="Veuillez rentrer votre mot de passe mysql: ")
        elif(e.args[0] == 1062):
            print()
            print()
            print("La base de données est à jour")
            break
        else:
            raise(e)




make_graph.list()
print()
print("Pour afficher un graphe, tapez 'i' avec i le numero du graphe")
print("Pour réafficher la liste des graphes, tapez 'list' ")
print("Pour quitter, tapez 'quit' ")
print();print()

while True:
    print()
    cmd = input("Tapez votre commande: ")
    if(cmd == 'quit'):
        break
    elif cmd == 'list':
        make_graph.list()
    else:
        make_graph.graph(cmd,mdp)
