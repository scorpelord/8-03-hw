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
![Adminka](https://github.com/user-attachments/assets/e2e41a34-3b61-47cc-b74c-d2743f9f98fc)


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
![Hosts](https://github.com/user-attachments/assets/7116cc8c-79e8-408d-bf5d-dddafeafce60)
![Logi](https://github.com/user-attachments/assets/0844bbe5-86d4-4115-b48e-e13312310486)
![Latest Data](https://github.com/user-attachments/assets/859e658d-8c3b-4c60-92ee-89d000146229)
![Problema Network](https://github.com/user-attachments/assets/89ec519f-0d32-44ce-a2f9-a5e0db54566a)






....
