FROM node:alpine

RUN npm install -g http-server

ARG USERNAME
ENV USERNAME=${USERNAME}
ARG PASSWORD
env PASSWORD=${PASSWORD}


WORKDIR /data

EXPOSE 8080

ENTRYPOINT http-server --username "$USERNAME" --password "$PASSWORD"
