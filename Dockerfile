FROM ubuntu:20.04
RUN apt update && apt install -y apache2
ADD ./index.html /var/www/html
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
