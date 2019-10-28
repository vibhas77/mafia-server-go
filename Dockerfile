FROM golang:1.13

RUN mkdir -p /go/src/github.com/vibhas77/mafia-server-go
WORKDIR /go/src/github.com/vibhas77/mafia-server-go

ADD . /go/src/github.com/vibhas77/mafia-server-go

RUN echo "Hello"

RUN go get -v

EXPOSE 8081

RUN apt-get update
RUN apt-get install -y vim postgresql-client-11

#ENTRYPOINT /bin/bash

CMD ["go", "run", "main.go"]
