FROM node

MAINTAINER Marko Bonaći "marko.bonaci@sematext.com"

ENV DEBIAN_FRONTEND noninteractive


RUN npm install logsene-cli@~1.0.8-alpha -g

RUN useradd ttyjs --password '*' --create-home
RUN chown ttyjs /home/ttyjs
USER ttyjs
EXPOSE 8080
WORKDIR /home/ttyjs


RUN npm install tty.js@~0.2.14-1
CMD ["node_modules/.bin/tty.js"]
