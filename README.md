# Sakila DB on PostgreSQL for Docker

```shell
docker run --name sakila_db -p 5432:5432 -e POSTGRES_PASSWORD=pass -e POSTGRES_USER=myapp -d jlle/sakiladb
```

