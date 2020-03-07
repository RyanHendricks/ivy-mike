# Dockerfiles

Each subdirectory contains the Dockerfile/Scripts/Config for building the respective node image. Please see the README.md in each of the respective folders for more information.

## Building

To build all the images contained within the subdirectories run the following command from within the dockerfiles/ directory.

```sh
make build-images
```

## Running

Start the containers using any of the following commands or use the individual docker-compose files themselves.

```sh
make cosmos
make iris
make regen
make kava
make tezos
make ethereum
```

## Cleanup

**Warning** This will remove all running containers, images, volumes, and networks!

```sh
clean-docker
```
