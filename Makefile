nodeparty:
	docker-compose -f "docker/docker-compose.yml" build --parallel && docker-compose -f "docker/docker-compose.yml" up -d

update-changelog:
	sh scripts/changelog.sh

build-iris:
	docker build --rm -f "docker/docker-irisnet/Dockerfile" -t docker-irisnet:latest docker/docker-irisnet

build-cosmos:
	docker build --rm -f "docker/docker-cosmos/Dockerfile" -t docker-cosmos:latest "docker/docker-cosmos"

build-cosmos-testnet:
	docker build --rm -f "docker/docker-cosmos/Dockerfile-testnet" -t docker-cosmos:testnet-latest docker/docker-cosmos

build-terra:
	docker build --rm -f "docker/docker-terra/Dockerfile" -t docker-terra "docker/docker-terra"

build-kava:
	docker build --rm -f "docker/docker-kava/Dockerfile" -t docker-kava:latest docker/docker-kava

build-regen:
	docker build --rm -f "docker/docker-regen/Dockerfile" -t docker-regen:latest docker/docker-regen

build-images:
	docker build --rm -f "docker/docker-cosmos/Dockerfile" -t docker-cosmos:latest "docker/docker-cosmos"
	docker build --rm -f "docker/docker-cosmos/Dockerfile-testnet" -t docker-cosmos:testnet-latest docker/docker-cosmos
	docker build --rm -f "docker/docker-irisnet/Dockerfile" -t docker-irisnet:latest docker/docker-irisnet
	docker build --rm -f "docker/docker-terra/Dockerfile" -t docker-terra "docker/docker-terra"
	docker build --rm -f "docker/docker-kava/Dockerfile" -t docker-kava:latest docker/docker-kava
	# docker build --rm -f "docker/docker-regen/Dockerfile" -t docker-regen:latest docker/docker-regen

clean-docker:
	sh ./scripts/dockercleanup.sh

cosmos:
	docker-compose -f "docker/docker-cosmos/docker-compose.yml" up -d --build

cosmos-test:
	docker-compose -f "docker/docker-cosmos/docker-compose-testnet.yml" up -d --build

iris:
	docker-compose -f "docker/docker-irisnet/docker-compose.yml" up -d --build

terra-compose:
	docker-compose -f "docker/docker-terra/docker-compose.yml" up -d --build

# kava:
#   docker-compose -f "docker/docker-kava/docker-compose.yml" up -d --build

# regen:
#   docker-compose -f "docker/docker-regen/docker-compose.yml" up -d --build

# tezos:
#   docker-compose -f "docker/docker-tezos/docker-compose.yml" up -d --build

# ethereum:
#   docker-compose -f "dock(no branch): 


common:
	kubectl apply -f kubernetes/common/ -R

cosmos-node:
	kubectl apply -f kubernetes/cosmos/cosmos-node/ -R

cosmos-prometheus:
	kubectl apply -f kubernetes/cosmos/cosmos-prometheus/ -R

kube-cosmos:
	kubectl apply -f kubernetes/cosmos/cosmos-node/ -R

iris-node:
	kubectl apply -f kubernetes/iris/iris-node/ -R

kava-node:
	kubectl apply -f kubernetes/kava/kava-node/ -R

kava-prometheus:
	kubectl apply -f kubernetes/kava/kava-prometheus/ -R

kava:
	kubectl apply -f kubernetes/kava/kava-node/ -R

regen-node:
	kubectl apply -f kubernetes/regen/regen-node/ -R

regen-prometheus:
	kubectl apply -f kubernetes/regen/regen-prometheus/ -R

regen:
	kubectl apply -f kubernetes/regen/regen-node/ -R

terra-node:
	kubectl apply -f kubernetes/terra/terra-node/ -R

terra-prometheus:
	kubectl apply -f kubernetes/terra/terra-prometheus/ -R

terra:
	kubectl apply -f kubernetes/terra/terra-node/ -R



unprep-minikube:
	sudo systemctl stop libvirtd.service virtlogd.service

start-minikube:
	minikube start --cpus=12 --memory='8196mb' --vm-driver=kvm

stop-minikube:
	minikube stop

destroy-minikube:
	minikube delete

readmes:
	sh scripts/docs.sh