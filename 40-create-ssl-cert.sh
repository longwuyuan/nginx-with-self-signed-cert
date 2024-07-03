#!/bin/sh
# vim:sw=4:ts=4:et
#

openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 \
	-nodes -keyout /etc/nginx/dev.mydomain.com.key -out /etc/nginx/dev.mydomain.com.crt -subj "/CN=dev.mydomain.com" \
	-addext "subjectAltName=DNS:dev.mydomain.com,DNS:*.dev.mydomain.com"
