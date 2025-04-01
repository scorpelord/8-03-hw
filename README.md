# Домашнее задание к занятию 1 "Disaster recovery и Keepalived" - `Молоствов Андрей`

---

### Задание 1
Используемые команды указаны ниже
```
   interface GigabitEthernet0/0
   ip address 192.168.0.3 255.255.255.0
   standby 1 ip 192.168.0.1
   standby 1 priority 100
   standby 1 preempt
   standby 1 track GigabitEthernet0/1

```


![first](https://github.com/user-attachments/assets/b6c44a52-823a-45c2-9e39-411cf1af073f)







---

### Задание 2

Файл скрипта и конфига прикрепил выше.
Скриншот плавающего ip адресса, прикладываю ниже.







....
