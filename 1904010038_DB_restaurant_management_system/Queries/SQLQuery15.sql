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
           ,[country]
           ,[city])
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
           ,<country, varchar(30),>
           ,<city, varchar(30),>)
GO


INSERT INTO dbo.customer
(customer_id, user_name, password, first_name, last_name, tc_identity_num, phone_number, mail_adress, birth_date, country,city)
VALUES 


INSERT INTO dbo.customer (customer_id, user_name, password, first_name, last_name, tc_identity_num, phone_number, mail_adress, birth_date, country, city)
VALUES 
  (1, 'cust1', 'pass1', 'Nazrin', 'Huseynli', '997896543', '123-456-7890', 'hnazrin26@gmail.com', '02-26-2000', 'Azerbaijan', 'Baku'),
  (2, 'cust2', 'pass2', 'Alex', 'Parker', '123456789', '234-567-8901', 'aparker1@gmail.com', '03-17-1995', 'USA', 'New York'),
  (3, 'cust3', 'pass3', 'Samantha', 'James', '234567890', '345-678-9012', 'sjames1@gmail.com', '04-08-1990', 'Canada', 'Toronto'),
  (4, 'cust4', 'pass4', 'Michael', 'Brown', '345678901', '456-789-0123', 'mbrown1@gmail.com', '05-30-1985', 'UK', 'London'),
  (5, 'cust5', 'pass5', 'Emily', 'Smith', '456789012', '567-890-1234', 'esmith1@gmail.com', '06-20-1980', 'Australia', 'Sydney'),
  (6, 'cust6', 'pass6', 'William', 'Johnson', '567890123', '678-901-2345', 'wjohnson1@gmail.com', '07-11-1975', 'USA', 'Chicago'),
  (7, 'cust7', 'pass7', 'Ashley', 'Williams', '678901234', '789-012-3456', 'awilliams1@gmail.com', '08-01-1970', 'Canada', 'Toronto');

ALTER TABLE dbo.customer
DROP COLUMN city