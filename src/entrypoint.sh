#!/bin/bash
ls
while [ ! -f /certs/cert.pem ]
do
  echo 'wait for file cert.pem'
  sleep 5
done

while [ ! -f /certs/key.pem ]
do
  echo 'wait for file key.pem'
  sleep 5  
done

exec /usr/bin/turnserver -n -v -f --no-cli $whattostart --mobility -p $port --tls-listening-port=$tlslisteningport --min-port $minport --max-port $maxport --external-ip=$externalip -a --user $user:$password -r $realm --cert=/certs/cert.pem --pkey=/certs/key.pem

