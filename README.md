# Домашнее задание к занятию "Практическое применение Docker" - `Молоствов Андрей`



### Задание 1
Используемые команды указаны ниже

```
git clone https://github.com/scorpelord/shvirtd-example-python/tree/main
cd shvirtd-example-python/
docker build -t python:3.12-slim -f Dockerfile.python .
docker run -p 5000:5000 python:3.12-slim

```

При необходимости прикрепитe сюда скриншоты

<img width="1144" height="549" alt="image" src="https://github.com/user-attachments/assets/4ae46f9b-8f47-46aa-b88b-83a0d58d6f8f" />

#<img width="1081" height="173" alt="image" src="https://github.com/user-attachments/assets/f87a9dce-b9f2-4847-b59b-c126e5ffeb3a" />#

<img width="521" height="459" alt="image" src="https://github.com/user-attachments/assets/8092be05-8278-4c9c-b1d9-3560fa4bd8bb" />



### Задание 3


```
touch compose.yaml
"
version: '3.8'

include:
  - proxy.yaml

services:
  web:
    build:
      context: .
      dockerfile: Dockerfile.python
    networks:
      backend:
        ipv4_address: 172.20.0.5
    restart: always
    environment:
      MYSQL_HOST: db
      MYSQL_USER: ${MYSQL_USER}
      MYSQL_PASSWORD: ${MYSQL_PASSWORD}
      MYSQL_DATABASE: ${MYSQL_DATABASE}
    ports:
      - "8090:5000"

  db:
    image: mysql:8
    networks:
      backend:
        ipv4_address: 172.20.0.10
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD}
      MYSQL_DATABASE: ${MYSQL_DATABASE}
      MYSQL_USER: ${MYSQL_USER}
      MYSQL_PASSWORD: ${MYSQL_PASSWORD}
"
docker-compose -f compose.yaml up -d
docker ps
docker-compose -f compose.yaml up -d

```

При необходимости прикрепитe сюда скриншоты

<img width="1130" height="156" alt="image" src="https://github.com/user-attachments/assets/6cb5f038-0a94-4c16-8d89-723bf64e1b23" />

<img width="377" height="476" alt="image" src="https://github.com/user-attachments/assets/174d8af6-aa66-4c22-8e09-3d8b3d242ae1" />

<img width="1126" height="109" alt="image" src="https://github.com/user-attachments/assets/678a9733-fef1-4182-b118-88ca4cb016c5" />





