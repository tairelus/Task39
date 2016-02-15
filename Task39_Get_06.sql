-- Реализовать возможность получить из БД пользователей совершивших сделки с максимальным количеством компьютеров.

USE computer_store;
SELECT
  customerid,
  firstname,
  secondname,
  city,
  address,
  country,
  phone
FROM customers
WHERE customerid = (SELECT customerid FROM orders GROUP BY orderid ORDER BY SUM(number) DESC LIMIT 1);