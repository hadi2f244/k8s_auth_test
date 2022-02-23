
export KUBECONFIG=./admin.conf 

echo -e "Allowd commands: \n"
echo -e "> kubectl get services\n"
kubectl get services

echo -e "\n ########################################## \n"
echo -e "Restricted commands: \n"
echo -e "> kubectl get pods\n"
kubectl get pods
