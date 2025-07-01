# Домашнее задание к занятию "Защита хоста" - `Молоствов Андрей`

---

### Задание 1
Используемые команды указаны ниже
```
apt install ecryptfs-utils
adduser cryptouser
modprobe ecryptfs
ecryptfs-migrate-home -u cryptouser

```

При необходимости прикрепитe сюда скриншоты

![first](https://github.com/user-attachments/assets/a34ae6c9-f53b-41bc-b65f-03167fd0cb7a)






---

### Задание 2



```
apt install cryptsetup
fallocate -l 100M luks-volume.img
losetup -fP luks-volume.img
losetup -l
cryptsetup luksFormat /dev/loop0
cryptsetup open /dev/loop0 encrypted-volume
mkfs.ext4 /dev/mapper/encrypted-volume
mkdir /mnt/encrypted
mount /dev/mapper/encrypted-volume /mnt/encrypted


```

При необходимости прикрепитe сюда скриншоты

![second-table](https://github.com/user-attachments/assets/44224629-ddd6-4d68-b397-e8c1d01a27b1)







....
