FROM node:14-alpine

LABEL maintenance="abodjialassani@gmail.com"

WORKDIR '/app'

COPY ./package.json .

RUN npm install

COPY . .

CMD [ "npm","run", "start" ]