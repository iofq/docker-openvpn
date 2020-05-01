#!/usr/bin/env bash
openvpn \
  --config /ovpn/client.conf \
  --auth-user-pass /ovpn/auth.txt \
  --auth-nocache 
