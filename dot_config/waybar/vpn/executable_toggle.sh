#!/bin/bash

if ip link show | grep -q tun0; then
  openvpn3 session-manage --config denmark --disconnect
else
  openvpn3 session-start --config denmark
fi
