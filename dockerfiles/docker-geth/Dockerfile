# Build Geth in a stock Go builder container
FROM golang:1.12-alpine as builder

RUN apk add --update --no-cache make gcc musl-dev linux-headers git

WORKDIR /
RUN git clone https://github.com/ethereum/go-ethereum/

RUN cd /go-ethereum && make geth

# Pull Geth into a second stage deploy alpine container
FROM alpine:latest

RUN apk add --no-cache ca-certificates
COPY --from=builder /go-ethereum/build/bin/geth /usr/local/bin/

EXPOSE 8545 8546 8547 30303 30303/udp
ENTRYPOINT ["geth", "--syncmode=light","--rpc","--ws","--wsorigins='*'","--rpcvhosts='*'","--cache","1024","--graphql","--graphql.corsdomain='*'","--graphql.vhosts='*'"]
