# Домашнее задание к занятию "SQL. Часть 2" - `Молоствов Андрей`

---

### Задание 1
Используемые команды указаны ниже
```
SELECT 
    CONCAT(LOWER(s.last_name), ', ', LOWER(s.first_name)) AS staff_name,
    ci.city AS store_city,
    COUNT(c.customer_id) AS customer_count
FROM 
    staff s
JOIN 
    store st ON s.store_id = st.store_id
JOIN 
    address a ON st.address_id = a.address_id
JOIN 
    city ci ON a.city_id = ci.city_id
JOIN 
    customer c ON c.store_id = st.store_id
GROUP BY 
    s.staff_id, ci.city
HAVING 
    COUNT(c.customer_id) > 300;


```

`При необходимости прикрепитe сюда скриншоты
![first-table](https://github.com/user-attachments/assets/cbb7e199-bf07-4d94-8b2a-d68792f29412)



`


---

### Задание 2



```
Поле для вставки кода...


```

`При необходимости прикрепитe сюда скриншоты








....
