#!/bin/bash

#Start Minikube
minikube start --cpus=8 --memory=8192 --vm-driver=virtualbox --no-vtx-check --image-repository=auto --static-ip=192.168.59.100