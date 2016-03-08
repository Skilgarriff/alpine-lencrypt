FROM alpine:latest

MAINTAINER Sean Kilgarriff <seanpkilgarriff@gmail.com>

#Install the dependencies for let's encrypt.
RUN apk add --update --no-cache letsencrypt

COPY renewal /var/spool/cron/crontabs/renewal

CMD letsencrypt certonly

CMD crond -f
