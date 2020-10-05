#!/bin/bash
# Dockerfile Builder

#Création du réseau pour relier les différents services
docker network create backend

#On construit la machine apache/PHP
docker build -t webserver webserver