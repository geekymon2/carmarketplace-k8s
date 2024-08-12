# Installation Scripts

- These scripts will install minikube and other dependencies

## Setup auto startup

Minikube has been setup to auto start on boot via the linux systemd service.

### Service names

#### minikube: Starts the minikube service

#### miniportf: Start the port forwarding

Some helpful commands for checking services

- systemctl start minikube
- systemctl status minikube
- systemctl start miniportf
- systemctl status miniportf
