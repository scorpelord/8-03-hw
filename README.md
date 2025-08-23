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
docker rename molostvovas-custom-nginx-t2 custom-nginx-t2
date +"%d-%m-%Y %T.%N %Z"
sleep 0.150
docker ps
ss -tlpn | grep 127.0.0.1:8080
docker logs custom-nginx-t2 -n1
docker exec -it custom-nginx-t2 base64 /usr/share/nginx/html/index.html
```

При необходимости прикрепитe сюда скриншоты

<img width="450" height="249" alt="image" src="https://github.com/user-attachments/assets/9a0f69ea-00be-4540-aea5-5f754837f251" />
<img width="741" height="374" alt="image" src="https://github.com/user-attachments/assets/c4d5db88-e39d-443d-8ecf-0e390e95094e" />
<img width="1238" height="217" alt="image" src="https://github.com/user-attachments/assets/5ae4541f-f47c-4897-a402-0adbc87a622c" />

### Задание 3

контейнер остановился, потому что это команда прерывания, которая завершает основной процесс в контейнере, в состоянии "Exited", так как основной процесс Nginx был прерван

```
docker attach custom-nginx-t2
docker ps -a


```

При необходимости прикрепитe сюда скриншоты

<img width="1169" height="493" alt="image" src="https://github.com/user-attachments/assets/8faa882d-6fd5-471f-8737-3be29e478e2c" />

