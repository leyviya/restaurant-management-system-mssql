USE [restaurant_management_system]
GO

UPDATE [dbo].[restaurant_status]
   SET [status_id] = <status_id, int,>
      ,[status_name] = <status_name, varchar(30),>
      ,[status_date] = <status_date, datetime,>
 WHERE <Search Conditions,,>
GO


SELECT status_name, status_date FROM restaurant_status
INNER JOIN food_info 
ON status_id = food_id
WHERE status_id = 1

UPDATE restaurant_status
SET status_name = ('preparing')
WHERE status_name = ('available')
