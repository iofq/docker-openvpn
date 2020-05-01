# Openvpn Client in Docker

## Usage

Best paired with docker-compose:

```
---
version: "2.1"
services:
  example:
  ⎸ image: iofq/example
  ⎸ name: example
  ⎸ network_mode: service:openvpn
    restart: unless-stopped
  openvpn:
    image: iofq/docker-openvpn
    name: openvpn
    cap_add:
    ⎸ - NET_ADMIN
    devices:
    ⎸ - "/dev/net/tun"
    volumes:
      - /path/to/ovpn/config:/ovpn
    environment: 
      #optional; opts to send to openvpn cmd
      - OPENVPN_OPTS="--auth-user-pass /ovpn/auth.txt"
    dns: #optional; if dns isn't resolving inside container
    ⎸ - 1.1.1.1
    ports: #must declare ports for other services here
      ...
    restart: unless-stopped
```

Place openvpn config in /path/to/ovpn/config/client.conf .Optionally authenticate with an auth.txt in the same directory and use OPENVPN_OPTS.
