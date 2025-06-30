# Домашнее задание к занятию "Работа с данными (DDL/DML)" - `Молоствов Андрей`

---

### Задание 1
Используемые команды указаны ниже
```
Поле для вставки кода...

wget https://dev.mysql.com/get/mysql-apt-config_0.8.26-1_all.deb

dpkg -i mysql-apt-config_0.8.26-1_all.deb

apt update

apt install mysql-server

systemctl start mysql

mysql_secure_installation

systemctl enable mysql

nano file /etc/zabbix/zabbix_server.conf

mysql -u root -p

MySQL:
DROP USER 'sys_temp'@'localhost';
CREATE USER 'sys_temp'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'sys_temp'@'localhost' WITH GRANT OPTION;
SHOW GRANTS FOR 'sys_temp'@'localhost';
mysql -u sys_temp -p
SET PASSWORD FOR 'sys_temp'@'localhost' = PASSWORD('password');
mysql -u sys_temp -p < /home/molostvovas/Загрузки/sakila-db/sakila-schema.sql
mysql -u sys_temp -p < /home/molostvovas/Загрузки/sakila-db/sakila-data.sql
SHOW TABLES IN sakila;
```

`При необходимости прикрепитe сюда скриншоты

![first-table](https://github.com/user-attachments/assets/0a77e5f6-c729-44dd-8a43-f5ad73dee6ec)
![second-table](https://github.com/user-attachments/assets/13c7e2d3-c7af-4cf6-b78a-4f0c7dde81f8)
![third-tables](https://github.com/user-attachments/assets/62252e12-56f3-46f2-876e-fa048bd407a7)





`


---

### Задание 2


```
Поле для вставки кода...

MySQL:
 SELECT 
       table_name, 
       column_name 
   FROM 
       information_schema.key_column_usage 
   WHERE 
       table_schema = 'sakila' 
       AND constraint_name = 'PRIMARY';

```

`При необходимости прикрепитe сюда скриншоты
![forty-table](https://github.com/user-attachments/assets/26de16ab-1527-4348-ae12-97ff9c55ed3a)








....
