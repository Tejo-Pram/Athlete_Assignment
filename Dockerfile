FROM node:latest

WORKDIR /usr/src/app

ADD package.json /usr/src/app/package.json

RUN npm install

ADD . /usr/src/app

EXPOSE 8081

CMD [ "node", "server.js" ]