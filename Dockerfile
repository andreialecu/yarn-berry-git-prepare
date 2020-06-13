FROM node:13-alpine as build
WORKDIR /usr/src/app

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

ADD ./ ./
  
RUN yarn install --immutable
