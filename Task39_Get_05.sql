-- Создай и выполни запрос для получения компьютеров, которые ни разу не купили пользователи из Киева
-- (во вложенном запросе определи список компьютеров, приобретаемых клиентами из Киева. 
-- Во внешнем запросе выбираются только те компьютеры, которые не входят в этот список.)

USE computer_store
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
WHERE computerid NOT IN(SELECT computerid FROM orders WHERE customerid = ANY(SELECT customerid FROM customers WHERE city='Киев'));