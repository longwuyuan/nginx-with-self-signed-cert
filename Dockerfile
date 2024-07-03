FROM nginx:alpine

RUN apk add -u openssl
COPY 40-create-ssl-cert.sh /docker-entrypoint.d/40-create-ssl-cert.sh 
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 443
