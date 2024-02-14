#!/bin/bash

skaffold config set --global local-cluster true 
eval $(minikube -p cux5 docker-env)

# and run with port forwarding config of which is taken from skaffold.yaml
skaffold run --port-forward=user