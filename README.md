# Домашнее задание к занятию "Индексы" - `Молоствов Андрей`

---

### Задание 1
Используемые команды указаны ниже
```
SELECT 
    ROUND(SUM(index_length) / SUM(data_length) * 100, 2) AS index_to_data_ratio_percentage
FROM 
    information_schema.tables
WHERE 
    table_schema = 'sakila';

```

При необходимости прикрепитe сюда скриншоты

![first-table](https://github.com/user-attachments/assets/6318b440-0b1c-448b-b2d2-97341945d45f)







---

### Задание 2
1)Отсутствие явных соединений (JOINS) - использование устаревшего синтаксиса соединений может привести к неэффективности.
2)Отсутствие индексов - если индексы отсутствуют, производительность может сильно пострадать, особенно при фильтрации и соединении.
3)Функции в условиях - использование date(p.payment_date) в условии может привести к тому, что индекс на payment_date, если он существует, не будет использоваться.

```
#1
 SELECT DISTINCT 
        CONCAT(c.last_name, ' ', c.first_name) AS customer_name,
        SUM(p.amount) OVER (PARTITION BY c.customer_id, f.title) AS total_amount
    FROM 
        payment p
    JOIN 
        rental r ON p.payment_date = r.rental_date
    JOIN 
        customer c ON r.customer_id = c.customer_id
    JOIN 
        inventory i ON r.inventory_id = i.inventory_id
    JOIN 
        film f ON i.film_id = f.film_id
    WHERE 
        p.payment_date >= '2005-07-30 00:00:00' 
        AND p.payment_date < '2005-07-31 00:00:00';
#3
CREATE INDEX idx_payment_date ON payment(payment_date);
CREATE INDEX idx_rental_date ON rental(rental_date);
CREATE INDEX idx_customer_id ON customer(customer_id);
CREATE INDEX idx_inventory_id ON inventory(inventory_id);
```

При необходимости прикрепитe сюда скриншоты

![second-table](https://github.com/user-attachments/assets/977d3232-78ec-40d3-9a41-05f12c0317a9)
![third-table](https://github.com/user-attachments/assets/423592c1-6ad4-4669-80e1-2b20042ec6e1)






....
