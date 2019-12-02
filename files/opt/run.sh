#!/usr/bin/env sh
socklog unix /tmp/haproxy_syslog &

echo "wait for socklog to come up"
sleep 5

haproxy -f /usr/local/etc/haproxy/haproxy.cfg
