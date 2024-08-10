#!/bin/bash

#Install and configure Grafana
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

#Install and configure Grafana Agent
helm upgrade --install grafana-agent --namespace=loki grafana/grafana-agent --values grafana-agent-values.yaml

#Install and configure Loki Stack
helm install loki-stack grafana/loki-stack --values loki-stack-values.yaml -n loki --create-namespace

#Port forward Grafana
kubectl port-forward svc/loki-stack-grafana 3000:80 -n loki