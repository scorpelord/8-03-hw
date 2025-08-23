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

```
docker run -d --name molostvovas-custom-nginx-t2 -p 127.0.0.1:8080:80 scorpelord/custom-nginx:1.0.0
curl http://127.0.0.1:8081
docker rename molostvovas-custom-nginx-t2 custom-nginx-t2
date +"%d-%m-%Y %T.%N %Z"
sleep 0.150
docker ps
ss -tlpn | grep 127.0.0.1:8080
docker logs custom-nginx-t2 -n1
docker exec -it custom-nginx-t2 base64 /usr/share/nginx/html/index.html
```

При необходимости прикрепитe сюда скриншоты

<img width="1114" height="512" alt="image" src="https://github.com/user-attachments/assets/61dad75b-33c2-4b81-9076-d0754eea856c" />

<img width="1238" height="217" alt="image" src="https://github.com/user-attachments/assets/5ae4541f-f47c-4897-a402-0adbc87a622c" />

### Задание 3

контейнер остановился, потому что это команда прерывания, которая завершает основной процесс в контейнере, в состоянии "Exited", так как основной процесс Nginx был прерван

```
docker attach custom-nginx-t2
docker ps -a


```

При необходимости прикрепитe сюда скриншоты

<img width="650" height="250" alt="image" src="https://github.com/user-attachments/assets/afc5e2c3-62b6-4ae6-b376-20e800f8be1e" />

<img width="721" height="414" alt="image" src="https://github.com/user-attachments/assets/7977c472-b63a-4daf-9bed-0fbf5aeb0084" />

<img width="617" height="276" alt="image" src="https://github.com/user-attachments/assets/8ff2f462-35be-4bf7-ba77-b6794e84b8c2" />

<img width="891" height="156" alt="image" src="https://github.com/user-attachments/assets/910a768a-8bec-4022-a689-d846bfce90e5" />
