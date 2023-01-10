INSERT INTO dbo.chef
  (chef_id, first_name, last_name, email, birth_date)
VALUES
  ('22336677',
   'Emin',
   'Mammadov',
   'eminmmadov0202@gmail.com',
   '02.02.2002' 
   );
INSERT INTO dbo.chef
  (chef_id, first_name, last_name, user_name, email, password, birth_date, position, salary, birth_country)
VALUES
  ('997896543',
   'Nazrin',
   'Huseynli',
   'hnazrin_26',
   'hnazrin26@gmail.com',
   'canik313',
   '02.26.2000',
   'chef assistant',
   '3500',
   'Azerbaijan'
   );
insert into chef(chef_id, first_name,last_name,user_name, email,password,birth_date,position,salary, birth_country ) values ('7859573274','Rehama', 'Khan', '+82 (267) 672-4290');
insert into chef (chef_id, first_name,last_name,user_name, email,password,birth_date,position,salary, birth_country) values ('Ali', 'Khayal', '+1 (502) 971-8956');
insert into chef (chef_id, first_name,last_name,user_name, email,password,birth_date,position,salary, birth_country) values ('Livvyy', 'Piddick', '+82 (267) 672-4290');
insert into chef(chef_id, first_name,last_name,user_name, email,password,birth_date,position,salary, birth_country) values ('Culver', 'Brookwood', '+1 (502) 971-8956');
insert into chef (chef_id, first_name,last_name,user_name, email,password,birth_date,position,salary, birth_country) values ('Solomon', 'Wessel', '+62 (453) 217-1058');
insert into chef (chef_id, first_name,last_name,user_name, email,password,birth_date,position,salary, birth_country) values ('Angelle', 'Trodler', '+237 (731) 395-5750');

INSERT INTO dbo.chef 
(chef_id, first_name, last_name, user_name, email, password, birth_date, position, salary, birth_country)
VALUES 
  ('445566778', 'Alice', 'Smith', 'asmith1', 'asmith1@gmail.com', 'password4', '04-30-1995', 'commis', '2500', 'Canada');
  ('556677889', 'James', 'Bond', 'jbond1', 'jbond1@gmail.com', 'password5', '05-19-2000', 'chef', '4000', 'UK'),
  ('667788901', 'Emma', 'Watson', 'ewatson1', 'ewatson1@gmail.com', 'password6', '06-26-2005', 'sous chef', '3500', 'UK');
  ('334455667', 'Bob', 'Smith', 'bsmith1', 'bsmith1@gmail.com', 'password3', '03-22-1990', 'chef de partie', '3000', 'Canada'),
  ('22336677', 'Emin', 'Mammadov', 'eminchik085', 'eminmmadov0202@gmail.com', 'eminchik085', '02-02-2002', 'lead chef', '10000', 'Azerbaijan')


ALTER TABLE dbo.chef
ADD gender bit






  ('223344556', 'Jane', 'Doe', 'jdoe2', 'jdoe2@gmail.com', 'password2', CONVERT(DATE, RAND()*10000), 'sous chef', '3500', 'USA'),
  ('334455667', 'Bob', 'Smith', 'bsmith1', 'bsmith1@gmail.com', 'password3', CONVERT(DATE, RAND()*10000), 'chef de partie', '3000', 'Canada'),
  ('445566778', 'Alice', 'Smith', 'asmith1', 'asmith1@gmail.com', 'password4', CONVERT(DATE, RAND()*10000), 'commis', '2500', 'Canada'),
  ('556677889', 'James', 'Bond', 'jbond1', 'jbond1@gmail.com', 'password5', CONVERT(DATE, RAND()*10000), 'chef', '4000', 'UK'),
  ('667788901', 'Emma', 'Watson', 'ewatson1', 'ewatson1@gmail.com', 'password6', CONVERT(DATE, RAND()*10000), 'sous chef', '3500', 'UK'),
  ('778890112', 'David', 'Johnson', 'djohnson1', 'djohnson1@gmail.com', 'password7', CONVERT(DATE, RAND()*10000), 'chef de partie', '3000', 'Australia'),
  ('889011223', 'Sophia', 'Johnson', 'sjohnson1', 'sjohnson1@gmail.com', 'password8', CONVERT(DATE, RAND()*10000), 'commis', '2500', 'Australia'),
  ('901122334', 'Michael', 'Williams', 'mwilliams1', 'mwilliams1@gmail.com', 'password9', CONVERT(DATE, RAND()*10000), 'chef', '4000', 'USA'),
  ('112233445', 'Emily', 'Williams', 'ewilliams1', 'ewilliams1@gmail.com', 'password10', CONVERT(DATE, RAND()*10000), 'sous chef', '3500', 'USA'),
  ('122334455', 'William', 'Brown', 'wbrown1', 'wbrown1@gmail.com', 'password11', CONVERT(DATE, RAND()*10000), 'chef de partie', '3000', 'Canada');
