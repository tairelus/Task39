-- Создай и выполни запрос для получения компьютеров по коду товара со склада.
USE computer_store;

SELECT
  computerid,
  typeid,
  computername,
  computerprice,
  balance,
  vendorid,
  providerid
FROM computers
WHERE typeid = 1;