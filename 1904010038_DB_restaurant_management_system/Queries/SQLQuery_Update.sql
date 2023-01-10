/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [employee_id]
      ,[e_firstname]
      ,[e_lastname]
      ,[e_gender]
      ,[e_age]
      ,[e_salary]
      ,[e_department]
      ,[e_birthdate]
      ,[e_birthcity]
      ,[e_birthcountry]
      ,[e_phone_number]
      ,[e_mail]
  FROM [restaurant_management_system].[dbo].[employee]

UPDATE dbo.employee
SET e_birthcity = 'Gandja'
WHERE employee_id = 1;
