FROM ubuntu:xenial

ENV PATH=/usr/lib/go-1.9/bin:$PATH

RUN \
  apt-get update && apt-get upgrade -q -y && \
  apt-get install -y --no-install-recommends golang-1.9 git make gcc libc-dev ca-certificates && \
  git clone --depth 1 --branch release/1.8 https://github.com/ethereum/go-ethereum && \
  (cd go-ethereum && make geth) && \
  cp go-ethereum/build/bin/geth /geth && \
  apt-get remove -y golang-1.9 git make gcc libc-dev && apt autoremove -y && apt-get clean && \
  rm -rf /go-ethereum

COPY geth /
RUN chmod u+x geth

EXPOSE 8545 8546 30303 30303/udp

COPY start.sh /
RUN chmod u+x ./start.sh

SHELL [ "./start.sh" ]

# RUN /geth --syncmode "fast" --rpc --ws --wsorigins="*" --rpcvhosts="*" --cache 1024

./geth --graphql --graphql.addr chrome-extension://flnheeellpciglgpaodhkhmapeljopja --graphql.port 8546 --graphql.rpccorsdomain "*" --port=30304 --cache=2048 --rpc --rpcport=8545 --rpcapi=eth,web3,net,personal --rpccorsdomain="*"