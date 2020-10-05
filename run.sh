#!/bin/bash
#Pile LAMP - Dockerfiles

#Chaque commande contient --network pour lier ces machines sur le même réseau afin de connecter les conteneurs ensemble et d'établir la communication (link étant une commmande deprecated)
#La commande pour la BDD continent le passage par l'option -e de variables type DB, mdp, etc
#On bind aussi par -v un dossier afin d'assurer de la persistance. La version finale devrait fonctionner sur des volumes Docker

docker run -d --network backend -e MYSQL_ROOT_PASSWORD=N3tw0rk! -e MYSQL_DATABASE=testdb -e TZ="Europe/Rome" -e MYSQL_ALLOW_EMPTY_PASSWORD=no -e MYSQL_USER=testuser -e MYSQL_PASSWORD=testpassword --name mariadb -v $PWD/database:/var/lib/mysql -d mariadb:10.5.5

docker run -d --network backend -p 4444:80 -v website:/var/www/localhost/htdocs --name webserver_cont webserver