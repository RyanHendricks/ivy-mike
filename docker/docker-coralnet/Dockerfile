FROM cosmwasm/wasmd:v0.10.0

RUN apk add --no-cache --update ca-certificates supervisor wget
# COPY --from=go-builder /code/build/wasmd /usr/bin/wasmd
# COPY --from=go-builder /code/build/wasmcli /usr/bin/wasmcli

# # testnet
# COPY --from=go-builder /code/build/coral /usr/bin/coral
# COPY --from=go-builder /code/build/corald /usr/bin/corald
# COPY --from=go-builder /code/build/gaiaflex /usr/bin/gaiaflex
# COPY --from=go-builder /code/build/gaiaflexd /usr/bin/gaiaflexd

# COPY docker/* /opt/
# RUN chmod +x /opt/*.sh

WORKDIR /usr/bin
RUN install -m 0755 -o root -g root -t /usr/local/bin `find . -maxdepth 1 -executable -type f`

RUN mkdir -p /etc/supervisor/conf.d/
COPY /supervisor/supervisord.conf /etc/supervisor/supervisord.conf 

# rest server
EXPOSE 1317
# tendermint p2p
EXPOSE 26656
# tendermint rpc
EXPOSE 26657

COPY ./scripts/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod u+x /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]