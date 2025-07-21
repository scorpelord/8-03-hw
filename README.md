# Домашнее задание к занятию "Ветвления в Git" - `Молоствов Андрей`

---

### Задание 1

```
mkdir branching
cd branching
touch merge.sh rebase.sh

"#!/bin/bash
   # display command line options

   count=1
   for param in "$*"; do
       echo "\$* Parameter #$count = $param"
       count=$(( $count + 1 ))
   done"

git add .
git commit -m "prepare for merge and rebase"
git push origin main   

git checkout -b git-merge

" #!/bin/bash
   # display command line options

   count=1
   for param in "$@"; do
       echo "\$@ Parameter #$count = $param"
       count=$(( $count + 1 ))
   done"

git add merge.sh
git commit -m "merge: @ instead *"
git push origin git-merge

"#!/bin/bash
   # display command line options

   count=1
   while [[ -n "$1" ]]; do
       echo "Parameter #$count = $1"
       count=$(( $count + 1 ))
       shift
   done"

git add merge.sh
git commit -m "merge: use shift"
git push origin git-merge

git checkout main

" #!/bin/bash
   # display command line options

   count=1
   for param in "$@"; do
       echo "\$@ Parameter #$count = $param"
       count=$(( $count + 1 ))
   done

   echo "=====""

git add rebase.sh
git commit -m "Update rebase.sh in main"
git push origin main

git log
git checkout ...

git checkout -b git-rebase

" #!/bin/bash
   # display command line options

   count=1
   for param in "$@"; do
       echo "Parameter: $param"
       count=$(( $count + 1 ))
   done

   echo "=====""

git add rebase.sh
git commit -m "git-rebase 1"
git push origin git-rebase

" #!/bin/bash
   # display command line options

   count=1
   for param in "$@"; do
      "Next parameter: $param"
       count=$(( $count + 1 ))
   done

   echo "=====""

git add rebase.sh
git commit -m "git-rebase 2"
git push origin git-rebase

git checkout main
git merge git-merge
git rebase main git-rebase
git checkout main
git merge git-rebase
git push origin main

git checkout main
git merge git-merge
git push

git checkout git-rebase
git rebase -i main
git add rebase.sh
git rebase --continue

git add rebase.sh
git rebase --continue
git push -u origin git-rebase -f
git checkout main
git merge git-rebase

```

При необходимости прикрепитe сюда скриншоты

<img width="900" height="340" alt="image" src="https://github.com/user-attachments/assets/b3adcd60-4f37-4c82-ae37-4979c23a40d7" />






---









