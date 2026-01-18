# Домашнее задание к занятию "Helm" - `Молоствов Андрей`


### Задание 1

```
helm create myapp-chart
cd myapp-chart
rm -rf templates/* values.yaml
nano Chart.yam
nano values.yaml
nano templates/nginx-deployment.yaml
nano templates/nginx-service.yaml
nano templates/multitool-deployment.yaml
```


### Задание 2

```
kubectl create namespace app1
kubectl create namespace app2
cd ..
helm install app1-release ./myapp-chart \
  --namespace app1 \
  --set image.tag="alpine" \
  --set replicaCount=1
  
  helm install app2-release ./myapp-chart \
  --namespace app2 \
  --set image.tag="stable" \
  --set replicaCount=2 \
  --set service.type=NodePort

helm list --all-namespaces
kubectl get pods -n app1 --show-labels
kubectl get pods -n app2 --show-labels
```
<img width="1205" height="269" alt="image" src="https://github.com/user-attachments/assets/d50d4ab5-be1c-418f-a42c-da7524a74b40" />

