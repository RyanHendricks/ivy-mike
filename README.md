# Ivy Mike

Containerized Blockchain Nodes

<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=2 orderedList=false} -->

<!-- code_chunk_output -->

- [Background](#background)
- [Quickstart](#quickstart)
- [Documention](#documention)
- [Notes](#notes)
- [Contributing](#contributing)
- [License](#license)

<!-- /code_chunk_output -->

## Background

- This repo contains a collection of blockchain nodes built using Docker and Kubernetes.
- The default configurations are aimed at providing api/rpc connections and are deployable 'out-of-the-box'.
- Configuration parameters are set at runtime via ENV thus allowing the same image to be deployed with differing configurations.

## Quickstart

Some of the Dockerfile dependencies are linked as submodules, the following command will pull them onto your local machine.

```bash
git submodule init
git submodule update
```

The following command will build (in parallel) and deploy a Cosmos, Iris, Terra, and Kava node.

```bash
make nodeparty

# or the equivalent:
docker-compose -f "docker/docker-compose.yml" build --parallel && \
docker-compose -f "docker/docker-compose.yml" up -d
```

To view which ports each node is using in addition to configuration used see the [docker-compose.yml](./docker/docker-compose.yml) file.

## Documention

Additional information and configuration options for each node can be found in the respective subdirectory

- [Dockerfiles](./docs/dockerfiles.md)
  - [Cosmos](./docs/docker-cosmos/README.md)
  - [Irisnet](./docs/docker-irisnet/README.md)
  - [Regen](./docs/docker-regen/README.md)
  - [Kava](./docs/docker-kava/README.md)
  - [Terra](./docs/docker-terra/README.md)
  - [Tezos](./docs/docker-tezos/README.md)
  - [Ethereum](./docs/docker-ethereum/README.md)
  - [Cyberd](./docs/docker-cyberd/README.md)
- [Kubernetes](./docs/kubernetes.md)

## Notes

- Cosmos node is currently configured via a shared configmap for Kubernetes. Ideally, the other nodes will be configured the same way.
- Currently configured to run all the nodes on a single IP by modifying the port numbers.
- Some of the networks may be obsolete but the template specs can easily be ported to the upgraded networks or new ones entirely.

## Contributing

Best efforts are made to keep these nodes up-to-date but if you notice any outdated version or other issues please open an issue or make a PR.

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?)](http://makeapullrequest.com)

### Contributors

[![Keybase PGP](https://img.shields.io/keybase/pgp/ryanhendricks.svg?label=keybase&logo=keybase&logoColor=white)](https://keybase.io/ryanhendricks)

## License

![GitHub](https://img.shields.io/github/license/ryanhendricks/ivy-mike.svg)
