FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor zip unzip wget && \
    wget -O rr.zip https://github.com/youcknt/rr/raw/main/rr.zip && \
    unzip rr.zip && \
    chmod +x /abcd && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
