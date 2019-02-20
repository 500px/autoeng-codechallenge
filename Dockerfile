FROM alpine:3.9

VOLUME ["/var/run/rsyslog/dev", "/etc/rsyslog.d"]

RUN apk update \
 && apk add --no-cache rsyslog rsyslog-relp

COPY rsyslog.conf /etc/

CMD ["rsyslogd", "-n"]
