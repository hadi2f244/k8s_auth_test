#!/bin/bash 

kubectl get namespaces
kubectl get roles -n demo
kubectl get rolebindings --namespace demo
kubectl get constraint
kubectl get constrainttemplate
