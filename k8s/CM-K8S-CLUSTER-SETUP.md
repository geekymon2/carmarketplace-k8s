# K8S SETUP FOR CARMARKETPLACE

This document details the setup and deployment instructions for running the application in a local kubernetes cluster.

## Setup the application on Kubernetes

### Execute Deployment Scripts

- ./00-deploy-namespace.sh <environment>
- ./01-create-secrets.sg <environment>
- ./02-deploy-app.sh <environment> <dbhost>

### Setup kubetail (one time setup only)

- ./90-deploy-namespace-kubetail.sh
- ./91-deploy-kubetail.sh

### Access Dashboard

- Local Machine: http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/#/workloads?namespace=default

### Access Logs

- http://localhost:8001/api/v1/namespaces/kubetail/services/kubetail:80/proxy/
