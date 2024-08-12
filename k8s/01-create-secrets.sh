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
kubectl delete secret carinfodbpassword --namespace carmarketplace-$ENV
kubectl delete secret carlistingdbpassword --namespace carmarketplace-$ENV
kubectl delete secret userdbpassword --namespace carmarketplace-$ENV
kubectl delete secret jwtauthsecret --namespace carmarketplace-$ENV

kubectl create secret generic encryptkeysecret --namespace carmarketplace-$ENV --from-literal encryptkeysecret=[ENCRYPT_KEY_SECRET]
kubectl create secret generic carinfodbpassword --namespace carmarketplace-$ENV --from-literal carinfodbpassword=[CARINFO_DB_PASSWORD]
kubectl create secret generic carlistingdbpassword --namespace carmarketplace-$ENV --from-literal carlistingdbpassword=[CARLISTING_DB_PASSWORD]
kubectl create secret generic userdbpassword --namespace carmarketplace-$ENV --from-literal userdbpassword=[USER_DB_PASSWORD]
kubectl create secret generic jwtauthsecret --namespace carmarketplace-$ENV --from-literal jwtauthsecret=[JWT_AUTH_SECRET]