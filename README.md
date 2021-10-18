# website-ampr-proxy

This project exists to reverse-proxy my website hosted on Vercel to a host in my 44net IP block.

This works by using a wireguard link to my gateway to allocate a public IP address to a docker container, and reverse-proxy the web traffic via Caddy.

## Using

Store a valid VPN config at `./ampr.conf`, and run:

```sh
./run.sh
```