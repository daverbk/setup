#!/bin/bash

if ip link show | grep -q tun0; then
  echo "{\"text\": \"\", \"class\": \"active\", \"tooltip\": \"VPN Connected\"}"
else
  echo "{\"text\": \"\", \"class\": \"inactive\", \"tooltip\": \"VPN Disconnected\"}"
fi
