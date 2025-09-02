# Fallback Node version
ARG NODE_VERSION=22.18.0
# Fallback port for application within container
ARG CONTAINER_PORT=8080

FROM node:${NODE_VERSION}-alpine

WORKDIR /app

COPY package*.json .

RUN npm i

COPY . .

EXPOSE ${CONTAINER_PORT}
