from getpass import getpass

import MySQLdb as mdb
import fill_db


mdp = getpass(prompt='Veuillez rentrer votre mot de passe mysql: ')
while(True):

    try :
        db = mdb.Connection(host='localhost', passwd=mdp, user='root', db='cassiopee', charset='utf8')
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
        break
    except (mdb._exceptions.IntegrityError, mdb._exceptions.OperationalError, mdb._exceptions.ProgrammingError) as e:
        if (e.args[0] == 1045):
            print("Mot de passe incorrect")
            print()
            mdp = getpass(prompt="Veuillez rentrer votre mot de passe mysql: ")
        elif (e.args[0] == 1049):
            print()
            print("Création de la base de donnée...")
            db = mdb.Connection(host='localhost', passwd=mdp, user='root', charset='utf8')
            db.cursor().execute('CREATE IF NOT EXISTS DATABASE cassiopee')
            print()
        else:
            raise(e)




print();print()
print("Base données créée, prête pour le traitement des données")
print("Veuillez exécuter application.py pour lancer l'application")
