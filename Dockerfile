FROM golang:1.13

RUN mkdir -p /go/src/github.com/vibhas77/mafia-server-go
WORKDIR /go/src/github.com/vibhas77/mafia-server-go

ADD . /go/src/github.com/vibhas77/mafia-server-go

RUN go get -v