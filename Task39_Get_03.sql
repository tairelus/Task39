-- Создай и выполни запрос для получения компьютеров, которые покупали пользователи из Киева.

USE computer_store;
SELECT
  orderkey,
  orderid,
  customerid,
  orderstartdate,
  ordercompletedate,
  computerid,
  number,
  amount
FROM orders
WHERE customerid = ANY(SELECT customerid FROM customers WHERE city='Киев');