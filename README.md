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

wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_latest_6.0+debian12_all.deb

dpkg -i zabbix-release_latest_6.0+debian12_all.deb

apt update

apt install zabbix-agent

systemctl restart zabbix-agent

systemctl enable zabbix-agent

cat /vat/log/zabbix/zabbix_agentd.log
```

`При необходимости прикрепитe сюда скриншоты
![rabbitserv2](https://github.com/user-attachments/assets/857a9804-46f3-433f-9f7a-f93203acf94b)
![Logi](https://github.com/user-attachments/assets/2cdb909b-0691-4856-b282-85955bcd7557)
![Latest Data](https://github.com/user-attachments/assets/e065fbd4-ff36-4b5d-87a9-f5d5a38d458a)







....
