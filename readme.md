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

### Create Docker network
```bash
docker network create --gateway 172.16.18.1 --subnet 172.16.18.0/24 cfp_net
```

### Run docker-compose
```bash
docker-compose --env-file ./conf/.env up
```