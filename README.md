# Домашнее задание к занятию "Базовые объекты K8S" - `Молоствов Андрей`


### Задание 1

```
mkdir k8s-tasks
cd k8s-tasks
nano hello-world-pod.yaml
kubectl apply -f hello-world-pod.yaml
kubectl get pods -w
kubectl port-forward pod/hello-world 8080:8080
curl http://localhost:8080
```
<img width="675" height="250" alt="image" src="https://github.com/user-attachments/assets/1054aced-d970-44f3-982f-7585ddf6ce04" />

<img width="561" height="87" alt="image" src="https://github.com/user-attachments/assets/1a65d717-75f5-408f-b793-aa27f88552d0" />

<img width="658" height="120" alt="image" src="https://github.com/user-attachments/assets/a5b15271-93fe-4483-90d0-b47bf961446e" />

<img width="455" height="520" alt="image" src="https://github.com/user-attachments/assets/1a5221c0-c8f4-4cde-b7f3-b240b8b7406c" />

### Задание 2

```
nano netology-web-pod.yaml
nano netology-svc.yaml
kubectl apply -f netology-web-pod.yaml
kubectl apply -f netology-svc.yaml
kubectl get pods
kubectl get svc
kubectl port-forward service/netology-svc 8080:80
```

<img width="640" height="155" alt="image" src="https://github.com/user-attachments/assets/b8b1e033-68e8-4be1-8ed9-c341f88c686c" />

<img width="602" height="205" alt="image" src="https://github.com/user-attachments/assets/4e2aef4c-6f13-4f59-88dc-d06711effdd3" />

<img width="505" height="484" alt="image" src="https://github.com/user-attachments/assets/096812c5-84f6-4e57-94c8-0a14b5250058" />






