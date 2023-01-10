USE [restaurant_management_system]
GO

/****** Object:  Table [dbo].[food_info]    Script Date: 9.01.2023 01:03:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[food_info]') AND type in (N'U'))
DROP TABLE [dbo].[food_info]
GO


ALTER TABLE dbo.food_info DROP COLUMN 