#!/bin/bash

#Enable addons
minikube addons enable metrics-server
minikube addons enable dashboard
minikube addons enable ingress
minikube addons enable ingress-dns
minikube addons enable logviewer
kubectl proxy --address 0.0.0.0 --disable-filter=true &&
minikube dashboard --url