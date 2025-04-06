# Домашнее задание к занятию 3 "Резервное копирование" - `Молоствова Андрея`


### Задание 1

Используемые команды ниже
```
sudo apt update
sudo apt install rsync
rsync -a --checksum --exclude='/.*' ~/ /tmp/backup
rsync -av --checksum --exclude='/.*' ~/ /tmp/backup
```

![1](https://github.com/user-attachments/assets/076abb2a-7d11-476e-b025-05ed0dd0161f)
![2](https://github.com/user-attachments/assets/3a6f7c9a-0c9a-4ca0-af90-260645b1a31c)



---

### Задание 2

Используемые команды ниже, скриншот проверки cron также ниже, файл crontab, закреплен выше
```
touch backup.sh
nano backup.sh
chmod +x backup.sh
crontab -e
nano or vim = 1
0 0 * * * /path/to/backup.sh
```
![3](https://github.com/user-attachments/assets/97540aae-1a01-49b1-951a-07b69df6b877)


