## Kubernetes Definitions

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