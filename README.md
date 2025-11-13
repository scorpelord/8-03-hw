# Домашнее задание к занятию "Тестирование roles" - `Молоствов Андрей`

Ссылка на репозиторий: https://github.com/scorpelord/vector-role

### Задание Molecule

```
python3 -m venv venv
source venv/bin/activate
pip install "molecule" "molecule-docker" "molecule-podman" "docker" "ansible-core"
molecule init scenario default --driver-name docker
ALLOW_BROKEN_CONDITIONALS=1 molecule test

```

При необходимости прикрепитe сюда скриншоты

<img width="1189" height="99" alt="image" src="https://github.com/user-attachments/assets/d053960e-aafe-4721-ad75-3b2dc0ab19fc" />

<img width="1551" height="460" alt="image" src="https://github.com/user-attachments/assets/0f29aa64-35df-49e1-b84e-54b8db7fb7d3" />

<img width="1551" height="508" alt="image" src="https://github.com/user-attachments/assets/1ca43541-9db9-4de7-810f-84014acba90d" />



### Задание TOX

```
molecule init scenario compatibility --driver-name podman
docker run --privileged=True -v $(pwd):/opt/vector-role -w /opt/vector-role -it aragast/netology:latest /bin/bash
tox

```

При необходимости прикрепитe сюда скриншоты

<img width="1551" height="549" alt="image" src="https://github.com/user-attachments/assets/e11e74ac-6b52-4280-a8b2-13727b835f09" />

<img width="1551" height="207" alt="image" src="https://github.com/user-attachments/assets/18fc8342-2e70-4b1e-aabe-baea01b26a53" />

<img width="1551" height="424" alt="image" src="https://github.com/user-attachments/assets/f01ea4eb-9b3c-444e-b276-66c47f649870" />

![Uploading image.png…]()






