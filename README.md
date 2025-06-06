# Домашнее задание к занятию "ELK" - `Молоствов Андрей`

---

### Задание 1
Установите и запустите Elasticsearch, после чего поменяйте параметр cluster_name на случайный.

Используемые команды указаны ниже
```
командой не выводится, привожу скриншот с указанием необходимого кластера


```

![777](https://github.com/user-attachments/assets/1382c2ab-8755-4413-bad7-337893a725e1)



---

### Задание 2

Kibana также не устанавливается, помощь сайтов-форумов не помогает 

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
