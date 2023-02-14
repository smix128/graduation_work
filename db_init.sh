#!/bin/bash

export YA_POSTGRESQL_CLUSTER_ID=$(yc managed-postgresql cluster get --name $YA_POSTGRESQL_CLUSTER_NAME | head -n1 | awk '{print $2}')

psql -a postgresql://${PSQL_DBUSER}:${PSQL_DBPASSWORD}@c-${YA_POSTGRESQL_CLUSTER_ID}.rw.mdb.yandexcloud.net:6432/${PSQL_DB}?sslmode=require -c "CREATE TABLE restaurants (name char(30), count integer, PRIMARY KEY (name));"
psql -a postgresql://${PSQL_DBUSER}:${PSQL_DBPASSWORD}@c-${YA_POSTGRESQL_CLUSTER_ID}.rw.mdb.yandexcloud.net:6432/${PSQL_DB}?sslmode=require -c "INSERT INTO restaurants (name, count) VALUES ('outback', 0);"
psql -a postgresql://${PSQL_DBUSER}:${PSQL_DBPASSWORD}@c-${YA_POSTGRESQL_CLUSTER_ID}.rw.mdb.yandexcloud.net:6432/${PSQL_DB}?sslmode=require -c "INSERT INTO restaurants (name, count) VALUES ('bucadibeppo', 0);"
psql -a postgresql://${PSQL_DBUSER}:${PSQL_DBPASSWORD}@c-${YA_POSTGRESQL_CLUSTER_ID}.rw.mdb.yandexcloud.net:6432/${PSQL_DB}?sslmode=require -c "INSERT INTO restaurants (name, count) VALUES ('chipotle', 0);"
psql -a postgresql://${PSQL_DBUSER}:${PSQL_DBPASSWORD}@c-${YA_POSTGRESQL_CLUSTER_ID}.rw.mdb.yandexcloud.net:6432/${PSQL_DB}?sslmode=require -c "INSERT INTO restaurants (name, count) VALUES ('ihop', 0);"