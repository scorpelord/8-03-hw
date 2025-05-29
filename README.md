# Домашнее задание к занятию "Кеширование Redis/memcached" - `Молоствов Андрей`

---

### Задание 1
Приведите примеры проблем, которые может решить кеширование.
1. Уменьшение нагрузки на базу данных
2. Экономия ресурсов
3. Увеличение пропускной способности
4. Повышение доступности


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
