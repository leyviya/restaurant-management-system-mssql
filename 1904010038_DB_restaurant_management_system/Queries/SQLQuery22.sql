USE [restaurant_management_system]
GO

/****** Object:  Table [dbo].[customer]    Script Date: 9.01.2023 00:57:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer]') AND type in (N'U'))
DROP TABLE [dbo].[customer]
GO


ALTER TABLE customer DROP COLUMN birth_date