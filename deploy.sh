#!/bin/bash
set -e

echo "Loading image into Minikube..."

docker build -t zero:v2 .

minikube image load zero:v2

echo "Applying Kubernetes deployment..."

kubectl apply -f deployment.yaml

echo "Restarting deployment..."

kubectl rollout restart deployment/zero-touch-app

kubectl rollout status deployment/zero-touch-app --timeout=120s

echo "Deployment completed!"

kubectl get pods -l app=zero-touch-app
kubectl get service zero-touch-service
