FROM node:14-buster-slim

WORKDIR /app

COPY package*.json ./

RUN npm cache clean --force

RUN npm install

COPY . .

CMD [ "node", "index.js" ]
