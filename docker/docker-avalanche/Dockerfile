FROM golang:1.14-alpine AS buildenv

ENV PACKAGES curl make git libc-dev bash gcc linux-headers eudev-dev

# Set up dependencies
RUN apk add --update --no-cache $PACKAGES

# Set working directory for the build
WORKDIR /go/src/github.com/ava-labs

# Add source files
RUN git clone --recursive https://github.com/ava-labs/avalanchego
WORKDIR /go/src/github.com/ava-labs/avalanchego

# Build binary
RUN ./scripts/build.sh

# ------------------------------------------------------------------ #
FROM alpine:edge

# Install ca-certificates & supervisor
RUN apk update && apk add --no-cache ca-certificates=20191127-r4 supervisor=4.2.1-r0 && rm -rf /var/cache/apk/*

# Create directories for copying binaries and certs
RUN mkdir -p /tmp/bin
RUN mkdir /certs

# Copy binary and staker certs
COPY --from=buildenv /go/src/github.com/ava-labs/avalanchego/build/avalanchego /tmp/bin
COPY --from=buildenv /go/src/github.com/ava-labs/avalanchego/staking/local/* /certs/

# Install binary
WORKDIR /tmp/bin
# TODO: create non-root user for installation owner
RUN install -m 0755 -o root -g root -t /usr/local/bin avalanchego

WORKDIR /

# # Remove temp files
RUN rm -r /tmp/bin

# # Add supervisor configuration files
RUN mkdir -p /etc/supervisor/conf.d/
COPY /supervisor/supervisord.conf /etc/supervisor/supervisord.conf 
COPY /supervisor/conf.d/* /etc/supervisor/conf.d/

# Add entrypoint script
COPY ./scripts/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod u+x /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
