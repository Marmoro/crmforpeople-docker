#!bin/sh
echo "Starting docker-compose\n"
docker-compose build --no-cache backend
docker-compose build --no-cache frontend
docker-compose --env-file ./conf/.env up