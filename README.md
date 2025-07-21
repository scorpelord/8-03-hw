# Домашнее задание к занятию "Основы Git" - `Молоствов Андрей`

---

### Задание 1
[GitLab_zadanie#1](https://gitlab.com/scorpelord-group/devops-netology)
```
cd /devops-netology
git remote add gitlab https://gitlab.com/scorpelord/devops-netology.git
git remote set-url origin https://scorpelord:TOKEN@gitlab.com/scorpelord-group/devops-netology.git
git push -u gitlab main
git remote -v

```

При необходимости прикрепитe сюда скриншоты




---

### Задание 2
Легковесный тег v0.0 не содержит дополнительной информации, кроме указания на коммит.

Аннотированный тег v0.1 включает сообщение, автора, дату и может содержать подпись.

[GitLabsTags](https://gitlab.com/scorpelord-group/devops-netology/-/tags)
```
git tag v0.0
git tag -a v0.1 -m "Release version 0.1"
git push origin v0.0
git push origin v0.1

```

При необходимости прикрепитe сюда скриншоты

### Задание 3
[GitHub](https://github.com/scorpelord/devops-netology)
[GitLab](https://gitlab.com/scorpelord-group/devops-netology)

```
git checkout main
git log --oneline
git checkout 7514d6b
git switch -c fix
git push -u origin fix
git add README.md
git commit -m "Update README.md with new line"
git push

```

При необходимости прикрепитe сюда скриншоты

<img width="992" height="494" alt="image" src="https://github.com/user-attachments/assets/6c8e73cf-dc22-4fad-8bf1-f3befa99844e" />








....
