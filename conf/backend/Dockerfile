# Check out https://hub.docker.com/_/node to select a new base image
FROM node:14-slim

RUN npm install -g @angular/cli

RUN apt-get update && apt-get install git -y

# RUN cd /backend && git reset --hard HEAD && git pull

RUN git clone https://github.com/Marmoro/crmforpeople-app -b apr-22 backend


# Create app directory (with user `node`)

WORKDIR /backend

RUN npm install -s
RUN npm run build

CMD [ "node", "dist/main" ]
