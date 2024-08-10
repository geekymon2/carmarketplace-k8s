#!/bin/bash

#Install and configure Grafana
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

#Install and configure Grafana Agent
helm upgrade --install grafana-agent --namespace=loki grafana/grafana-agent --values grafana-agent-values.yaml

#Install and configure Loki Stack
helm upgrade --install loki --namespace=loki grafana/loki-stack --values loki-stack-values.yaml --create-namespace

#Port forward Grafana
kubectl port-forward svc/loki-stack-grafana 3000:80 -n loki

#Get secret
kubectl get secret loki-stack-grafana -n loki -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
