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
nano test-pod.yaml
kubectl apply -f test-pod.yaml
kubectl wait --for=condition=ready pod/test-client --timeout=60s
kubectl exec test-client -- curl -s http://multitool-service:80
kubectl exec test-client -- curl -s http://multitool-service:8080
kubectl exec test-client -- nslookup multitool-service
```
<img width="716" height="240" alt="image" src="https://github.com/user-attachments/assets/d3c8a306-13c4-4042-848e-f6cf8553d569" />

<img width="717" height="406" alt="image" src="https://github.com/user-attachments/assets/50952925-70d5-43bf-821a-ab9848b9c4f8" />

<img width="721" height="80" alt="image" src="https://github.com/user-attachments/assets/77e3a75a-a5a7-46b8-bc61-675116a3f005" />

<img width="715" height="162" alt="image" src="https://github.com/user-attachments/assets/2a30b965-978c-46bf-83ff-07f9b313aaab" />

### Задание 2

```

```


