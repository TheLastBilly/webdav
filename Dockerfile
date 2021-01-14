FROM alpine:latest

LABEL maintainer="Jose Ricardo jtmonegro@gmail.com"

ENV DAV_USER="admin"
ENV DAV_PASSWORD="password"

ENV PUID=1001
ENV PGID=1001

RUN apk add --no-cache \
        nginx \
        nginx-mod-http-dav-ext \
        shadow \
        apache2-utils
RUN rm -rf /tmp/* /var/cache/apk/* /var/tmp/*

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /run/nginx/

RUN mkdir /data

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]