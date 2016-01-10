FROM sander85/rpi-alpine

MAINTAINER Ivan Marban <ivan.marban@gmail.com>

RUN apk update && \
    apk add transmission-daemon && \
    rm -rf /var/cache/apk/ /var/lib/apk/ /etc/apk/cache/

EXPOSE 9091 51413/tcp 51413/udp

CMD ["--foreground", "--config-dir", "/etc/transmission", "--log-error"]

ENTRYPOINT ["/usr/bin/transmission-daemon"]
