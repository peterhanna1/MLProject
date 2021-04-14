#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
DOCKERPATH=udapeter/house_price
TAG=houseprice

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $TAG --image=$DOCKERPATH --generator=run-pod/v1


# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/$TAG 8000:80

