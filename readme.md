# Module 164 Explication d'installation - GALMICHE Erwann INFO1B

- Pour commencer vous devez installer : 
    Laragon -> (https://laragon.org/download/)
    Python -> (https://www.python.org/downloads/)
    Pycharm -> (https://www.jetbrains.com/fr-fr/student/)
    
- Télécharger le fichier ZIP contenant le projet

- Une fois que vous avez tout installé, nous allons pouvoir commencer

- Lancez Pycharm. Cliquez sur GET FROM CVS, Dans "URL" mettez mon lien Github (https://github.com/S0ulSnip3r/) et sélectionnez un endroit où vous voulez le sauvegarde.

- Ouvrez le projet dans une nouvelle page et voila le projet lancé

- Lancer Laragon, appuyer sur "Start All" et ensuite sur "Database"

- Un fois la nouvelle page ouvert vous devez rentrer dans les champs vides :
    Type de réseau : MariaDB or MySQL (TCP/IP)
    Utilisateur : root
    Mot de passe : ne rien mettre
    Port : 3306 (Important)
    
- Après cette étape vous voila dans l'application

- Aller en haut à gauche dans l'onglet fichier, séléctionnez "Charger un fichier SQL" (aka le dump de mon projet) et ensuite il va s'ouvrir

- Une fois ouvert il faudra appuyer sur le bouton pour lancer la requête et raffraichir la page et voila la base de données a été crée.

- Revenez sur Pycharm et il faudra lancer (dans l'ordre donné si dessous) les fichiers suivants :
    1_ImportationDumpSql.py (APP_FILMS_164/database/)
    2_test_connection_bd.py (APP_FILMS_164/database/)
    run_mon_app.py (tout en bas)

- Une fois fait une invite de commande s'ouvrira à vous en vous donnant une adresse IP sur laquelle vous connectez : http://127.0.0.5005/

- Et voila vous avez réussi à importer ma base de données, amusez-vous bien !


































