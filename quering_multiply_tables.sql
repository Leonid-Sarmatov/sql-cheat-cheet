
customers:
  customer_id |    name   
-----------------------------
       1      |  John Doe  
-----------------------------
       2      |  Jane Smith
-----------------------------
       3      | Alice Jones  


orders:
  order_id | customer_id | product
------------------------------------
     165   |      1      | Laptop  
------------------------------------
     166   |      2      | Smartphone 
------------------------------------
     167   |      1      | Tablet   
------------------------------------
     168   |      4      | Headphones   


# Inner join возвращает таблицу из заданых полей. Поля беруться
# из строк, в которых совпадают определенные значения. 
# Пример:
SELECT customers.name, orders.product FROM customers INNER JOIN orders ON customers.customer_id = orders.customer_id;
# Результат:
     name    |   product   
-----------------------------
   John Doe  |    Laptop  
-----------------------------
   John Doe  |    Tablet
-----------------------------
  Jane Smith |  Smartphone


# Left join работает аналогично. Однако left join ориентируется на левую таблицу
# и в выводе будут все клиенты из таблицы. Те клиенты у кого не было закказов будут иметь
# пустое поле заказа. Пример:
SELECT customers.name, orders.product FROM customers LEFT JOIN orders ON customers.customer_id = orders.customer_id;
# Результат:
     name    |   product   
-----------------------------
   John Doe  |    Laptop  
-----------------------------
   John Doe  |    Tablet
-----------------------------
  Jane Smith |  Smartphone
-----------------------------
 Alice Jones |     NULL
