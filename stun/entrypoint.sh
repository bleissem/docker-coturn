#!/bin/bash
while [ ! -f /certs/cert.pem ]
do
  echo 'wait for file cert.pem'
  sleep 5
done

while [ ! -f /certs/privkey.pem ]
do
  echo 'wait for file privkey.pem'
  sleep 5  
done

exec /usr/bin/turnserver -n -v -f --no-cli --stun-only --mobility -p 3478 --tls-listening-port=5349 --min-port 49152 --max-port 65535 --external-ip=$externalip -a --user $user:$password -r $realm --cert=/certs/cert.pem --pkey=/certs/privkey.pem

