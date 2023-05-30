
FROM alpine:3.17

LABEL maintainer="piny00"

COPY start.sh /

RUN apk update \   
    && apk add syslog-ng syslog-ng-scl syslog-ng-json syslog-ng-add-contextual-data syslog-ng-tags-parser tzdata \
    && cp /usr/share/zoneinfo/Europe/Budapest /etc/localtime \
    && echo "Europe/Budapest" >  /etc/timezone \
    && mkdir /var/log/syslog-ng \
    && apk del tzdata \
    && apk upgrade \
    && chmod +x /start.sh

COPY syslog-ng.conf /etc/syslog-ng/

EXPOSE 514/udp 514/tcp 

VOLUME /var/log

CMD [ "/start.sh" ]
