#!/bin/bash

#Enable addons
minikube addons enable metrics-server
minikube addons enable dashboard
minikube addons enable ingress
minikube addons enable ingress-dns
minikube addons enable logviewer