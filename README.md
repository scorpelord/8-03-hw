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






---

### Задание 2



```
SELECT COUNT(*) AS film_count
FROM film
WHERE length > (SELECT AVG(length) FROM film);

```

`При необходимости прикрепитe сюда скриншоты

![second-table](https://github.com/user-attachments/assets/4ba37e08-3dad-4acb-bcfb-6ee0cf6f0787)


### Задание 3



```
WITH monthly_payments AS (
    SELECT 
        DATE_FORMAT(payment_date, '%Y-%m') AS payment_month,
        SUM(amount) AS total_payment,
        COUNT(r.rental_id) AS rental_count
    FROM 
        payment p
    JOIN 
        rental r ON p.rental_id = r.rental_id
    GROUP BY 
        payment_month
)
SELECT 
    payment_month,
    total_payment,
    rental_count
FROM 
    monthly_payments
ORDER BY 
    total_payment DESC
LIMIT 1;
```

`При необходимости прикрепитe сюда скриншоты

![third-table](https://github.com/user-attachments/assets/00850335-e8ed-4286-8703-f2e976e7acb1)






....
