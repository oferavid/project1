FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y apache2
ADD ./index.html /var/www/html
ADD ./images /var/www/html/images
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
