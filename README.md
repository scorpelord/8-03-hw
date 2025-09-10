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

```
git clone https://github.com/netology-code/ter-homeworks.git
cd ter-homeworks/01/src
terraform init
terraform apply
value: "yes"
nano terraform.tfstate
nano main.tf
terraform validate

```

При необходимости прикрепитe сюда скриншоты

<img width="494" height="171" alt="image" src="https://github.com/user-attachments/assets/7cacbf07-e19c-4c96-abe7-698ecee2d7ed" />

<img width="709" height="528" alt="image" src="https://github.com/user-attachments/assets/46665a87-4feb-41e4-be64-52c229322a05" />

<img width="840" height="549" alt="image" src="https://github.com/user-attachments/assets/939b8ab0-ccff-4758-9547-05592470eb72" />

<img width="562" height="437" alt="image" src="https://github.com/user-attachments/assets/e1730164-c118-444e-85d3-a5fb48ef2442" />

<img width="464" height="61" alt="image" src="https://github.com/user-attachments/assets/e77d93e2-60a6-4dfe-b032-c0d0135d7d16" />
