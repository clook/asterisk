FROM alpine:3.17

RUN apk add asterisk \
	asterisk-sample-config \
	asterisk-sounds-en

EXPOSE 5060/udp 5060/tcp

ENTRYPOINT ["/usr/sbin/asterisk", "-U", "asterisk", "-f"]
