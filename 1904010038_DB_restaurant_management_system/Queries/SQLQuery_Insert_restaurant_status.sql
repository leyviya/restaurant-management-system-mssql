USE [restaurant_management_system]
GO

INSERT INTO [dbo].[restaurant_status]
           ([status_id]
           ,[status_name]
           ,[status_date])
     VALUES
           (<status_id, int,>
           ,<status_name, varchar(6),>
           ,<status_date, datetime,>)
GO


INSERT INTO dbo.restaurant_status (status_id, status_name, status_date)
VALUES 
  (1, 'available', '2022-01-01'),
  (2, 'unavailable', '2022-01-02'),
  (3, 'available', '2022-01-03'),
  (4, 'unavailable', '2022-01-04'),
  (5, 'available', '2022-01-05'),
  (6, 'unavailable', '2022-01-06');
