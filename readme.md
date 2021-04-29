### clone backend and frontend into current directory
```bash
git clone https://github.com/Marmoro/crmforpeople-app.git -b apr-22 backend &&
git clone https://github.com/Marmoro/crmforpeople-web -b apr-22 frontend
```

### [DESTRUCTIVE COMMANDS] Remove all existing containers and images
```bash
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
```

### Run docker-compose
```bash
docker-compose --env-file ./conf/.env up
```