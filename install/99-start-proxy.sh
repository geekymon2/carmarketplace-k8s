#!/bin/sh

#This is setup to automatically start
# kubectl proxy --address 0.0.0.0 --disable-filter=true &&
# minikube dashboard --url

#Start proxy for Loki
kubectl -n loki port-forward svc/loki-stac-grafana 3000:80

#Get secret
kubectl get secret loki-stack-grafana -n loki -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
