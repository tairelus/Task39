USE computer_store
SET FOREIGN_KEY_CHECKS=0;

TRUNCATE components;
TRUNCATE computer_providers;
TRUNCATE computer_types;
TRUNCATE computer_vendors;
TRUNCATE computers;
TRUNCATE customers;
TRUNCATE orders;

/************************************
 * Fill computer_types table
 * typeid auto-incremented
/************************************/
INSERT INTO computer_types (typename) VALUES ('Desktop');
INSERT INTO computer_types (typename) VALUES ('Laptop');
INSERT INTO computer_types (typename) VALUES ('Tablet');

/************************************
 *Fill computer_vendors table
 ************************************/
INSERT INTO computer_vendors (vendorid, vendorname, vendoraddress, vendorphone)
VALUES (
  '2714513601' -- vendorid - CHAR(10) NOT NULL
 ,'MSI' -- vendorname - VARCHAR(50)
 ,'No. 631, Zhongzheng Road Zhonghe District' -- vendoraddress - VARCHAR(50)
 ,'8-800-700-77-08' -- vendorphone - VARCHAR(50)
);

INSERT INTO computer_vendors (vendorid, vendorname, vendoraddress, vendorphone)
VALUES (
  '2714513602' -- vendorid - CHAR(10) NOT NULL
 ,'Asus' -- vendorname - VARCHAR(50)
 ,'No. 631, Zhongzheng Road Zhonghe District' -- vendoraddress - VARCHAR(50)
 ,'8-800-700-88-08' -- vendorphone - VARCHAR(50)
);

INSERT INTO computer_vendors (vendorid, vendorname, vendoraddress, vendorphone)
VALUES (
  '2714513603' -- vendorid - CHAR(10) NOT NULL
 ,'Gigabyte Technology' -- vendorname - VARCHAR(50)
 ,'No. 631, Zhongzheng Road Zhonghe District' -- vendoraddress - VARCHAR(50)
 ,'8-800-700-99-08' -- vendorphone - VARCHAR(50)
);

INSERT INTO computer_vendors (vendorid, vendorname, vendoraddress, vendorphone)
VALUES (
  '2714513604' -- vendorid - CHAR(10) NOT NULL
 ,'Acer' -- vendorname - VARCHAR(50)
 ,'No. 631, Zhongzheng Road Zhonghe District' -- vendoraddress - VARCHAR(50)
 ,'8-800-700-00-08' -- vendorphone - VARCHAR(50)
);

/************************************
 *Fill computer_providers table
/************************************/
INSERT INTO computer_store.computer_providers (providerid, providername, provideraddress, providerphone)
VALUES
(
  '2714513605' -- providerid - CHAR(10) NOT NULL
 ,'Telemart' -- providername - VARCHAR(50)
 ,'Киев, Довженко 3, 3057' -- provideraddress - VARCHAR(50)
 ,'8-800-700-00-08' -- providerphone - VARCHAR(50)
);

INSERT INTO computer_store.computer_providers (providerid, providername, provideraddress, providerphone)
VALUES
(
  '2714513606' -- providerid - CHAR(10) NOT NULL
 ,'Matrix.ua' -- providername - VARCHAR(50)
 ,'Вадима Гетьмана, 13, 3055 Киев, г. Киев, Ukraine' -- provideraddress - VARCHAR(50)
 ,'380442602609' -- providerphone - VARCHAR(50)
);

INSERT INTO computer_store.computer_providers (providerid, providername, provideraddress, providerphone)
VALUES
(
  '2714513607' -- providerid - CHAR(10) NOT NULL
 ,'ITBOX' -- providername - VARCHAR(50)
 ,'Машиностроительная 44, 3680 Киев, г. Киев, Ukraine' -- provideraddress - VARCHAR(50)
 ,'0 (800) 501-258' -- providerphone - VARCHAR(50)
);


/************************************
 * Fill computers table
 ************************************/
INSERT INTO computers (typeid, computername, computerprice, balance, vendorid, providerid)
VALUES
(  
 1 -- typeid - INT(11)
 ,'Base game PC' -- computername - VARCHAR(50)
 ,70000 -- computerprice - INT(11)
 ,260 -- balance - INT(11)
 ,'2714513601' -- vendorid - CHAR(10)
 ,'2714513605' -- providerid - CHAR(10)
);

INSERT INTO computers (typeid, computername, computerprice, balance, vendorid, providerid)
VALUES
(  
 2 -- typeid - INT(11)
 ,'Base game Laptop' -- computername - VARCHAR(50)
 ,80000 -- computerprice - INT(11)
 ,560 -- balance - INT(11)
 ,'2714513601' -- vendorid - CHAR(10)
 ,'2714513606' -- providerid - CHAR(10)
);

INSERT INTO computers (typeid, computername, computerprice, balance, vendorid, providerid)
VALUES
(  
 3 -- typeid - INT(11)
 ,'Base game Tablet' -- computername - VARCHAR(50)
 ,50000 -- computerprice - INT(11)
 ,0 -- balance - INT(11)
 ,'2714513602' -- vendorid - CHAR(10)
 ,'2714513607' -- providerid - CHAR(10)
);


/************************************
 * Fill components table
 ************************************/
INSERT INTO components (computerid, componentname, componentnum)
VALUES
(
  1 -- computerid - INT(11)
 ,'Intel Core i3-6100' -- componentname - VARCHAR(50)
 ,1 -- componentnum - INT(11)
);

INSERT INTO components (computerid, componentname, componentnum)
VALUES
(
  1 -- computerid - INT(11)
 ,'DDR3-1600, 4Gb' -- componentname - VARCHAR(50)
 ,2 -- componentnum - INT(11)
);

INSERT INTO components (computerid, componentname, componentnum)
VALUES
(
  1 -- computerid - INT(11)
 ,'HDD 1000 Gb, 7200 rpm' -- componentname - VARCHAR(50)
 ,1 -- componentnum - INT(11)
);

INSERT INTO components (computerid, componentname, componentnum)
VALUES
(
  1 -- computerid - INT(11)
 ,'Intel H110/B150 (LGA1151)' -- componentname - VARCHAR(50)
 ,1 -- componentnum - INT(11)
);

INSERT INTO components (computerid, componentname, componentnum)
VALUES
(
  1 -- computerid - INT(11)
 ,'NVIDIA GeForce GTX 750 Ti' -- componentname - VARCHAR(50)
 ,1 -- componentnum - INT(11)
);

INSERT INTO components (computerid, componentname, componentnum)
VALUES
(
  1 -- computerid - INT(11)
 ,'Middle Tower ATX, 450 W' -- componentname - VARCHAR(50)
 ,1 -- componentnum - INT(11)
);

INSERT INTO components (computerid, componentname, componentnum)
VALUES
(
  1 -- computerid - INT(11)
 ,'Display 23, IPS matrix, DVI/HDMI' -- componentname - VARCHAR(50)
 ,1 -- componentnum - INT(11)
);

/************************************
 * Fill customers table
 ************************************/
INSERT INTO customers (firstname, secondname, city, address, country, phone)
VALUES
(
  'Customer1' -- firstname - VARCHAR(50)
 ,'Customer1' -- secondname - VARCHAR(50)
 ,'Киев' -- city - VARCHAR(50)
 ,'ул. Прорезная, 4' -- address - VARCHAR(50)
 ,'Ukraine' -- country - VARCHAR(50)
 ,'380442602600' -- phone - VARCHAR(50)
);

INSERT INTO customers (firstname, secondname, city, address, country, phone)
VALUES
(
  'Customer2' -- firstname - VARCHAR(50)
 ,'Customer2' -- secondname - VARCHAR(50)
 ,'Киев' -- city - VARCHAR(50)
 ,'ул. Прорезная, 5' -- address - VARCHAR(50)
 ,'Ukraine' -- country - VARCHAR(50)
 ,'380442602601' -- phone - VARCHAR(50)
);

INSERT INTO customers (firstname, secondname, city, address, country, phone)
VALUES
(
  'Customer3' -- firstname - VARCHAR(50)
 ,'Customer3' -- secondname - VARCHAR(50)
 ,'Одесса' -- city - VARCHAR(50)
 ,'ул. Молдаванская, 8' -- address - VARCHAR(50)
 ,'Ukraine' -- country - VARCHAR(50)
 ,'380672602602' -- phone - VARCHAR(50)
);

INSERT INTO customers (firstname, secondname, city, address, country, phone)
VALUES
(
  'Customer4' -- firstname - VARCHAR(50)
 ,'Customer5' -- secondname - VARCHAR(50)
 ,'Одесса' -- city - VARCHAR(50)
 ,'ул. Молдаванская, 10' -- address - VARCHAR(50)
 ,'Ukraine' -- country - VARCHAR(50)
 ,'380672602603' -- phone - VARCHAR(50)
);

/************************************
 * Fill orders table
 ************************************/
-- ЗК-00001, Киев
INSERT INTO orders (orderid, customerid, orderstartdate, ordercompletedate, computerid, number, amount)
VALUES
(
  'ЗК-00001' -- orderid - VARCHAR(50)
 ,1 -- customerid - INT(11)
 ,NOW() -- orderstartdate - DATETIME
 ,NOW() -- ordercompletedate - DATETIME
 ,1 -- computerid - INT(11)
 ,5 -- number - INT(11)
 ,350000 -- amount - INT(11)
);

INSERT INTO orders (orderid, customerid, orderstartdate, ordercompletedate, computerid, number, amount)
VALUES
(
  'ЗК-00001' -- orderid - VARCHAR(50)
 ,1 -- customerid - INT(11)
 ,NOW() -- orderstartdate - DATETIME
 ,NOW() -- ordercompletedate - DATETIME
 ,2 -- computerid - INT(11)
 ,6 -- number - INT(11)
 ,480000 -- amount - INT(11)
);

-- ЗК-00002, Киев
INSERT INTO orders (orderid, customerid, orderstartdate, ordercompletedate, computerid, number, amount)
VALUES
(
  'ЗК-00002' -- orderid - VARCHAR(50)
 ,2 -- customerid - INT(11)
 ,NOW() -- orderstartdate - DATETIME
 ,NOW() -- ordercompletedate - DATETIME
 ,1 -- computerid - INT(11)
 ,11 -- number - INT(11)
 ,770000 -- amount - INT(11)
);

INSERT INTO orders (orderid, customerid, orderstartdate, ordercompletedate, computerid, number, amount)
VALUES
(
  'ЗК-00002' -- orderid - VARCHAR(50)
 ,2 -- customerid - INT(11)
 ,NOW() -- orderstartdate - DATETIME
 ,NOW() -- ordercompletedate - DATETIME
 ,2 -- computerid - INT(11)
 ,10 -- number - INT(11)
 ,800000 -- amount - INT(11)
);

-- ЗК-00003, Одесса
INSERT INTO orders (orderid, customerid, orderstartdate, ordercompletedate, computerid, number, amount)
VALUES
(
  'ЗК-00003' -- orderid - VARCHAR(50)
 ,3 -- customerid - INT(11)
 ,NOW() -- orderstartdate - DATETIME
 ,NOW() -- ordercompletedate - DATETIME
 ,1 -- computerid - INT(11)
 ,10 -- number - INT(11)
 ,700000 -- amount - INT(11)
);

INSERT INTO orders (orderid, customerid, orderstartdate, ordercompletedate, computerid, number, amount)
VALUES
(
  'ЗК-00003' -- orderid - VARCHAR(50)
 ,3 -- customerid - INT(11)
 ,NOW() -- orderstartdate - DATETIME
 ,NOW() -- ordercompletedate - DATETIME
 ,3 -- computerid - INT(11)
 ,1 -- number - INT(11)
 ,50000 -- amount - INT(11)
);

SET FOREIGN_KEY_CHECKS=1;