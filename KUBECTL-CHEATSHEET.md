# Kubectl Cheatsheet

## Generic Info and Version

- kubectl cluster-info: Get Cluster Info
- kubectl version: Get Version

## Switch namespace

- kubectl config set-context --current --namespace=<namespace>

## Create, Apply and Delete Resources

- kubectl create -f FILENAME: Create a resource from a file
- kubectl apply -f FILENAME: Apply a modified resource from a file
- kubectl delete pods <podname>
- kubectl delete deployment <deployment_name> -n <namespace>
- kubectl apply -f <folder> --recursive: Apply multiple files recursively

## Get all services

- minikube service list
- minikube service list -n carmarketplace-dev

## Get Status

- kubectl get pods
- kubectl get pods -n <namespace>

## Get Logs

- kubectl logs <podname>

## Execute Commands in a Pod

- kubectl exec -it <podname> -- /bin/bash

## Create Secrets

- kubectl create secret generic <secretname> --namespace <namespace> --from-literal <key>=<value>

## Restart Deployments

- kubectl rollout restart deployment <deployment_name> -n <namespace>

## Tools to Install in Pods for Troubleshooting

- apt update && apt install -y net-tools && apt install -y curl && apt install -y dnsutils && apt install -y iputils-ping && apt install -y telnet
