# Docker-Cyberd

Dockerized Cyberd Node. 

Differences between this and the original version [https://github.com/cybercongress/cyberd/](https://github.com/cybercongress/cyberd/)
- Processes managed via supervisor for logging and autorestart
- Repository is cloned during build process rather than copied into the build process


---

[![MicroBadger Version](https://images.microbadger.com/badges/version/ryanhendricks/docker-cyberd.svg)](https://microbadger.com/images/ryanhendricks/docker-cyberd)
[![CircleCI (all branches)](https://img.shields.io/circleci/project/github/RyanHendricks/docker-cyberd.svg?label=build&logo=circleci&logoColor=white)](https://circleci.com/gh/RyanHendricks/docker-cyberd)
[![Docker Pulls](https://img.shields.io/docker/pulls/ryanhendricks/docker-cyberd.svg?logo=docker&logoColor=white)](https://hub.docker.com/r/ryanhendricks/docker-cyberd)


[![MicroBadger Layers (latest)](https://img.shields.io/microbadger/layers/ryanhendricks/docker-cyberd/latest.svg?logo=docker&logoColor=white)](https://microbadger.com/images/ryanhendricks/docker-cyberd)
[![MicroBadger Image-Size (latest)](https://img.shields.io/microbadger/image-size/ryanhendricks/docker-cyberd:latest.svg?logo=docker&logoColor=white)](https://microbadger.com/images/ryanhendricks/docker-cyberd)

[![Codacy grade](https://img.shields.io/codacy/grade/0a18a07176d642f2939db4cc30352055.svg?logo=codacy)](https://www.codacy.com?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=RyanHendricks/docker-cyberd&amp;utm_campaign=Badge_Grade)

---

## Prerequisites

- Docker
- Docker-Compose (optional)

## Quick Start

TK

## Configuration

### Config.toml Parameters

TK

### Environment Variables

TK

### Bootstrapping

TK

## Build

The following command will build the image.

```bash
docker build --rm -f Dockerfile -t docker-cyberd:latest .
```

## Running


```sh
docker-compose up -d --build
```

## Supervisor

The image uses Supervisor to run both cyberd and cyberdcli simultaneously at container runtime. Supervisor also restarts either process should it fail for some reason.

### Cyberd

After starting the container you can check the status here: [http://127.0.0.1:26657/status](http://127.0.0.1:26657/status).

or from the terminal

```bash
curl -X GET \
  http://127.0.0.1:26657/status? \
  -H 'cache-control: no-cache'
```

## Cyberdcli Rest-Server

Supervisor starts the rest-server with the following command:

```bash
cyberdcli rest-server  --trust-node --chain-id=euler-5 --laddr=tcp://0.0.0.0:1317 --indent --home=/root/.cyberdcli

```

You can verify that the rest-server is running using the following example

```bash
curl -X GET \
  http://127.0.0.1:1317/blocks/latest \
  -H 'cache-control: no-cache'
```

## NOTES


## Contributing

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?)](http://makeapullrequest.com)

### Contributors

[![Keybase PGP](https://img.shields.io/keybase/pgp/ryanhendricks.svg?label=keybase&logo=keybase&logoColor=white)](https://keybase.io/ryanhendricks)

## License

![GitHub](https://img.shields.io/github/license/ryanhendricks/docker-cyberd.svg)
