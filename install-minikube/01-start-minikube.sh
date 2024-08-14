#!/bin/bash

#Start Minikube with virtualbox
minikube start --cpus=8 --memory=8192 --vm-driver=virtualbox --no-vtx-check

#Start Minikube with docker
minikube start --cpus=8 --memory=8192 --vm-driver=docker --no-vtx-check