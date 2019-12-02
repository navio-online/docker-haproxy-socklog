#!/usr/bin/env sh
echo "Starting socklog"
socklog unix /tmp/haproxy_syslog &

echo "wait for socklog to come up"
sleep 5

echo "Starting haproxy"
haproxy -f /usr/local/etc/haproxy/haproxy.cfg
