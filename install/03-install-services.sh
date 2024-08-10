#!bin/bash

#Install and configure dashboard services
cp minikube-start.sh ~/minikube-start.sh
cp minipf-start.sh ~/minipf-start.sh

#TODO: Need to extract the systemctl packages and check into codebase.
#TODO: Add scripts to create the services
# # Setup auto startup
# Minikube has been setup to auto start on boot via the linux systemd service.
# # Service names
# # minikube: Starts the minikube service
# # miniportf: Start the port forwarding

# Some helpful commands for checking services
# * systemctl start minikube
# * systemctl status minikube
# * systemctl start miniportf
# * systemctl status miniportf
