from getpass import getpass

import MySQLdb as mdb
import fill_db
import make_graph


mdp = getpass(prompt="Veuillez rentrer votre mot de passe mysql: ")
while(True):

    try :
        fill_db.fill(mdp)
    except (mdb._exceptions.IntegrityError, mdb._exceptions.OperationalError, mdb._exceptions.ProgrammingError) as e:
        if (e.args[0] == 1045):
            print("Mot de passe incorrect")
            print()
            mdp = input("Veuillez rentrer votre mot de passe mysql: ")
        elif(e.args[0] == 1062):
            print()
            print()
            print("La base de données est à jour")
            print()
            break
        else:
            raise(e)




print("Voici la liste des graphes disponibles: ")
print("1. Premier graphe")
print()
print("Pour afficher un graphe, tapez 'i' avec i le numero du graphe")
print("Pour réafficher la liste des graphes, tapez 'list' ")
print("Pour quitter, tapez 'quit' ")
print();print()

while(True):
    print()
    cmd = input("Tapez votre commande: ")
    if(cmd == 1):
        make_graph.graph(mdp)
    elif(cmd == 'quit'):
        break
