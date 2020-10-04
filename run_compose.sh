#!/bin/sh
# LAMP et Wordpress
# Yann Debly 2020

#On récupère Wordpress si ce n'est pas déjà fait
#if [ -d "./wordpress" ]; then
    #echo "Getting Wordpress ..."
   # sudo wget https://fr.wordpress.org/latest-fr_FR.tar.gz
  #  echo "Extracting Wordpress ..."
 #   sudo tar -xvf *.tar.gz
#fi
echo "Starting services ..."
sudo docker-compose up -d --build