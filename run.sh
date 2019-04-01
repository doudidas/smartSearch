#!/bin/bash
echo "Please choose in which namespace to deploy ? (default namespace: default)"
read namespace
if [ -z "$namespace" ]
then
    namespace="default"
fi
echo "Creating namespace"
kubectl create namespace $namespace
kubectl apply -f ./files --namespace=$namespace