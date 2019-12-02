FROM haproxy:2.1-alpine

RUN set -ex; \
    apk add --udpate --no-cache --virtual .fetch-deps \
        ca-certificates \
        openssl \
        tar; \
    apk add --update --no-cache socklog; \
    apk del .fetch-deps;

ADD files/ /

EXPOSE 5432
CMD ["sh", /opt/run.sh"]
