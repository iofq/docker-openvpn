#!/usr/bin/env bash
openvpn \
  --config /ovpn/client.conf \
  --auth-nocache $OPENVPN_OPTS
