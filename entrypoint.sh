#!/bin/sh

usermod -u $PUID nginx
groupmod -g $PGID www-data

chown -R nginx:www-data /data

htpasswd -b -c /tmp/htpasswd "$DAV_USER" "$DAV_PASSWORD"

nginx -g "daemon off;" 