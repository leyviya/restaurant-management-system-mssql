USE [restaurant_management_system]
GO

INSERT INTO [dbo].[menu]
           ([menu_id]
           ,[number]
           ,[details]
           ,[price])
     VALUES
           (<menu_id, int,>
           ,<number, varchar(50),>
           ,<details, varchar(300),>
           ,<price, smallmoney,>)
GO


INSERT INTO dbo.menu (menu_id, number, details, price)
VALUES 
  (1, '1', 'Spaghetti Bolognese', '15.99'),
  (2, '2', 'Grilled Cheese Sandwich', '9.99'),
  (3, '3', 'BLT Sandwich', '12.99'),
  (4, '4', 'Chicken Caesar Salad', '14.99'),
  (5, '5', 'Beef Stroganoff', '17.99'),
  (6, '6', 'Parmesan-Crusted Chicken', '16.99'),
  (7, '7', 'Fish and Chips', '13.99'),
  (8, '8', 'Hamburger', '11.99'),
  (9, '9', 'Chicken Fajitas', '15.99'),
  (10, '10', 'Pizza Margherita', '13.99');

SELECT menu_id, number, details, price FROM menu
INNER JOIN food_info
ON price = 17.00
WHERE menu_id = 2



