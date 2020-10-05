#Prendre une version stable
FROM alpine:3.12

#Métadonnée
LABEL maintainer="Yann DEBLY"

#Exposition du port 80 pour se connecter au site
EXPOSE 80

#Installation d'Apache, PHP, et connecteur MySQL
RUN apk update && \
    apk add apache2 php-apache2 php-mysqli php-json

#Commande lancée au démarrage de la VM, PID 1
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]