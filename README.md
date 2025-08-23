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
после изменения конфигурации Nginx на использование порта 81, Nginx больше не слушает на порту 80 внутри контейнера. Это приводит к тому, что перенаправление с хоста (порт 8080) на контейнер (порт 80) не работает, так как порт 80 внутри контейнера не используется.

```
docker attach custom-nginx-t2
docker ps -a
docker start custom-nginx-t2
docker exec -it custom-nginx-t2 bash
apt-get update
apt-get install -y nano
nano /etc/nginx/conf.d/default.conf
nginx -s reload
curl http://127.0.0.1:80
curl http://127.0.0.1:81
ss -tlpn | grep 127.0.0.1:8080
docker port custom-nginx-t2
curl http://127.0.0.1:8080
docker rm -f custom-nginx-t2
```

При необходимости прикрепитe сюда скриншоты

<img width="650" height="250" alt="image" src="https://github.com/user-attachments/assets/afc5e2c3-62b6-4ae6-b376-20e800f8be1e" />

<img width="721" height="414" alt="image" src="https://github.com/user-attachments/assets/7977c472-b63a-4daf-9bed-0fbf5aeb0084" />

<img width="617" height="276" alt="image" src="https://github.com/user-attachments/assets/8ff2f462-35be-4bf7-ba77-b6794e84b8c2" />

<img width="891" height="156" alt="image" src="https://github.com/user-attachments/assets/910a768a-8bec-4022-a689-d846bfce90e5" />

### Задание 4

```
docker run -d --name centos-container -v $(pwd):/data centos:7 sleep infinity
docker run -d --name debian-container -v $(pwd):/data debian:latest sleep infinity
docker exec -it centos-container bash
echo "Hello from CentOS" > /data/centos-file.txt
exit
echo "Hello from Host" > $(pwd)/host-file.txt
docker exec -it debian-container bash
ls /data
cat /data/centos-file.txt
cat /data/host-file.txt
exit
```

При необходимости прикрепитe сюда скриншоты

<img width="989" height="552" alt="image" src="https://github.com/user-attachments/assets/24667500-14e3-4d46-8ed7-8ea4bce1e3ea" />

### Задание 5
По умолчанию будет использован файл docker-compose.yaml. потому, что Docker Compose по умолчанию ищет файл с именем docker-compose.yml или docker-compose.yaml

```
mkdir -p /tmp/netology/docker/task5
cd /tmp/netology/docker/task5
nano compose.yaml
nano docker-compose.yaml
docker-compose up -d
nano compose.yaml
docker-compose up -d
docker tag scorpelord/custom-nginx:1.0.0 127.0.0.1:5000/custom-nginx:latest
docker push 127.0.0.1:5000/custom-nginx:latest
rm -r compose.yaml
docker-compose up -d
docker-compose down
```

При необходимости прикрепитe сюда скриншоты

<img width="1123" height="334" alt="image" src="https://github.com/user-attachments/assets/181430a8-5c78-4ffa-9ad0-5c14c82bdc20" />

<img width="1113" height="334" alt="image" src="https://github.com/user-attachments/assets/90ce2811-656f-4cd1-8268-1d6df3359b48" />

<img width="1034" height="211" alt="image" src="https://github.com/user-attachments/assets/b7a675a3-dfb0-4ccd-8c87-0d4bde8cf998" />

<img width="1086" height="709" alt="image" src="https://github.com/user-attachments/assets/79417977-78b1-47ec-bf65-2458287a5e24" />

<img width="1059" height="611" alt="image" src="https://github.com/user-attachments/assets/8faa95ed-5ba4-44cc-9179-13736ff335ef" />

<img width="414" height="599" alt="image" src="https://github.com/user-attachments/assets/6ccf385c-5e76-4155-8e03-f44292f43476" />

<img width="1104" height="294" alt="image" src="https://github.com/user-attachments/assets/cf0ff771-e6e7-414b-98c1-ad0ae5cccad1" />

