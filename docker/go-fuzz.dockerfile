FROM golang:1.14-alpine

# Install deps and useful things
RUN apk add build-base pkgconfig bash vim git

# Install go-fuzz
RUN GO111MODULE=off go get -u github.com/dvyukov/go-fuzz/go-fuzz github.com/dvyukov/go-fuzz/go-fuzz-build
WORKDIR /tmp/fuzzing

CMD bash
