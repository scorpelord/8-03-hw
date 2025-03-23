# Домашнее задание к занятию "Система мониторинга Zabbix" - `Молоствов Андрей`

---

### Задание 1
Используемые команды указаны ниже
```
Поле для вставки кода...

apt-get install postgresql

wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_latest_6.0+debian12_all.deb

dpkg -i zabbix-release_latest_6.0+debian12_all.deb

apt update

apt install zabbix-server-pgsql zabbix-frontend-php php8.2-pgsql zabbix-apache-conf zabbix-sql-scripts

su - postgres -c 'psql --command "CREATE USER zabbix WITH PASSWORD
'\'123456789\'';"'

su - postgres -c 'psql --command "CREATE DATABASE zabbix OWNER zabbix;"'

nano file /etc/zabbix/zabbix_server.conf

systemctl restart zabbix-server apache2![4](https://github.com/user-attachments/assets/a7c107b0-64c1-4a10-84b0-2323f7b4cc40)

systemctl enable zabbix-server apache2

https://192.168.123.3/zabbix

```

`При необходимости прикрепитe сюда скриншоты
![Adminka](https://github.com/user-attachments/assets/78d6c9af-58a3-4249-be3e-f7f3b2e56302)



`


---

### Задание 2

Только заметил, что установлен старый VMBox и нет в сети выбора нескольких адаптеров, чтобы соединить 2 хоста на zabbix server, так как указать не могу, могу прокомментрировать принцип подключения: 
1) установка zabbix-agent на 2-ю VM с официального сайта zabbix
2) изменить в /etc/zabbix/zabbix_server.conf Server= 192.168.123.0/24 - указав подсеть 2-х хостов.
3) по принципу установки zabbix-agent на VM zabbix server - добавить новый узел, добавить одну общую группу и шаблон , указать IP VM и оставить порт по дефолту.
Прикладываю снизу скриншот настроек VMBox.

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
![Hosts](https://github.com/user-attachments/assets/d148e046-2b9d-4546-bc51-c613f5da4bba)
![Logi](https://github.com/user-attachments/assets/2cdb909b-0691-4856-b282-85955bcd7557)
![Latest Data](https://github.com/user-attachments/assets/e065fbd4-ff36-4b5d-87a9-f5d5a38d458a)







....
