USE [restaurant_management_system]
GO

INSERT INTO [dbo].[customer]
           ([customer_id]
           ,[user_name]
           ,[password]
           ,[first_name]
           ,[last_name]
           ,[tc_identity_num]
           ,[phone_number]
           ,[mail_adress]
           ,[birth_date]
           ,[country])
     VALUES
           (<customer_id, int,>
           ,<user_name, varchar(50),>
           ,<password, varchar(50),>
           ,<first_name, varchar(20),>
           ,<last_name, varchar(20),>
           ,<tc_identity_num, int,>
           ,<phone_number, varchar(13),>
           ,<mail_adress, nvarchar(30),>
           ,<birth_date, datetime,>
           ,<country, varchar(30),>)
GO


ALTER TABLE customer
ADD UNIQUE (mail_adress)