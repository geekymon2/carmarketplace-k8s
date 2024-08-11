kubectl create -f ./k8s-namespace/carmarketplace-k8s-namespace-dev.yaml
kubectl create -f ./k8s-namespace/kubetail.yaml
kubectl apply -f ./k8s-deployment --recursive