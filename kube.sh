git clone https://github.com/accuknox/KubeArmor.git
cd KubeArmor/contribution/microk8s/
./install_microk8s.sh 
alias kube='sudo microk8s kubectl'
kube get ns
cd ../../deployments/microk8s/
alias kube='sudo microk8s kubectl'
kube get po -n kube-system
kube apply -f kubearmor.yaml
cd ../CRD/
kube apply -f KubeArmorHostPolicy.yaml 
kube apply -f KubeArmorPolicy.yaml
