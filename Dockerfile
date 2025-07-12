FROM nginx:stable-alpine-slim

RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
COPY writeups/ /usr/share/nginx/html/writeups/
COPY images/ /usr/share/nginx/html/images/

RUN rm /etc/nginx/conf.d/*
COPY nginx/default.conf /etc/nginx/conf.d/