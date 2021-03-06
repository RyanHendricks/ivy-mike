# Ivy Mike

## TLDR

```bash
make nodeparty
#   will execute the following:
#   docker-compose -f "docker/docker-compose.yml" build --parallel && \
#   docker-compose -f "docker/docker-compose.yml" up -d
```

## Blockchain Nodes

This repo contains a collection of blockchain nodes built using Docker and Kubernetes.

The default configurations are aimed at providing api/rpc connections and are deployable 'out-of-the-box'. Configuration parameters are set at runtime via ENV thus allowing

Additional information and configuration options for each node can be found in the respective subdirectory

- [Dockerfiles](./dockerfiles.md)
  - [Cosmos](./docker-cosmos/README.md)
  - [Irisnet](./docker-irisnet/README.md)
  - [Regen](./docker-regen/README.md)
  - [Kava](./docker-kava/README.md)
  - [Terra](./docker-terra/README.md)
  - [Tezos](./docker-tezos/README.md)
  - [Ethereum](./docker-ethereum/README.md)
  - [Cyberd](./docker-cyberd/README.md)
- [Kubernetes](./kubernetes.md)

## Notes

- Cosmos node is currently configured via a shared configmap. Ideally, the other nodes will be configured the same way.
- Currently configured to run all the nodes on a single IP by modifying the port numbers.
- Some of the networks may be obsolete but the template specs can easily be ported to the upgraded networks or new ones entirely.

## Contributing

Best efforts are made to keep these nodes up-to-date but if you notice any outdated version or other issues please open an issue or make a PR.

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?)](http://makeapullrequest.com)

---
