common:
	kubectl apply -f deploy/common/ -R

cosmos-node:
	kubectl apply -f deploy/cosmos/cosmos-node/ -R

cosmos-prometheus:
	kubectl apply -f deploy/cosmos/cosmos-prometheus/ -R

cosmos:
	kubectl apply -f deploy/cosmos/cosmos-node/ -R

iris-node:
	kubectl apply -f deploy/iris/iris-node/ -R

iris-prometheus:
	kubectl apply -f deploy/iris/iris-prometheus/ -R

iris:
	kubectl apply -f deploy/iris/iris-node/ -R
	kubectl apply -f deploy/iris/iris-prometheus/ -R

kava-node:
	kubectl apply -f deploy/kava/kava-node/ -R

kava-prometheus:
	kubectl apply -f deploy/kava/kava-prometheus/ -R

kava:
	kubectl apply -f deploy/kava/kava-node/ -R
	kubectl apply -f deploy/kava/kava-prometheus/ -R


regen-node:
	kubectl apply -f deploy/regen/regen-node/ -R

regen-prometheus:
	kubectl apply -f deploy/regen/regen-prometheus/ -R

regen:
	kubectl apply -f deploy/regen/regen-node/ -R
	kubectl apply -f deploy/regen/regen-prometheus/ -R

terra-node:
	kubectl apply -f deploy/terra/terra-node/ -R

terra-prometheus:
	kubectl apply -f deploy/terra/terra-prometheus/ -R

terra:
	kubectl apply -f deploy/terra/terra-node/ -R
	kubectl apply -f deploy/terra/terra-prometheus/ -R