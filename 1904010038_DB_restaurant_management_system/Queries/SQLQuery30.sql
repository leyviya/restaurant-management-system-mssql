USE [restaurant_management_system]
GO

INSERT INTO [dbo].[crew]
           ([crew_id]
           ,[crew_name]
           ,[crew_number]
           ,[crew_total_salary]
           ,[crew_user_id])
     VALUES
           (<crew_id, int,>
           ,<crew_name, varchar(20),>
           ,<crew_number, int,>
           ,<crew_total_salary, money,>
           ,<crew_user_id, int,>)
GO


INSERT INTO dbo.crew 
  (crew_id, crew_name, crew_number, crew_total_salary, crew_user_id)
VALUES 
  (1, 'Brunch', '1', '10000', '1'),
  (2, 'Night shift', '2', '20000', '2'),
  (3, 'Bakery', '3', '15000', '3'),
  (4, 'Bar', '4', '12000', '4'),
  (5, 'Management', '5', '25000', '5'),
  (6, 'Accounting', '6', '20000', '6');
