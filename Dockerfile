FROM alpine:3.7
MAINTAINER Phil Estes <estesp@gmail.com>

RUN apk add --no-cache socat

CMD socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock
