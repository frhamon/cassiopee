import MySQLdb as mdb
import fill_db
import make_graph
from getpass import getpass
import os
import click
from Advisory import Advisory

mdp = getpass(prompt="Veuillez rentrer votre mot de passe mysql: ")


while(True):

    try :
        for i in range(20,25):
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
print('Pour exporter un graphe au format .csv, tapez \'csv\' après le numéro du graphe que vous avez choisi.')
print("Pour quitter, tapez 'quit' ")
print();print()

while True:
    print()
    csv = ''
    command_list = input("Tapez votre commande: ").split()

    if len(command_list) == 0:
        print('Vous n\'avez pas donné d\'arguments.')
    else:
        cmd = command_list[0]
        if len(command_list) >= 2:
            csv = command_list[1]
    if len(command_list) > 2:
        print('Vous avez donné trop d\'arguments. Seuls les deux premiers ont été pris en compte.')

    if(cmd == 'quit'):
        break
    elif cmd == 'list':
        make_graph.list()
    else:
        make_graph.graph(cmd,mdp,csv)
