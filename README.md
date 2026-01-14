# Домашнее задание к занятию "Запуск приложений в K8S" - `Молоствов Андрей`



### Задание 1

```
nano deployment-multitool.yaml
kubectl apply -f deployment-multitool.yaml
nano deployment-multitool-fixed.yaml
kubectl delete -f deployment-multitool.yaml
kubectl apply -f deployment-multitool-fixed.yaml
kubectl get pods -l app=multitool-app
kubectl scale deployment multitool-deployment --replicas=2
kubectl get pods -l app=multitool-app -w
nano multitool-service.yaml
kubectl apply -f multitool-service.yaml
```
<img width="716" height="240" alt="image" src="https://github.com/user-attachments/assets/d3c8a306-13c4-4042-848e-f6cf8553d569" />


### Задание 2

```

```


