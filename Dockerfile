FROM alpine:latest

RUN apk add --no-cache --update openvpn bash
COPY openvpn.sh /usr/bin/openvpn.sh

VOLUME ["/ovpn"]
HEALTHCHECK --interval=120s --timeout=15s --start-period=120s \
  CMD ping cloudflare.com -c 3

ENTRYPOINT ["/usr/bin/openvpn.sh"]
