FROM golang:alpine

ENV HOOKURL ""

RUN apk add --no-cache git \
    ; \
    go get github.com/adnanh/webhook

ADD hooks.json /root/
ADD send-to-keybase.sh /root/

RUN chmod +x /root/send-to-keybase.sh
