FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm i --legacy-peer-deps

RUN npm install

RUN npm ci 

COPY . .

EXPOSE 3000

CMD [ "npx", "turbo", "serve" ]
