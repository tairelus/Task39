-- Реализовать возможность получить из БД пользователей, в сделках которых количество товара 
-- превышает такой же показатель хотя бы в одной сделке клиентов из Одессы.

-- Этот запрос под сделками понимает строки таблицы заказов orders. Но у меня одна сделка - это несколько строк
-- В этом случае все сложнее.       

USE computer_store;
SELECT
  customers.customerid,
  firstname,
  secondname,
  city,
  address,
  country,
  phone, orders.orderid, orders.number 
FROM customers
INNER JOIN orders 
    ON customers.customerid = orders.customerid
  WHERE orders.number > ANY(SELECT orders.number
    FROM customers INNER JOIN orders 
    ON customers.customerid = orders.customerid
WHERE customers.city='Одесса');

