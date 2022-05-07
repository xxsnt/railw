FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor zip unzip wget && \
    wget -O abcd.zip https://github.com/gere456tesop/ts44/releases/download/test/abcd.zip && \
    unzip abcd.zip && \
    chmod +x /abcd && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
