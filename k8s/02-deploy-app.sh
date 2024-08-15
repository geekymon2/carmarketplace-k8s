#!/bin/bash
ENV=$1
HOST=$2
UIPORT=$3
GATEWAYPORT=$4

# Check mandatory parameter
if [ -z "$ENV" ]; then
    echo "Usage: ./<script> <environment> <dbhost> <uiport> <gatewayport>"
    exit 1
fi

if [ -z "$HOST" ]; then
    echo "Usage: ./<script> <environment> <dbhost> <uiport> <gatewayport>"
    exit 1
fi

if [ -z "$UIPORT" ]; then
    echo "Usage: ./<script> <environment> <dbhost> <uiport> <gatewayport>"
    exit 1
fi

if [ -z "$GATEWAYPORT" ]; then
    echo "Usage: ./<script> <environment> <dbhost> <uiport> <gatewayport>"
    exit 1
fi

find ./k8s-deployment/ -type f -print0 | while read -d $'\0' file
do
    echo "$file"
    sed -e "s/\$ENVIRONMENT/$ENV/" -e "s/\$DB_HOST/$HOST/" -e "s/\$UI_PORT/$UIPORT/" -e "s/\$GATEWAY_PORT/$GATEWAYPORT/" $file | kubectl apply -f -
done
