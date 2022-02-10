# PHP Lumen Framework code analyzer

## Prerequisites

[Docker](https://www.docker.com/products/docker-desktop)

[Minikube](https://minikube.sigs.k8s.io/docs/start/) or Enable Kubernetes in your Docker Desktop

## Installation
```bash
# Clone project
git clone https://github.com/riceberrypi/lumen_api_basic.git
cd <PROJECT_DIRECTORY>

# Launch deployment.yml
kubectl apply -f ./k8s

# To check the logs, execute the following commands
kubectl get pods -n code-analyzer
# Pod name will be displayed. For example: lumen-api-code-analyzer-5f9dd959f5-5v8pm
kubectl logs -f <pod_name> -n code-analyzer

# Deployment teardown
kubectl delete -f ./k8s
```
