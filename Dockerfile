# Jordy Alexander Vega Aldana 1190-18-9769

FROM ubuntu:latest

RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone

RUN apt-get update && apt-get install -y tzdata

RUN apt-get -y install apache2

EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND

# Los siguientes son los comandos utilizados para construirlo.

# docker build -t apacheserver.

# docker build -t dockerumg .

# sudo docker run -d -p 8085:80 dockerumg
