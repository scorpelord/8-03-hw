# Домашнее задание к занятию 2 "Кластеризация и балансировка нагрузки" - `Молоствов Андрей`

---

### Задание 1
Конфиг файл прикреплен выше. Ниже предоставлены скриншоты перенаправления при отключении одного из сервера и при обращении к haproxy.

![1](https://github.com/user-attachments/assets/a34b8d42-e786-4148-ae90-0ba76ef79601)
![2](https://github.com/user-attachments/assets/4a72615f-fec1-4c70-91c5-956cc47131f7)






---

### Задание 2

Перенастроенный конфиг на другие порты прикреплен выше. Ниже командой curl показана балансировка. Конфиг прикреплен выше.

Используемые команды ниже 

```
python3 -m http.server 8001
python3 -m http.server 8002
python3 -m http.server 8003

haproxy -f /etc/haproxy/haproxy.cfg -c
systemctl restart haproxy
curl -H "Host: example.local" http://localhost:8888
     
     


```


![3](https://github.com/user-attachments/assets/2d8dbdd2-c932-4bc7-b020-4f075f195f9a)








