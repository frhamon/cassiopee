import MySQLdb as mdb
import empty_db
import Main
import make_graph


mdp = input("Veuillez rentrer votre mot de passe mysql: ")
while(True):
    #empty_db.empty(mdp)

    try :
        Main.main(mdp)
    except (mdb._exceptions.IntegrityError, mdb._exceptions.OperationalError, mdb._exceptions.ProgrammingError) as e:
        if (e.args[0] == 1045):
            print("Mot de passe incorrect")
            print()
            mdp = input("Veuillez rentrer votre mot de passe mysql: ")
        elif (e.args[0] == 1049):
            print()
            print("Création de la base de donnée et de son schéma...")
            db = mdb.Connection(host='localhost', passwd=mdp, user='root', charset='utf8')
            db.cursor().execute('CREATE DATABASE cassiopee')

            db = mdb.Connection(host='localhost', passwd='mathaouiz09', user='root', db='cassiopee', charset='utf8')
            cursor = db.cursor()

            fd = open("../Modélisation/cassiopee.sql", 'r')
            sqlFile = fd.read()
            fd.close()

            # all SQL commands (split on ';')
            sqlCommands = sqlFile.split(';')

            # Execute every command from the input file
            for command in sqlCommands:
                # This will skip and report errors
                # For example, if the tables do not yet exist, this will skip over
                # the DROP TABLE commands
                if command.rstrip() != '':
                    cursor.execute(command)
            print("Base de données créée, prête à être remplie")
            print()
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
print("Pour afficher un graphe, tapez 'graph i' avec i le numero du graphe")
print("Pour réafficher la liste des graphes, tapez 'list' ")
print("Pour quitter, tapez 'quit' ")
print();print()

while(True):
    cmd = input("Tapez votre commande: ")
    if(cmd == 'graph 1'):
        make_graph.graph(mdp)
    elif(cmd == 'quit'):
        break

