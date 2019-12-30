gcp-admin:
	kubectl create clusterrolebinding cluster-admin-binding \
  --clusterrole cluster-admin \
  --user $(gcloud config get-value account)

common:
	kubectl apply -f kubernetes/common/ -R

cosmos-node:
	kubectl apply -f kubernetes/cosmos/cosmos-node/ -R

cosmos-prometheus:
	kubectl apply -f kubernetes/cosmos/cosmos-prometheus/ -R

cosmos:
	kubectl apply -f kubernetes/cosmos/cosmos-node/ -R

iris-node:
	kubectl apply -f kubernetes/iris/iris-node/ -R

iris-prometheus:
	kubectl apply -f kubernetes/iris/iris-prometheus/ -R

iris:
	kubectl apply -f kubernetes/iris/iris-node/ -R
	kubectl apply -f kubernetes/iris/iris-prometheus/ -R

kava-node:
	kubectl apply -f kubernetes/kava/kava-node/ -R

kava-prometheus:
	kubectl apply -f kubernetes/kava/kava-prometheus/ -R

kava:
	kubectl apply -f kubernetes/kava/kava-node/ -R
	kubectl apply -f kubernetes/kava/kava-prometheus/ -R


regen-node:
	kubectl apply -f kubernetes/regen/regen-node/ -R

regen-prometheus:
	kubectl apply -f kubernetes/regen/regen-prometheus/ -R

regen:
	kubectl apply -f kubernetes/regen/regen-node/ -R
	kubectl apply -f kubernetes/regen/regen-prometheus/ -R

terra-node:
	kubectl apply -f kubernetes/terra/terra-node/ -R

terra-prometheus:
	kubectl apply -f kubernetes/terra/terra-prometheus/ -R

terra:
	kubectl apply -f kubernetes/terra/terra-node/ -R
	kubectl apply -f kubernetes/terra/terra-prometheus/ -R


build-terra:
	docker build --rm -f "docker/docker-terra/Dockerfile" -t docker-terra "docker/docker-terra"