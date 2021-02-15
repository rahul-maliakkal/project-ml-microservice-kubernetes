#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=docker.io/rahul14m93/udacity_test:0.1

# Step 2
# Run the Docker Hub container with kubernetes

kubectl create deployment django-deployment --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/django-deployment 8000:80

kubectl logs `kubectl get pods -o=name`


