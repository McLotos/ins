FROM node:alpine
ARG service
ARG version
RUN echo "service $service:$version"
RUN npm install -g nodemon
COPY ./package*.json ./
RUN npm install
COPY . .
VOLUME ["/var/www/html"]