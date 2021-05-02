# Check out https://hub.docker.com/_/node to select a new base image
FROM node:14-slim

RUN npm install -g @angular/cli

RUN apt-get update && apt-get install git -y

# RUN cd /frontend && git reset --hard HEAD && git pull

RUN git clone https://github.com/Marmoro/crmforpeople-web -b apr-22 frontend

# Create app directory (with user `node`)

WORKDIR /frontend


# Install app dependencies
RUN npm install @angular/cli -s
RUN npm install -s

# Run ng build
RUN node_modules/@angular/cli/bin/ng build

CMD [ "node", "server.js" ]