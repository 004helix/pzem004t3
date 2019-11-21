FROM alpine:latest
LABEL maintainer "Raman Shyshniou <rommer@ibuffed.com>"

RUN apk --no-cache add python3 py3-paho-mqtt py3-pip && pip3 install pyModbusTCP
COPY pzem004t3 /usr/bin/pzem004t3

ENTRYPOINT ["/usr/bin/pzem004t3"]
