USE [restaurant_management_system]
GO

INSERT INTO [dbo].[ingredient]
           ([ingredient_id]
           ,[ingredient_name]
           ,[description]
           ,[amount]
           ,[price]
           ,[detail])
     VALUES
           (<ingredient_id, int,>
           ,<ingredient_name, varchar(40),>
           ,<description, varchar(100),>
           ,<amount, decimal(18,0),>
           ,<price, smallmoney,>
           ,<detail, varchar(50),>)
GO

INSERT INTO RESTAURANT_MANAGEMENT_SYSTEM.dbo.ingredient (ingredient_id, ingredient_name, description, amount, price, detail)
VALUES 
  (1, 'Flour', 'All-purpose flour', '5', '3.99', 'A staple ingredient for baking and cooking'),
  (2, 'Sugar', 'Granulated white sugar', '10 ', '7.99', 'A sweetener commonly used in baking and cooking'),
  (3, 'Butter', 'Unsalted butter', '2', '4.99', 'A common ingredient used in baking and cooking for its rich flavor and texture'),
  (4, 'Eggs', 'Large eggs', '12', '3.49', 'A versatile ingredient commonly used in baking and cooking'),
  (5, 'Salt', 'Fine sea salt', '1', '2.99', 'A seasoning commonly used in cooking to enhance the flavor of food'),
  (6, 'Pepper', 'Black peppercorns', '1', '4.99', 'A common spice used to add flavor and heat to dishes');

CREATE UNIQUE INDEX ix_iname
ON ingredient (ingredient_name)