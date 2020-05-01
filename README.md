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
     image: iofq/openvpn
     name: openvpn
     cap_add:
     ⎸ - NET_ADMIN
     devices:
     ⎸ - "/dev/net/tun"
     volumes:
       - /path/to/ovpn/config:/ovpn
     dns:
     ⎸ - 1.1.1.1
     ports:
     ⎸ - 80:80
	...
     restart: unless-stopped
```

Place openvpn config in /path/to/ovpn/config/client.conf and authenticate with an auth.txt in the same directory.
