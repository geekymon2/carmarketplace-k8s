#!/bin/bash
ENV=$1
DBHOST=$2
UIPORT=$3
APIHOST=$5
APIPORT=$4


# Check mandatory parameter
if [[ -z "$ENV" || -z "$DBHOST" || -z "$UIPORT" || -z "$APIHOST" || -z "$APIPORT" ]]; then
    echo "Usage: ./<script> <env> <dbhost> <uiport> <apihost> <apiport>"
    exit 1
fi

find ./k8s-deployment/ -type f -print0 | while read -d $'\0' file
do
    echo "$file"
    sed -e "s/\$ENVIRONMENT/$ENV/" -e "s/\$DB_HOST/$DBHOST/" -e "s/\$UI_PORT/$UIPORT/" -e "s/\$API_PORT/$APIPORT/" -e "s/\$API_HOST/$APIHOST/" $file | kubectl apply -f -
done
