FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm i --legacy-peer-deps

RUN npm install

RUN npm ci 

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]

sudo docker build -t nodeV1 .

sudo docker run -p 3000:3000 nodeV1

