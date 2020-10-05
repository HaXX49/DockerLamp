#Prendre une version stable
FROM alpine:3.12

#Métadonnée
LABEL maintainer="Yann DEBLY"

#Exposition du port 80 pour se connecter au site
EXPOSE 80

#On intègre l'application de test de connection à la DB:
ADD ./WebFiles/index.php /var/www/localhost/htdocs/index.php
#Installation d'Apache, PHP, et connecteur MySQL
RUN apk update && \
    apk add apache2 php-apache2 php-mysqli php-json && \
    echo "DirectoryIndex index.php" > /var/www/localhost/htdocs/.htaccess

#Commande lancée au démarrage de la VM, PID 1
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]