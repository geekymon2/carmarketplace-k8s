#!/bin/bash
ENV=$1

# Check mandatory parameter
if [ -z "$ENV" ]; then
    echo "Usage: ./<script> <environment> e.g. 'dev', 'ci', 'staging', 'prod'" 
    exit 1
fi

kubectl create secret generic encryptkeysecret --namespace carmarketplace-$ENV --from-literal encryptkeysecret=r4qBPksanL
kubectl create secret generic carinfodbpassword --namespace carmarketplace-$ENV --from-literal carinfodbpassword=P@ssw0rd
kubectl create secret generic carlistingdbpassword --namespace carmarketplace-$ENV --from-literal carlistingdbpassword=P@ssw0rd
kubectl create secret generic userdbpassword --namespace carmarketplace-$ENV --from-literal userdbpassword=P@ssw0rd
kubectl create secret generic jwtauthsecret --namespace carmarketplace-$ENV --from-literal jwtauthsecret=zVJrrTE6ba