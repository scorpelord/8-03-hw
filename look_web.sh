#!/bin/bash

# указал ip-адрес и порт веб-сервера
IP="192.168.111.15"
PORT="8080"

#указал 8080, так как 80 порт занят

FILE="/var/www/html/index.html"
# проверка доступности порта
nc -z $IP $PORT
PORT_STATUS=$?

# проверка существования файла index.html
if [ -f $FILE ]; then
    FILE_STATUS=0
else
    FILE_STATUS=1
fi

# если порт недоступен или файл отсутствует, возвращается код ошибки
if [ $PORT_STATUS -ne 0 ] || [ $FILE_STATUS -ne 0 ]; then
    exit 1
else
    exit 0
fi
