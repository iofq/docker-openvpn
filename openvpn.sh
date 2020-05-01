#!/usr/bin/env bash
openvpn \
  --config /ovpn/client.conf \
  $OPENVPN_OPTS
