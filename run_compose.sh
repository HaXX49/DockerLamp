#!/bin/sh
# Pile LAMP - Docker Compose
# Yann Debly 2020

echo "La page se trouve à localhost\:4444/index.php"
docker-compose --env-file ./config/.env up --build