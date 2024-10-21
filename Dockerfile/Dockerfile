FROM node:16-alpine

WORKDIR /usr

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]