FROM alpine:latest
LABEL maintainer "Raman Shyshniou <rommer@ibuffed.com>"

COPY pzem004t3 /usr/bin/pzem004t3
RUN apk --no-cache add -X http://dl-cdn.alpinelinux.org/alpine/edge/testing tini python3 py3-paho-mqtt py3-serial

ENTRYPOINT ["/sbin/tini", "--", "pzem004t3"]
