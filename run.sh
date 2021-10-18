#! /bin/bash
set -e
docker build -t wamprp .
docker run -it --rm --cap-add=NET_ADMIN --sysctl net.ipv6.conf.all.disable_ipv6=0 --privileged -v wamprp_data:/data -v $(pwd)/ampr.conf:/ampr.conf wamprp