FROM mhart/alpine-node:12

WORKDIR /usr/app

RUN apk update
RUN apk add nano
RUN apk add git
RUN apk add nginx

# https://github.com/gliderlabs/docker-alpine/issues/185
RUN mkdir -p /run/nginx
RUN mkdir -p /usr/app/nginx_logs
RUN mkdir -p /var/tmp/nginx/client_body

RUN npm i -g envsub

ENV NODE_ENV production
