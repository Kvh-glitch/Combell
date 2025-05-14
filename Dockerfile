FROM ubuntu:latest

RUN apt update
RUN apt install -y apache2

RUN date -u > /var/www/html/buildtime.txt

COPY html/ /var/www/html/

EXPOSE 80

CMD apache2ctl -D FOREGROUND