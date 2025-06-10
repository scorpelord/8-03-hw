# Домашнее задание к занятию "Очереди RabbitMQ" - `Молоствов Андрей`

---

### Задание 1

Установка RabbitMQ

Используемые команды указаны ниже
```
Поле для вставки кода...

apt-get update

apt-get install -y curl gnupg

curl -fsSL https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | sudo apt-key add -

echo "deb https://packages.erlang-solutions.com/ubuntu $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/erlang.list

apt-get update

apt-get install -y erlang

curl -fsSL https://packagecloud.io/rabbitmq/rabbitmq-server/gpgkey | sudo apt-key add -

echo "deb https://packagecloud.io/rabbitmq/rabbitmq-server/ubuntu/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/rabbitmq.list

apt-get update

apt-get install -y rabbitmq-server

rabbitmq-plugins enable rabbitmq_management

systemctl start rabbitmq-server

systemctl enable rabbitmq-server

```

`При необходимости прикрепитe сюда скриншоты
![rabbitserv](https://github.com/user-attachments/assets/25d0d69a-2970-423f-8925-88fffa9a1105)




`


---

### Задание 2

Отправка и получение сообщений

```
Поле для вставки кода...

apt-get install python3.10
apt-get install python3-pip
python3 -m venv venv
source venv/bin/activate
pip install pika
python producer.py

```

`При необходимости прикрепитe сюда скриншоты
![rabbitserv2](https://github.com/user-attachments/assets/857a9804-46f3-433f-9f7a-f93203acf94b)
![rabbitserv3](https://github.com/user-attachments/assets/d10a9b90-b919-4576-a197-e69c9a3758fa)



### Задание 3

Подготовка HA кластера.
Почему-то имена rmq01 и rmq02 не срабатывали, хотя в файле конфигурации я их поменял, оставил по названиям машин, возможно, в этом и было дело...


```
Поле для вставки кода...

nano /etc/hosts
192.168.0.10 vm1
192.168.0.11 vm2

vm1:
rabbitmqctl stop_app
rabbitmqctl reset
rabbitmqctl start_app

vm2:
rabbitmqctl stop_app
rabbitmqctl reset
rabbitmqctl join_cluster rabbit@vm1
rabbitmqctl start_app   

rabbitmqctl cluster_status
rabbitmqctl set_policy ha-all ""
'{"ha-mode":"all","ha-sync-mode":"automatic"}'
rabbitmqadmin get queue='hello'

```

`При необходимости прикрепитe сюда скриншоты
![rabbitserv4](https://github.com/user-attachments/assets/63c5278b-75d8-4f40-a02b-14fca194f701)
![rabbitserv5](https://github.com/user-attachments/assets/270f1f9f-68f0-46bc-9f8d-3d8fd084c10b)
![cluster](https://github.com/user-attachments/assets/c6dc95fb-6368-4ef2-bdf4-d2f05c7777ff)
![noda1](https://github.com/user-attachments/assets/4dfe4d22-92a4-4e2f-b9c6-4b3f86d2b0f8)
![node2](https://github.com/user-attachments/assets/a13ef364-d86a-4076-a3c5-1729ddc686ee)





....
