/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [chef_id]
      ,[first_name]
      ,[last_name]
      ,[user_name]
      ,[email]
      ,[password]
      ,[birth_date]
      ,[position]
      ,[salary]
      ,[birth_country]
	  ,[gender]
  FROM [restaurant_management_system].[dbo].[chef]