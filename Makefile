KIND_CLUSTER_NAME ?= chaos-toolkit-playground

default:
	# Do nothing by default

kind-up:
	kind create cluster --config=kind/3-zones-cluster.yaml --name=$(KIND_CLUSTER_NAME)

kind-down:
	kind delete cluster --name=$(KIND_CLUSTER_NAME)

microservices-up:
	kubectl apply -k k8s/

microservices-down:
	kubectl delete -k k8s/
