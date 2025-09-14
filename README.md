# Домашнее задание к занятию "Основы Terraform. Yandex Cloud" - `Молоствов Андрей`



### Задание 1
Ошибка указывает на то, что Terraform не может найти файл ~/.authorized_key.json. Это происходит потому, что функция file() ищет файл в относительном пути от текущего рабочего каталога Terraform, а не в домашней директории пользователя.
- preemptible = true: Эти ВМ дешевле, но могут быть завершены в любое время. Полезны для кратковременных задач.
- core_fraction=5: Позволяет установить минимальную долю процессорного времени, обеспечивая экономию ресурсов для задач с низким приоритетом.
```
terraform init
terraform validate
terraform apply
ssh ubuntu@158.160.117.222
curl ifconfig.me
```

При необходимости прикрепитe сюда скриншоты

<img width="1968" height="277" alt="image" src="https://github.com/user-attachments/assets/3341bdf4-ec0c-4556-80dc-563c3d9a776a" />

<img width="637" height="408" alt="image" src="https://github.com/user-attachments/assets/e1a88545-76b6-4dbe-ba2d-a43f6c81c03a" />


### Задание 2


```
terraform plan

```

При необходимости прикрепитe сюда скриншоты

<img width="804" height="433" alt="image" src="https://github.com/user-attachments/assets/03b0457a-c7a3-4e71-ac00-36bdd12f2947" />

### Задание 3


```
terraform plan
terraform apply

```

При необходимости прикрепитe сюда скриншоты

<img width="818" height="336" alt="image" src="https://github.com/user-attachments/assets/57d540d9-eb2a-423a-ad5e-14e259ca9252" />

### Задание 4


```
terraform apply
terraform output

```

При необходимости прикрепитe сюда скриншоты

<img width="555" height="458" alt="image" src="https://github.com/user-attachments/assets/b217aed9-c216-430d-a9d9-858143384c68" />

### Задание 5


```


```

При необходимости прикрепитe сюда скриншоты

