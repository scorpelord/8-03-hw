# Домашнее задание к занятию "SQL. Часть 1" - `Молоствов Андрей`

---

### Задание 1
Используемые команды указаны ниже
```
USE sakila;

SELECT DISTINCT district
FROM address
WHERE district LIKE 'K%a'
  AND district NOT LIKE '% %';


```

`При необходимости прикрепитe сюда скриншоты

![first-table](https://github.com/user-attachments/assets/c3f4925b-f99f-4a97-93c1-c3905d1b6319)





`


---

### Задание 2


```
SELECT *
FROM payment
WHERE payment_date BETWEEN '2005-06-15' AND '2005-06-18'
  AND amount > 10.00;

```

`При необходимости прикрепитe сюда скриншоты

![second-table](https://github.com/user-attachments/assets/721d601a-b8ab-4910-8d24-62792891d040)

---

### Задание 3


```
SELECT *
FROM rental
ORDER BY rental_date DESC
LIMIT 5;

```

`При необходимости прикрепитe сюда скриншоты

![third-table](https://github.com/user-attachments/assets/1cc8231b-a7c4-4b52-9da0-d01d1a153409)

---

### Задание 4


```
SELECT LOWER(REPLACE(first_name, 'LL', 'pp')) AS first_name,
       LOWER(last_name) AS last_name
FROM customer
WHERE active = 1
  AND (first_name = 'Kelly' OR first_name = 'Willie');

```

`При необходимости прикрепитe сюда скриншоты

![forty-table](https://github.com/user-attachments/assets/bbaf03ce-1365-4d18-9d83-492d8cf3f60a)










....
