# Домашнее задание к занятию "Введение в Ansible" - `Молоствов Андрей`

---

### Задание 1
Используемые команды указаны ниже
```
apt install ansible-core

git clone https://github.com/netology-code/08-ansible-01-base_02.25.git
git clone https://github.com/scorpelord/ansible-playbook.git
cp -r playbook/* ansible-playbook/

ansible-playbook -i inventory/test.yml site.yml


```
<img width="1238" height="448" alt="image" src="https://github.com/user-attachments/assets/fa78e7fc-477a-4cc1-99fb-d6d761f6c397" />


### Задание 2

```
find . -name "*.yml" -type f | xargs grep -l "some_fact" 2>/dev/null
cat group_vars/all/examp.yml
nano group_vars/all/examp.yml

```

<img width="1249" height="361" alt="image" src="https://github.com/user-attachments/assets/df341c96-0fe2-449c-a5d0-751ecfa08b0a" />

### Задание 3

```
snap install docker
docker run -d --name debian-container pycontribs/debian:latest sleep 6000

```
<img width="1248" height="222" alt="image" src="https://github.com/user-attachments/assets/61d922a0-0a3c-457f-889f-c4f547611898" />

### Задание 4

```
docker run -d --name ubuntu pycontribs/ubuntu:latest sleep 6000
docker run -d --name centos7 pycontribs/centos:7 sleep 6000
ansible-playbook -i inventory/test.yml site.yml
```
<img width="1255" height="216" alt="image" src="https://github.com/user-attachments/assets/3c49519c-9cdc-46d9-a2f6-509a949fbd44" />

<img width="1255" height="228" alt="image" src="https://github.com/user-attachments/assets/fa18524e-b206-44f8-8174-a2898a7c2f6d" />

<img width="1257" height="635" alt="image" src="https://github.com/user-attachments/assets/a730970b-6afb-431a-9fa9-405943be468c" />

### Задание 5

```
mkdir -p group_vars/deb
mkdir -p group_vars/el
echo 'some_fact: "deb default fact"' > group_vars/deb/examp.yml
echo 'some_fact: "el default fact"' > group_vars/el/examp.yml

```

### Задание 6

```
ansible-playbook -i inventory/prod.yml site.yml
```

<img width="1255" height="638" alt="image" src="https://github.com/user-attachments/assets/9bb0b7c5-3604-4357-83bc-73c5e8944fe6" />

### Задание 7

```
echo "netology" > vault.key
chmod 600 vault.key
ansible-vault encrypt group_vars/deb/examp.yml --vault-password-file=vault.key
ansible-vault encrypt group_vars/el/examp.yml --vault-password-file=vault.key
```

<img width="1255" height="638" alt="image" src="https://github.com/user-attachments/assets/99c6b100-9716-47ff-99bb-2d03aa06436a" />

### Задание 8

```

```




