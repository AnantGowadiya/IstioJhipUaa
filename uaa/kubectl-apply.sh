#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash kubectl-apply.sh

logSummary(){
    echo ""
    echo "#####################################################"
    echo "Please find the below useful endpoints,"
    echo "JHipster Console - http://jhipster-console.gotham.34.67.38.135.nip.io"
    echo "#####################################################"
}

kubectl apply -f namespace.yml
kubectl label namespace gotham istio-injection=enabled --overwrite=true
kubectl apply -f gateway/
kubectl apply -f quotes/
kubectl apply -f uaa/
kubectl apply -f console/

logSummary
