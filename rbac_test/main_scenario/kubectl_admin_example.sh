
export KUBECONFIG=./admin.conf 

echo -e "Allowd commands: \n"
echo -e "> kubectl get secrets\n"
kubectl get secrets

echo -e "\n ########################################## \n"
echo -e "Restricted commands: \n"
echo -e "> kubectl get nodes\n"
kubectl get nodes
