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







....
