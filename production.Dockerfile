FROM node:alpine as main
ARG service
ARG version
RUN echo "service $service:$version"
WORKDIR /var/www/html
RUN npm install -g http-server
COPY ./package*.json ./
RUN npm install --silent
COPY ./ ./