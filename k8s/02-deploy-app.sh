#!/bin/bash
ENV=$1
HOST=$2

# Check mandatory parameter
if [ -z "$ENV" ]; then
    echo "Usage: ./<script> <environment> <dbhost>" 
    exit 1
fi

if [ -z "$HOST" ]; then
    echo "Usage: ./<script> <environment> <dbhost>" 
    exit 1
fi

find ./k8s-deployment/ -type f -print0 | while read -d $'\0' file
do
    echo "$file"
    sed -e "s/\$ENVIRONMENT/$ENV/" -e "s/\$DB_HOST/$HOST/" $file | kubectl apply -f -
done


#$(find ./k8s-deployment/ -type f) xargs | sed "s/\$ENVIRONMENT/$ENV/" | kubectl apply -f -


#kubectl apply -f ./k8s-deployment --recursive