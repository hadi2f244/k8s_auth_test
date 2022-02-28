#!/bin/bash

export NAMESPACE="demo"
export K8S_USER="demo-user"

echo -e "\nadmin token: \n"
kubectl -n ${NAMESPACE} describe secret $(kubectl -n ${NAMESPACE} get secret | (grep ${K8S_USER} || echo "$_") | awk '{print $1}') | grep token: | awk '{print $2}'\n

echo -e "\nadmin certificate:\n"
kubectl  -n ${NAMESPACE} get secret `kubectl -n ${NAMESPACE} get secret | (grep ${K8S_USER} || echo "$_") | awk '{print $1}'` -o "jsonpath={.data['ca\.crt']}"
echo -e "\n"
