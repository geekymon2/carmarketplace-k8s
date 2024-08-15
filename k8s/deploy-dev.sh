#!/bin/bash

./00-deploy-namespace.sh dev
./01-create-secrets.sh dev
./02-deploy-app.sh dev geekymon2-desktop 30420 30000