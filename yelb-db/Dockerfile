FROM postgres:11.0
MAINTAINER massimo@it20.info

WORKDIR /

COPY init-yelb-db.sh /docker-entrypoint-initdb.d/init-yelb-db.sh

ENV POSTGRES_PASSWORD=yelbdbpassword
ENV POSTGRES_USER=yelbdbuser


