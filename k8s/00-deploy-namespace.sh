#!/bin/bash
ENV=$1

# Check mandatory parameter
if [ -z "$ENV" ]; then
    echo "Usage: ./<script> <environment> e.g. 'dev', 'ci', 'staging', 'prod'" 
    exit 1
fi

helm install -f ./values-$ENV.yaml ./k8s-namespace/carmarketplace-k8s-namespace.yaml --generate-name