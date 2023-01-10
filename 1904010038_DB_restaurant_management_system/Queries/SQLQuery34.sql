USE [restaurant_management_system]
GO

INSERT INTO [dbo].[employee]
           ([employee_id]
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
           ,[e_mail])
     VALUES
           (<employee_id, int,>
           ,<e_firstname, varchar(25),>
           ,<e_lastname, varchar(25),>
           ,<e_gender, varchar(25),>
           ,<e_age, int,>
           ,<e_salary, money,>
           ,<e_department, varchar(50),>
           ,<e_birthdate, datetime,>
           ,<e_birthcity, varchar(50),>
           ,<e_birthcountry, varchar(50),>
           ,<e_phone_number, varchar(13),>
           ,<e_mail, varchar(25),>)
GO

INSERT INTO RESTAURANT_MANAGEMENT_SYSTEM.dbo.employee (employee_id, e_firstname, e_lastname, e_gender, e_age, e_salary, e_department, e_birthdate, e_birthcity, e_birthcountry, e_phone_number, e_mail)
VALUES 
  (1, 'Nazrin', 'Huseynli', 'M', '23', '3500', 'Front of House', '02-26-2000', 'Baku', 'Azerbaijan', '123-456-7890', 'hnazrin26@gmail.com'),
  (2, 'Alex', 'Parker', 'M', '25', '3000', 'Back of House', '03-17-1995', 'New York', 'USA', '234-567-8901', 'aparker1@gmail.com'),
  (3, 'Samantha', 'James', 'F', '30', '2500', 'Bakery', '04-08-1990', 'Toronto', 'Canada', '345-678-9012', 'sjames1@gmail.com'),
  (4, 'Michael', 'Brown', 'M', '35', '2000', 'Bar', '05-30-1985', 'London', 'UK', '456-789-0123', 'mbrown1@gmail.com'),
  (5, 'Emily', 'Smith', 'F', '40', '3500', 'Management', '06-20-1980', 'Sydney', 'Australia', '567-890-1234', 'esmith1@gmail.com'),
  (6, 'William', 'Johnson', 'M', '45', '3000', 'Accounting', '07-11-1975', 'Chicago', 'USA', '678-901-2345', 'wjohnson1@gmail.com'),
  (7, 'Ashley', 'Williams', 'F', '50', '2500', 'Front of House', '08-01-1970', 'Toronto', 'Canada', '789-012-3456', 'awilliams1@gmail.com'),
  (8, 'David', 'Jones', 'M', '55', '2000', 'Back of House', '09-21-1965', 'London', 'UK', '890-123-4567', 'djones1@gmail.com'),
  (9, 'Sara', 'Davis', 'F', '60', '3500', 'Bakery', '10-11-1960', 'Sydney', 'Australia', '901-234-5678', 'sdavis1@gmail.com');

CREATE UNIQUE INDEX ix_ename
ON employee (e_firstname)