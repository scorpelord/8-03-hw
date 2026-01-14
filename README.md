# Домашнее задание к занятию "Система мониторинга Zabbix" - `Молоствов Андрей`

### Задание 1

```
nano deployment-multi.yaml
kubectl apply -f deployment-multi.yaml
nano service-clusterip.yaml
kubectl apply -f service-clusterip.yaml
kubectl run test-pod --image=wbitt/network-multitool:alpine-extra --rm -it --restart=Never -- sh
curl multi-clusterip:9001
curl multi-clusterip:9002
exit
kubectl run test --image=curlimages/curl --restart=Never --rm -it -- curl -s multi-clusterip:9001 | head -5
kubectl run test --image=curlimages/curl --restart=Never --rm -it -- curl -s multi-clusterip:9002 | head -5
nano service-nodeport.yaml
kubectl apply -f service-nodeport.yaml
minikube ip
kubectl get svc multi-nodeport
curl http://192.168.49.2:30001
```
<img width="619" height="73" alt="image" src="https://github.com/user-attachments/assets/f333aee4-9459-4d43-a83d-0a5af2461a92" />

<img width="631" height="110" alt="image" src="https://github.com/user-attachments/assets/e42f3249-245d-4349-8905-3e87e605c45a" />

<img width="702" height="106" alt="image" src="https://github.com/user-attachments/assets/c666afdd-7980-488c-83b4-6a83fb8e7aeb" />

<img width="715" height="69" alt="image" src="https://github.com/user-attachments/assets/d8fa1130-b5a8-4026-acda-09eecd188cce" />

<img width="716" height="104" alt="image" src="https://github.com/user-attachments/assets/125c5eca-8522-40a6-9891-5be57a94595d" />

<img width="690" height="83" alt="image" src="https://github.com/user-attachments/assets/5b386f75-aace-40b6-b7c1-d7347e5b507d" />

### Задание 2



```

```

