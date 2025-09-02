FROM nginx:stable-alpine3.21-perl

RUN rm -rf /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf
COPY public /usr/share/nginx/app
