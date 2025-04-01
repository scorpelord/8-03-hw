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
Используемые команды указаны ниже
```
   apt-get install keepalived -y
   chmod +x check_web.sh - для выполнения скрипта
   sudo apt update - обновление системы , для установки актуальных пакетов
   sudo apt install nginx -y - установка простого веб-сервера ( на 2-х машинах)
   sudo systemctl stop nginx - для проверки, что виртуальный IP переходит на другой сервер 
   



```

Это на первой машине vm1, когда порт был доступен
![first1](https://github.com/user-attachments/assets/f7448f27-1160-4ca5-b3dc-82cc1cf04a1c)

Тут уже не доступен порт и ip находится на vm2
![second2](https://github.com/user-attachments/assets/f670fd2d-a027-44d8-ac07-a0d8f16a2531)





