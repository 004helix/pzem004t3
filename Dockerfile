FROM alpine:latest
LABEL maintainer "Raman Shyshniou <rommer@ibuffed.com>"

COPY pzem004t3 /usr/bin/pzem004t3
RUN apk --no-cache add tini python3 py3-paho-mqtt py3-pip && pip3 install pyModbusTCP

ENTRYPOINT ["/sbin/tini", "--", "pzem004t3"]
