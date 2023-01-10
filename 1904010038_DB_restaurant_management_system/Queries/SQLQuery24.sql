USE [restaurant_management_system]
GO

/****** Object:  Table [dbo].[chef]    Script Date: 9.01.2023 01:04:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chef]') AND type in (N'U'))
DROP TABLE [dbo].[chef]
GO


ALTER TABLE dbo.chef DROP COLUMN gender