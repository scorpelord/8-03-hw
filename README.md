# Домашнее задание к занятию "Средство визуализации Grafana" - `Молоствов Андрей`


### Задание 1

```
mkdir -p monitoring-stack/prometheus
cd monitoring-stack
docker-compose up -d
docker-compose ps
```
<img width="1228" height="204" alt="image" src="https://github.com/user-attachments/assets/56edb8bb-86db-44bf-8f7c-58e4c9fe861f" />

<img width="1275" height="723" alt="image" src="https://github.com/user-attachments/assets/d3245574-2f1e-4d9f-a7b0-e6c3e32869c7" />

### Задание 2

pomql CPU Utilization
```
100 - (avg by(instance)(rate(node_cpu_seconds_total{mode="idle"}[1m])) * 100)
```

pomql Free Memory
```
node_memory_MemFree_bytes / 1024 / 1024 / 1024
```

pomql Free Disk Space
```
node_filesystem_free_bytes{fstype!="tmpfs",mountpoint="/"} / 1024 / 1024 / 1024
```

<img width="1269" height="703" alt="image" src="https://github.com/user-attachments/assets/e86736df-fceb-4d98-820a-07a04d7973fd" />


### Задание 3

<img width="1268" height="537" alt="image" src="https://github.com/user-attachments/assets/1929dba5-ab74-4ecf-9268-e66b44e0e8cd" />

### Задание 4

JSON Model находится в данном репозитории, в файлах

<img width="913" height="548" alt="image" src="https://github.com/user-attachments/assets/27cf2308-deb8-467a-89f5-13dfee5c978a" />
