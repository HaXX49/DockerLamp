docker run -e MYSQL_ROOT_PASSWORD=<network -e MYSQL_DATABASE=test --name mariadb -v "$PWD/database":/var/lib/mysql -d mariadb:latest