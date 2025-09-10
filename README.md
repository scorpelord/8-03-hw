# Домашнее задание к занятию "Введение в Terraform" - `Молоствов Андрей`

---

### Чек-лист 

```
wget https://hashicorp-releases.yandexcloud.net/terraform/1.8.4/terraform_1.8.4_linux_amd64.zip
unzip terraform_1.8.4_linux_amd64.zip
mv terraform /usr/local/bin/
terraform --version
docker --version

```

При необходимости прикрепитe сюда скриншоты

<img width="284" height="101" alt="image" src="https://github.com/user-attachments/assets/b9feb277-8b89-4296-9217-c6bc32e5ff03" />


<img width="368" height="91" alt="image" src="https://github.com/user-attachments/assets/a63ccdb2-4ab1-4a16-bc9a-fded713b911d" />


### Задание 1

Согласно .gitignore, личную, секретную информацию допустимо сохранить в файле personal.auto.tfvars. Этот файл будет проигнорирован Git и не попадет в систему контроля версий.

В файле main.tf были намеренно допущены следующие ошибки:
1. Отсутствие объявления ресурса docker_image:
Ошибка заключалась в ссылке на docker_image.nginx.image_id без соответствующего объявления ресурса. Это приводит к ошибке, так как Terraform не может найти ресурс с таким именем и типом.
2. Неправильное имя ресурса docker_container:
Первоначально имя ресурса начиналось с цифры (1nginx), что нарушает правила именования в Terraform. Имена должны начинаться с буквы или подчеркивания.
3. Отсутствие объявления ресурса random_password:
Ссылка на random_password.random_string_FAKE указывает на несуществующий или неправильно названный ресурс. Это может быть намеренно созданная ошибка, чтобы показать важность правильных ссылок на ресурсы.

Использование флага -auto-approve автоматически применяет изменения без запроса на подтверждение. Это может быть опасно, так как может случайно создать, изменить или удалить ресурсы, не проверив план действий, что может привести к неожиданным изменениям в инфраструктуре.

Данный флаг полезен для автоматизации процессов, таких как непрерывная интеграция и развертывание CI/CD, где требуется автоматическое применение изменений без вмешательства человека.
```
git clone https://github.com/netology-code/ter-homeworks.git
cd ter-homeworks/01/src
terraform init
terraform apply
value: "yes"
nano terraform.tfstate
nano main.tf
terraform validate
terraform init
terraform apply
docker ps
terraform apply -auto-approve
terraform destroy -auto-approve
docker ps -a
```

При необходимости прикрепитe сюда скриншоты

<img width="494" height="171" alt="image" src="https://github.com/user-attachments/assets/7cacbf07-e19c-4c96-abe7-698ecee2d7ed" />

<img width="709" height="528" alt="image" src="https://github.com/user-attachments/assets/46665a87-4feb-41e4-be64-52c229322a05" />

<img width="840" height="549" alt="image" src="https://github.com/user-attachments/assets/939b8ab0-ccff-4758-9547-05592470eb72" />

<img width="562" height="437" alt="image" src="https://github.com/user-attachments/assets/e1730164-c118-444e-85d3-a5fb48ef2442" />

<img width="464" height="61" alt="image" src="https://github.com/user-attachments/assets/e77d93e2-60a6-4dfe-b032-c0d0135d7d16" />

<img width="1244" height="479" alt="image" src="https://github.com/user-attachments/assets/edceff49-d772-490f-9730-b9b3cef1e396" />

<img width="1011" height="228" alt="image" src="https://github.com/user-attachments/assets/b3ae1fa1-111c-4c1f-ac79-a078dea59721" />

<img width="1021" height="176" alt="image" src="https://github.com/user-attachments/assets/042fbabe-5efe-49bc-a5a1-99ff68c87db3" />

<img width="1012" height="134" alt="image" src="https://github.com/user-attachments/assets/cc4ba119-cbac-4694-b101-c94d4c49166a" />

