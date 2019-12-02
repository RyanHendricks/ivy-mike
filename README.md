# Kube-Tendermint

Configurations for Tendermint-based Nodes running on Kubernetes.



## Notes
- Cosmos node is currently configured via a shared configmap. Ideally, the other nodes will be configured the same way.
- Currently configured to run all the nodes on a single IP by modifying the port numbers.
- Some of the networks may be obsolete but the template specs can easily be ported to the upgraded networks or new ones entirely.
- Links to the Dockerfiles used can be found below. Reference the respective link for further documentation.

```bash

# If running on GCP you mush run the following before deploying to the cluster
kubectl create clusterrolebinding cluster-admin-binding \
  --clusterrole cluster-admin \
  --user $(gcloud config get-value account)
# 

```

# Deployment

Utilize the included Makefile or the following commands as needed

```bash
kubectl apply -f deploy/common/
kubectl apply -f deploy/nginx-ingress/ -R
kubectl apply -f deploy/cosmos/ -R
kubectl apply -f deploy/iris/ -R
kubectl apply -f deploy/kava/ -R
kubectl apply -f deploy/regen/ -R

```

