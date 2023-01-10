USE [restaurant_management_system]
GO

UPDATE [dbo].[customer]
   SET [customer_id] = <customer_id, int,>
      ,[user_name] = <user_name, varchar(50),>
      ,[password] = <password, varchar(50),>
      ,[first_name] = <first_name, varchar(20),>
      ,[last_name] = <last_name, varchar(20),>
      ,[tc_identity_num] = <tc_identity_num, int,>
      ,[phone_number] = <phone_number, varchar(13),>
      ,[mail_adress] = <mail_adress, nvarchar(30),>
      ,[country] = <country, varchar(30),>
 WHERE <Search Conditions,,>
GO


SELECT customer_id, first_name, last_name, phone_number FROM customer
WHERE phone_number NOT LIKE '+90%'

UPDATE customer
SET phone_number = '+90' + phone_number
WHERE phone_number NOT LIKE '+90%'