# Kubernetes Command List #

## Nodes 
<p> $ kubectl get no </p>
<p> $ kubectl get no -o wide </p>
<p> $ kubectl describe no </p>
<p> $ kubectl get no -o yaml </p>
<p> $ kubectl get node --selector=[label_name] </p>
<p> $ kubectl get nodes -o jsonpath='{.items[*].status.addresses[?(@.type=="ExternalIP")]. address}' </p>
<p> $ kubectl top node [node_name] </p>

## Pods
<p> $ kubectl get po </p>
<p> $ kubectl get po -o wide </p>
<p> $ kubectl describe po </p>
<p> $ kubectl get po --show-labels </p>
<p> $ kubectl get po -l app=nginx </p>
<p> $ kubectl get po -o yaml </p>
<p> $ kubectl get pod [ pod_name] -o yaml --export </p>
<p> $ kubectl get pod [ pod_name] -o yaml --export > nameoffile.yaml </p>
<p> $ kubectl get pods --field-selector status.phase=Running </p>
​

## Namespaces
<p> $ kubectl get ns </p>
<p> $ kubectl get ns -o yaml </p>
<p> $ kubectl describe ns </p>

​
## Services
<p> $ kubectl get svc </p>
<p> $ kubectl describe svc </p>
<p> $ kubectl get svc -o wide </p>
<p> $ kubectl get svc -o yaml </p>
<p> $ kubectl get svc --show-labels </p>

​
## Deployments
<p> $ kubectl get deploy </p>
<p> $ kubectl describe deploy </p>
<p> $ kubectl get deploy -o wide </p>
<p> $ kubectl get deploy -o yaml </p>

​
## DaemonSets
<p> $ kubectl get ds </p>
<p> $ kubectl get ds --all-namespaces </p>
<p> $ kubectl describe ds [daemonset_name] -n [namespace_name] </p>
<p> $ kubectl get ds [ds_name] -n [ns_name] -o yaml </p>

​
## Events
<p> $ kubectl get events </p>
<p> $ kubectl get events -n kube-system </p>
<p> $ kubectl get events -w </p>

​
## Logs
<p> $ kubectl logs [pod_name] </p>
<p> $ kubectl logs --since=1h [pod_name] </p>
<p> $ kubectl logs --tail=20 [pod_name] </p>
<p> $ kubectl logs -f -c [container_name] [pod_name] </p>
<p> $ kubectl logs [pod_name] > pod.log </p>

​
## ServiceAccounts
<p> $ kubectl get sa </p>
<p> $ kubectl get sa -o yaml </p>
<p> $ kubectl get serviceaccounts default -o yaml./sa.yaml </p>
<p> $ kubectl replace serviceaccount default -f ./sa.yaml </p>

​
## ReplicaSets
<p> $ kubectl get rs </p>
<p> $ kubectl describe rs </p>
<p> $ kubectl get rs -o wide </p>
<p> $ kubectl get rs -o yaml </p>

​
## ReplicaControllers
<p> $ kubectl get rc </p>
<p> $ kubectl describe rc </p>
<p> $ kubectl get rc -o wide </p>
<p> $ kubectl get rc -o yaml </p>

​
## Roles
<p> $ kubectl get roles --allnamespaces </p>
<p> $ kubectl get roles --allnamespaces -o yaml </p>

​
## Secrets
<p> $ kubectl get secrets </p>
<p> $ kubectl get secrets --allnamespaces </p>
<p> $ kubectl get secrets -o yaml </p>

​
## ConfigMaps
<p> $ kubectl get cm </p>
<p> $ kubectl get cm --all-namespaces </p>
<p> $ kubectl get cm --all-namespaces -o yaml </p>

​
## Ingress
<p> $ kubectl get ing </p>
<p> $ kubectl get ing --allnamespaces </p>

​
## PersistentVolume
<p> $ kubectl get pv </p>
<p> $ kubectl describe pv </p>

​
## PersistentVolumeClaim
<p> $ kubectl get pvc </p>
<p> $ kubectl describe pvc </p>

​
## StorageClass
<p> $ kubectl get sc </p>
<p> $ kubectl get sc -o yaml </p>

​
## Multiple Resources
<p> $ kubectl get svc, po </p>
<p> $ kubectl get deploy, no </p>
<p> $ kubectl get all </p>
<p> $ kubectl get all --allnamespaces </p>

​
## Getting Help
<p> $ kubectl -h </p>
<p> $ kubectl create -h </p>
<p> $ kubectl run -h </p>
<p> $ kubectl explain deploy.spec </p>

​
## Cluster Info
<p> $ kubectl config </p>
<p> $ kubectl cluster-info </p>
<p> $ kubectl get component statuses </p>

​
## Output YAML to a File
<p> $ kubectl get po [pod_name] -o yaml --export >pod.yaml </p>
​
