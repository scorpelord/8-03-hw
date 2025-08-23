# Домашнее задание к занятию "Оркестрация группой Docker контейнеров на примере Docker Compose" - `Молоствов Андрей`



### Задание 1

https://hub.docker.com/repository/docker/scorpelord/custom-nginx/general
```
wget https://download.docker.com/linux/static/stable/x86_64/docker-20.10.24.tgz
tar xzvf docker-20.10.24.tgz
mv docker/* /usr/local/bin/
dockerd &
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker login
docker build -t scorpelord/custom-nginx:1.0.0 .
docker push scorpelord/custom-nginx:1.0.0

```

При необходимости прикрепитe сюда скриншоты
<img width="721" height="178" alt="image" src="https://github.com/user-attachments/assets/f3070915-337c-47af-937a-01f5928de1e2" />
<img width="719" height="219" alt="image" src="https://github.com/user-attachments/assets/430168ae-ceaf-491f-b1a6-1f30849041e1" />





### Задание 2
Так как порт 8080 занят и необходим под другие здачи, был выделн порт 8081
```
docker run -d --name molostvovas-custom-nginx-t2 -p 127.0.0.1:8081:80 scorpelord/custom-nginx:1.0.0
curl http://127.0.0.1:8081

```

При необходимости прикрепитe сюда скриншоты

<img width="450" height="249" alt="image" src="https://github.com/user-attachments/assets/9a0f69ea-00be-4540-aea5-5f754837f251" />
