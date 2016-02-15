-- Реализовать возможность получить из БД пользователя, купившего компьютеров на сумму, превышающую 15000 USD.

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
WHERE customerid = (SELECT customerid FROM orders GROUP BY orderid HAVING SUM(amount)/100 > 15000);