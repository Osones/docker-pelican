FROM alpine:3.8

LABEL maintainer="rgu@osones.io"


RUN apk -U add \
    python \
    py-pip \
    perl \
    make \
    && rm -rf /var/cache/apk/* \
    && pip install pelican==3.7 markdown

COPY start.sh /start.sh
RUN chmod +x /start.sh
EXPOSE 8000

CMD ["/bin/sh", "/start.sh"]
