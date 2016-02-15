-- Создай и выполни запрос для получения компьютеров, которые покупали только пользователи из Киева и никто другой.

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
WHERE computerid <> ALL(SELECT computerid FROM orders WHERE customerid = ANY(SELECT customerid FROM customers WHERE city<>'Киев'));
-- WHERE computerid NOT IN(SELECT computerid FROM orders WHERE customerid = ANY(SELECT customerid FROM customers WHERE city<>'Киев'));
