FROM node:latest

MAINTAINER Audelio lujan

ENV NODE_ENV=production
ENV PORT=3000

COPY . /var/wwww

WORKDIR /var/wwww

RUN npm install

EXPOSE $PORT

ENTRYPOINT [ "npm", "start" ]
