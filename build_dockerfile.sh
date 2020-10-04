#!/bin/bash
# Dockerfile Builder

#Création du réseau pour relier les différents services
docker network create backend
docker build -t webserver webserver