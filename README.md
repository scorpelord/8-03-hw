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

<img width="1081" height="173" alt="image" src="https://github.com/user-attachments/assets/f87a9dce-b9f2-4847-b59b-c126e5ffeb3a" />

<img width="521" height="459" alt="image" src="https://github.com/user-attachments/assets/8092be05-8278-4c9c-b1d9-3560fa4bd8bb" />



### Задание 3


```
touch compose.yaml
"version: '3.8'

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
      DB_HOST: db
      DB_USER: ${DB_USER}
      DB_PASSWORD: ${DB_PASSWORD}
      DB_NAME: ${DB_NAME}
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
      MYSQL_DATABASE: ${DB_NAME}
      MYSQL_USER: ${DB_USER}
      MYSQL_PASSWORD: ${DB_PASSWORD}
    volumes:
      - db_data:/var/lib/mysql

networks:
  backend:
    external: true

volumes:
  db_data:

include:
  - proxy.yaml
"
docker-compose -f compose.yaml up -d
docker ps


```

При необходимости прикрепитe сюда скриншоты

<img width="1222" height="219" alt="image" src="https://github.com/user-attachments/assets/01adaa1e-1d13-4759-9bb5-5e3875c2895a" />

<img width="377" height="476" alt="image" src="https://github.com/user-attachments/assets/174d8af6-aa66-4c22-8e09-3d8b3d242ae1" />






