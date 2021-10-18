FROM caddy:2-alpine

COPY ./entrypoint.sh /entrypoint.sh
COPY ./Caddyfile /etc/caddy/Caddyfile

RUN apk add wireguard-tools
RUN apk add iptables
RUN apk add ip6tables

ENTRYPOINT [ "/entrypoint.sh" ]