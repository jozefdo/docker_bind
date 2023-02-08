FROM alpine:latest

LABEL maintainer="Jozef Dorozlo <jozef@sasro.sk>"

RUN apk add --no-cache bind

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]