FROM node:18-alpine

WORKDIR /app

COPY app/package.json ./

RUN npm install

COPY app/ .

RUN mkdir /data

EXPOSE 3000

CMD ["node", "server.js"]
