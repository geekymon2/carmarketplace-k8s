#!/bin/bash

./00-deploy-namespace.sh ci
./01-create-secrets.sh ci
./02-deploy-app.sh ci geekymon2-desktop 30421 30001 minikube