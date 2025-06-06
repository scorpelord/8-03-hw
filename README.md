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

Установите и запустите Kibana.

Приведите скриншот интерфейса Kibana на странице http://<ip вашего сервера>:5601/app/dev_tools#/console, где будет выполнен запрос GET /_cluster/health?pretty.



```
# rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
# mcedit /etc/yum.repos.d/kibana.repo
[elastic-8.x]
name=Elastic repository for 8.x packages
baseurl=https://artifacts.elastic.co/packages/8.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md

apt install kibana
# /usr/share/elasticsearch/bin/elasticsearch-reset-password -u kibana_system
elasticsearch.username: "kibana_system"
elasticsearch.password: "mtbg5rIwh*E*eWuBCECG"
# cp -R /etc/elasticsearch/certs /etc/kibana
# chown -R root:kibana /etc/kibana/certs
elasticsearch.ssl.certificateAuthorities: [ "/etc/kibana/certs/http_ca.crt" ]
elasticsearch.hosts: ["https://127.0.0.1:9200"]
# systemctl restart kibana.service
```

`При необходимости прикрепитe сюда скриншоты
![888](https://github.com/user-attachments/assets/bbc90d31-be70-45c9-87ba-158eb6d37253)








....
