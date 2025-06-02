# Домашнее задание к занятию "Кеширование Redis/memcached" - `Молоствов Андрей`

---

### Задание 1
Приведите примеры проблем, которые может решить кеширование.
1. Уменьшение нагрузки на базу данных
2. Экономия ресурсов
3. Увеличение пропускной способности
4. Повышение доступности


---

### Задание 2

Установите и запустите memcached.
Приведите скриншот systemctl status memcached, где будет видно, что memcached запущен.

```
Поле для вставки кода...

sudo apt update
sudo apt install memcached
sudo systemctl start memcached
sudo systemctl enable memcached
systemctl status memcached
   
```

`При необходимости прикрепитe сюда скриншоты
![123](https://github.com/user-attachments/assets/e5fb9be3-b215-47ac-a0ee-1d1a06d6e6bb)

### Задание 3

Запишите в memcached несколько ключей с любыми именами и значениями, для которых выставлен TTL 5.

```
Поле для вставки кода...

sudo apt install telnet
telnet localhost 11211
set key1 0 5 5
hello
set key2 0 5 7
world!
get key1
get key2
   
   
   
   
```

`При необходимости прикрепитe сюда скриншоты
![122](https://github.com/user-attachments/assets/bde718ed-c103-4ddf-a3d8-6ae3cf446402)






....
