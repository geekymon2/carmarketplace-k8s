#!/bin/bash
# NOTE: before running this script make sure to replace placeholders with actual values
# NOTE: Do not check in this file with secret values
ENV=$1

# Check mandatory parameter
if [ -z "$ENV" ]; then
    echo "Usage: ./<script> <environment> e.g. 'dev', 'ci', 'staging', 'prod'" 
    exit 1
fi

kubectl delete secret encryptkeysecret --namespace carmarketplace-$ENV
kubectl delete secret carinfodbuser --namespace carmarketplace-$ENV
kubectl delete secret carlistingdbuser --namespace carmarketplace-$ENV
kubectl delete secret userdbuser --namespace carmarketplace-$ENV
kubectl delete secret carinfodbpassword --namespace carmarketplace-$ENV
kubectl delete secret carlistingdbpassword --namespace carmarketplace-$ENV
kubectl delete secret userdbpassword --namespace carmarketplace-$ENV
kubectl delete secret jwtauthsecret --namespace carmarketplace-$ENV

kubectl create secret generic encryptkeysecret --namespace carmarketplace-$ENV --from-literal encryptkeysecret=$ENCRYPT_KEY_SECRET
kubectl create secret generic carinfodbuser --namespace carmarketplace-$ENV --from-literal carinfodbuser=$DB_USER
kubectl create secret generic carlistingdbuser --namespace carmarketplace-$ENV --from-literal carlistingdbuser=$DB_USER
kubectl create secret generic userdbuser --namespace carmarketplace-$ENV --from-literal userdbuser=$DB_USER
kubectl create secret generic carinfodbpassword --namespace carmarketplace-$ENV --from-literal carinfodbpassword=$DB_PASSWORD
kubectl create secret generic carlistingdbpassword --namespace carmarketplace-$ENV --from-literal carlistingdbpassword=$DB_PASSWORD
kubectl create secret generic userdbpassword --namespace carmarketplace-$ENV --from-literal userdbpassword=$DB_PASSWORD
kubectl create secret generic jwtauthsecret --namespace carmarketplace-$ENV --from-literal jwtauthsecret=$JWT_AUTH_SECRET