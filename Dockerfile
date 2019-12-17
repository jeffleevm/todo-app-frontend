FROM nginx:1.15.8-alpine

## Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

COPY dist/*  /usr/share/nginx/html/
