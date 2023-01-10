USE [restaurant_management_system]
GO

/****** Object:  Table [dbo].[food_info]    Script Date: 9.01.2023 02:43:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[food_info](
	[food_id] [int] NOT NULL,
	[food_name] [varchar](20) NULL,
	[food_status] [varchar](20) NULL,
	[food_price] [smallmoney] NULL,
	[details] [nvarchar](250) NULL,
 CONSTRAINT [PK_food_info] PRIMARY KEY CLUSTERED 
(
	[food_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[food_info]  WITH CHECK ADD CHECK  (([food_price]>(0.1)))
GO


CREATE UNIQUE INDEX ix_fname
ON food_info (food_name)