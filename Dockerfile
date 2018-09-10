FROM postgres:alpine


RUN mkdir -p /docker-entrypoint-initdb.d
RUN wget -O /docker-entrypoint-initdb.d/pg-sakila.sql https://raw.githubusercontent.com/jOOQ/jOOQ/master/jOOQ-examples/Sakila/postgres-sakila-db/postgres-sakila-schema.sql
RUN wget -O - https://raw.githubusercontent.com/jOOQ/jOOQ/master/jOOQ-examples/Sakila/postgres-sakila-db/postgres-sakila-data.sql >> /docker-entrypoint-initdb.d/pg-sakila.sql
RUN sed -i '/PROCEDURAL LANGUAGE plpgsql/d' /docker-entrypoint-initdb.d/pg-sakila.sql

