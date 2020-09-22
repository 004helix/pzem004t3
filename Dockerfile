FROM alpine:latest
LABEL maintainer "Raman Shyshniou <rommer@ibuffed.com>"

RUN apk --no-cache add python3 py3-paho-mqtt py3-pip && pip3 install pyModbusTCP && \
 echo "pzem:x:1000:" >> /etc/group && echo "pzem:x:1000:1000:pzem:/:/sbin/nologin" >> /etc/passwd
COPY pzem004t3 /usr/bin/pzem004t3
USER pzem

ENTRYPOINT ["/usr/bin/pzem004t3"]
