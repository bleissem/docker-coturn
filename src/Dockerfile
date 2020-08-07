FROM alpine
RUN apk update && apk add --no-cache coturn && rm -rf /var/cache/apk/* /tmp/* && mkdir /app
COPY entrypoint.sh /app
WORKDIR /app 
RUN chmod +x entrypoint.sh
# SUTN/TURN PORTS
EXPOSE 3478 3479 3478/udp 3479/udp 80 80/udp
EXPOSE 5349 5350 5349/udp 5350/udp 443 443/udp

# Relay Ports
EXPOSE 49152-65535 49152-65535/udp
ENTRYPOINT ["sh","/app/entrypoint.sh"]

