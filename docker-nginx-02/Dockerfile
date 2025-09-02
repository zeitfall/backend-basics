FROM nginx:stable-alpine3.21-perl

RUN apk add --no-cache openssl

RUN mkdir /etc/nginx/ssl && \
    cd /etc/nginx/ssl && \
    openssl req -x509 -nodes -newkey rsa:2048 \
        -keyout localhost.key \
        -out localhost.crt \
        -subj "/C=UA/ST=Kyiv/L=Kyiv/O=docker-nginx-03/OU=Developer/CN=localhost" \
        -days 365

COPY /default.conf /etc/nginx/conf.d/default.conf
