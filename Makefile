nodeparty:
	docker-compose -f "docker/docker-compose.yml" build --parallel && docker-compose -f "docker/docker-compose.yml" up -d

build-images:
	docker build --rm -f "docker/docker-cosmos/Dockerfile" -t docker-cosmos:latest "docker/docker-cosmos"
	docker build --rm -f "docker/docker-irisnet/Dockerfile" -t docker-irisnet:latest "docker/docker-irisnet"
	docker build --rm -f "docker/docker-terra/Dockerfile" -t docker-terra "docker/docker-terra"
	docker build --rm -f "docker/docker-kava/Dockerfile" -t docker-kava:latest "docker/docker-kava"
	docker build --rm -f "docker/docker-regen/Dockerfile" -t docker-regen:latest docker/docker-regen

clean-docker:
	sh ./scripts/dockercleanup.sh

start-minikube:
	minikube start --cpus=12 --memory='8196mb' --vm-driver=kvm

stop-minikube:
	minikube stop

destroy-minikube:
	minikube delete

update-changelog:
	sh ./scripts/changelog.sh

update-docs:
	sh scripts/docs.sh