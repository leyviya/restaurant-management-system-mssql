USE [restaurant_management_system]
GO

UPDATE [dbo].[menu]
   SET [menu_id] = <menu_id, int,>
      ,[number] = <number, varchar(50),>
      ,[details] = <details, varchar(300),>
      ,[price] = <price, smallmoney,>
 WHERE <Search Conditions,,>
GO


UPDATE menu
SET price = price * 2.2
WHERE menu_id = 1
UPDATE menu
SET price = price * 2.2
WHERE menu_id = 2
UPDATE menu
SET price = price * 2.2
WHERE menu_id = 3
UPDATE menu
SET price = price * 2.2
WHERE menu_id = 4
UPDATE menu
SET price = price * 2.2
WHERE menu_id = 5
UPDATE menu
SET price = price * 2.2
WHERE menu_id = 6
UPDATE menu
SET price = price * 2.2
WHERE menu_id = 7
UPDATE menu
SET price = price * 2.2
WHERE menu_id = 8
UPDATE menu
SET price = price * 2.2
WHERE menu_id = 9
UPDATE menu
SET price = price * 2.2
WHERE menu_id = 10