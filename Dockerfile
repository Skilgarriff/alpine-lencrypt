FROM alpine:latest

MAINTAINER Sean Kilgarriff <seanpkilgarriff@gmail.com>

#Install the dependencies for let's encrypt.
RUN apk add --update --no-cache openssl curl sed grep git bc

#Install the Let's Encrypt Client.
RUN git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
