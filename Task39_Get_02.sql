-- Создай и выполни запрос для получения отсутствующих на складе компьютеров по коду товара.
USE computer_store;
SELECT
  computerid,
  typeid, -- Код товара 
  computername,
  computerprice,
  balance,
  vendorid,
  providerid
FROM computers
WHERE typeid = 3 AND balance = 0;