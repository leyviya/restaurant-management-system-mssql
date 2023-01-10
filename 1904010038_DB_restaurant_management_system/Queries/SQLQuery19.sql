USE [restaurant_management_system]
GO

UPDATE [dbo].[menu]
   SET [menu_id] = <menu_id, int,>
      ,[number] = <number, varchar(50),>
      ,[details] = <details, varchar(300),>
      ,[price] = <price, smallmoney,>
 WHERE <Search Conditions,,>
GO


SELECT menu.menu_id, menu.number, menu.price FROM menu
INNER JOIN restaurant_status
ON menu.menu_id = menu.menu_id
WHERE menu.menu_id = 2;


UPDATE menu
SET price = 20.00
WHERE menu_id = 2

