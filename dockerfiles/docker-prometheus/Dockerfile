FROM golang:1.12.6-alpine as build-env

ENV PACKAGES curl make git libc-dev bash gcc linux-headers eudev-dev
# ENV GO111MODULE=on

# Update packages
RUN apk add --update --no-cache $PACKAGES

# Create directory and set as working directory
RUN mkdir -p $GOPATH/src/github.com/prometheus
WORKDIR $GOPATH/src/github.com

# Clone source repo and ensure updated branch
RUN git clone https://github.com/prometheus/prometheus.git
WORKDIR $GOPATH/src/github.com/prometheus
RUN git checkout master && git pull

# Build binaries
RUN make build


# Final image
FROM alpine:edge

# Install ca-certificates
RUN apk add --no-cache --update ca-certificates

# Temp directory for copying binaries
RUN mkdir -p /tmp/bin
WORKDIR /tmp/bin

# Copy over binaries from the build-env
COPY --from=build-env /go/src/github.com/prometheus/prometheus /tmp/bin
COPY --from=build-env /go/src/github.com/prometheus/promtool /tmp/bin
RUN install -m 0755 -o root -g root -t /usr/local/bin prometheus
RUN install -m 0755 -o root -g root -t /usr/local/bin promtool

WORKDIR /

# Remove temp files
RUN rm -r /tmp/bin

# Add entrypoint script
COPY /scripts/entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

STOPSIGNAL SIGINT