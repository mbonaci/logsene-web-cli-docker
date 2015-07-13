FROM node:0.12.7
MAINTAINER Marko Bonaći "marko.bonaci@sematext.com"

ENV DEBIAN_FRONTEND noninteractive

RUN useradd ttyjs --password '*' --create-home
RUN chown ttyjs /home/ttyjs
USER ttyjs
EXPOSE 8080
WORKDIR /home/ttyjs


RUN npm install logsene-cli@^1.0.8-alpha -g
RUN npm install tty.js
CMD ["node_modules/.bin/tty.js"]
