FROM nginx:mainline-alpine

ENV TZ America/Sao_Paulo

RUN apk add --no-cache certbot openssl \
	&& echo '0 1 * * 6 /usr/bin/certbot renew --no-self-upgrade && /usr/sbin/nginx -s reload' >> /etc/crontabs/root
