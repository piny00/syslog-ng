#!/usr/bin/env sh

exec /usr/sbin/syslog-ng -d -c /etc/syslog-ng/syslog-ng.conf 2>&1
