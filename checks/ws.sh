#!/bin/sh
# /echo accepts a WebSocket handshake.
set -e
H=http://web:5000
curl -sS -m 3 -i -N -H "Connection: Upgrade" -H "Upgrade: websocket" -H "Sec-WebSocket-Version: 13" -H "Sec-WebSocket-Key: dGhlIHNhbXBsZSBub25jZQ==" "$H/echo" 2>/dev/null | grep -q "101"
