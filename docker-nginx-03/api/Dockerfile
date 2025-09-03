FROM node:24.7.0-alpine3.22

RUN apk update && apk add curl

WORKDIR /app

COPY package*.json .

RUN npm ci

COPY . .

CMD ["node", "index.js"]
