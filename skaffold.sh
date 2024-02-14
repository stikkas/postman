#!/bin/bash

skaffold config set --global local-cluster true 
eval $(minikube -p cux5 docker-env)

# and run with port forwarding config of which is taken from skaffold.yaml
skaffold run --port-forward=user

# show images
minikube image ls -p cux5 --format table

# remove image
minikube image rm e29cc5227753e -p cux5