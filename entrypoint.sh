#! /bin/bash

set -e

echo "Connecting to wireguard server"
wg-quick up /ampr.conf

echo "IP Address Dump"
ip a
ping 44.31.62.1 -c 3
ping 44.0.0.1 -c 3

echo "Starting caddy"
caddy run --config /etc/caddy/Caddyfile

echo "Disconnecting from wireguard server"
wg-quick down /ampr.conf