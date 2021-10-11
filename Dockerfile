# base image
FROM node:14.17.5-alpine

# create app dir
WORKDIR /usr/app

# install deps
COPY package.json .
RUN npm install

# copy all
COPY . .

# build project
RUN npm run build
