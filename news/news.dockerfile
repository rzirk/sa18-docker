FROM golang:1.8


RUN go get -d github.com/oloose/newsletter-ms/...
#WORKDIR /go/src/newsletter-ms
WORKDIR /go/src/github.com/oloose/newsletter-ms
RUN go install ./cmd/newsletter-ms

CMD newsletter-ms -dbh=mongonews start
