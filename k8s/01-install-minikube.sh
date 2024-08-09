#!bin/bash

#Install Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube version

#Start Minikube
minikube start --cpus=8 --memory=8192 --vm-driver=virtualbox