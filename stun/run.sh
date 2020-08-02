#!/bin/bash
exec /usr/bin/turnserver -n -v -f --no-cli --mobility -p 3478 --tls-listening-port=5349 --min-port 49152 --max-port 65535 --external-ip=$externalip -a --user $user:$password -r $realm --cert=/certs/cert.pem --pkey=/certs/privkey.pem

