FROM alpine:latest
RUN apk update && apk add --no-cache tzdata && apk add openvpn
ADD init.sh /
CMD ["/bin/sh", "/init.sh"]
