#!/bin/sh

echo $PWD

mkdir -p ${PWD}/docs/docker-cosmos
mkdir -p ${PWD}/docs/docker-cyberd
mkdir -p ${PWD}/docs/docker-irisnet
mkdir -p ${PWD}/docs/docker-kava
mkdir -p ${PWD}/docs/docker-prometheus
mkdir -p ${PWD}/docs/docker-regen
mkdir -p ${PWD}/docs/docker-terra
mkdir -p ${PWD}/docs/docker-tezos

cp ${PWD}/docker/docker-cosmos/README.md ${PWD}/docs/docker-cosmos
cp ${PWD}/docker/docker-cyberd/README.md ${PWD}/docs/docker-cyberd
cp ${PWD}/docker/docker-irisnet/README.md ${PWD}/docs/docker-irisnet
cp ${PWD}/docker/docker-kava/README.md ${PWD}/docs/docker-kava
cp ${PWD}/docker/docker-prometheus/README.md ${PWD}/docs/docker-prometheus
cp ${PWD}/docker/docker-regen/README.md ${PWD}/docs/docker-regen
cp ${PWD}/docker/docker-terra/README.md ${PWD}/docs/docker-terra
cp ${PWD}/docker/docker-tezos/README.md ${PWD}/docs/docker-tezos
