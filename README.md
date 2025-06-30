# Домашнее задание к занятию "Репликация и масштабирование. Часть 1" - `Молоствов Андрей`

---

### Задание 1
Master-Slave
Структура: Один сервер master для записи, несколько slave-серверов для чтения.
Плюсы: Увеличивает производительность чтения и позволяет создавать резервные копии.
Минусы: Если master выходит из строя, требуется ручное переключение. Возможны задержки в репликации.

Master-Master
Структура: Два или более серверов master, каждый из которых поддерживает операции записи.
Плюсы: Высокая доступность и балансировка нагрузки. Обеспечивает отказоустойчивость.
Минусы: Возможны конфликты данных при одновременных записях. Более сложная настройка.


---

### Задание 2


```
nano /etc/mysql/my.cnf
[mysqld]
server-id = 1
log-bin = mysql-bin

systemctl restart mysql

mysql -u sys_temp -p
CREATE USER 'replica_user'@'%' IDENTIFIED BY 'password';
   GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
   FLUSH PRIVILEGES;

SHOW MASTER STATUS;

nano /etc/mysql/my.cnf
[mysqld]
server-id = 2

systemctl restart mysql

CHANGE MASTER TO
     MASTER_HOST='master_host',
     MASTER_USER='replica_user',
     MASTER_PASSWORD='password',
     MASTER_LOG_FILE='mysql-bin.000001',
     MASTER_LOG_POS=786;

START SLAVE;

SHOW SLAVE STATUS\G



```

При необходимости прикрепитe сюда скриншоты

![first-info](https://github.com/user-attachments/assets/7e0da174-7b04-41b8-a06c-2bbaded67d49)







....
