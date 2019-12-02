# Blockchain Nodes

This repo contains a collection of blockchain nodes built using Docker and Kubernetes.
The default configurations (aimed at providing api/rpc connections) are deployable without further configuration although config modifications are easily implementable.

---

## Dockerfiles

Additional information for each node can be found in the respective subdirectory

- [Dockerfiles](./dockerfiles/README.md)
  - [Cosmos](./dockerfiles/docker-cosmos/README.md#docker-cosmos)
  - [Irisnet](./dockerfiles/docker-irisnet/README.md#docker-irisnet)
  - [Regen](./dockerfiles/docker-regen/README.md#docker-regen)
  - [Kava](./dockerfiles/docker-kava/README.md#docker-kava)
  - [Terra](./dockerfiles/docker-terra/README.md#docker-terra)
  - [Tezos](./dockerfiles/docker-tezos/README.md#docker-tezos)
  - [Ethereum](./dockerfiles/docker-ethereum/README.md#docker-geth)


## Notes
- Cosmos node is currently configured via a shared configmap. Ideally, the other nodes will be configured the same way.
- Currently configured to run all the nodes on a single IP by modifying the port numbers.
- Some of the networks may be obsolete but the template specs can easily be ported to the upgraded networks or new ones entirely.

```bash

# If running on GCP you mush run the following before deploying to the cluster
kubectl create clusterrolebinding cluster-admin-binding \
  --clusterrole cluster-admin \
  --user $(gcloud config get-value account)
# 

```

## Deployment

Utilize the included Makefile or the following commands as needed

```bash
kubectl apply -f deploy/common/
kubectl apply -f deploy/nginx-ingress/ -R
kubectl apply -f deploy/cosmos/ -R
kubectl apply -f deploy/iris/ -R
kubectl apply -f deploy/kava/ -R
kubectl apply -f deploy/regen/ -R

```



## Contributing

Best efforts are made to keep these nodes up-to-date but if you notice any outdated version or other issues please open an issue or make a PR.

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?)](http://makeapullrequest.com)

---
