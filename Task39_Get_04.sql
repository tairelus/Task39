-- ������ � ������� ������ ��� ��������� �����������, ������� �������� ������ ������������ �� ����� � ����� ������.

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
WHERE computerid <> ALL(SELECT computerid FROM orders WHERE customerid = ANY(SELECT customerid FROM customers WHERE city<>'����'));
-- WHERE computerid NOT IN(SELECT computerid FROM orders WHERE customerid = ANY(SELECT customerid FROM customers WHERE city<>'����'));
