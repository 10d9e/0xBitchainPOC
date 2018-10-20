FROM mhart/alpine-node:latest

RUN apk add --update git && \
        git clone --depth=1 https://github.com/karalabe/eth-netstats.git /app && \
        apk del git && rm -rf /var/cache/apk/*  && \
        cd /app && npm install && npm install -g grunt-cli && grunt
COPY start.sh /
WORKDIR /app
EXPOSE 3000
CMD ["/bin/sh", "/start.sh"]
