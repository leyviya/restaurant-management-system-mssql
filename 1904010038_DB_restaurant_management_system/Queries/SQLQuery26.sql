USE [restaurant_management_system]
GO

/****** Object:  Table [dbo].[chef]    Script Date: 9.01.2023 02:30:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[chef](
	[chef_id] [int] NOT NULL,
	[first_name] [varchar](20) NOT NULL,
	[last_name] [varchar](20) NOT NULL,
	[user_name] [varchar](20) NULL,
	[email] [varchar](25) NOT NULL,
	[password] [nvarchar](20) NULL,
	[birth_date] [datetime] NOT NULL,
	[position] [varchar](20) NULL,
	[salary] [money] NULL,
	[birth_country] [varchar](20) NULL,
 CONSTRAINT [PK_chef] PRIMARY KEY CLUSTERED 
(
	[chef_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE UNIQUE INDEX ix_rname
ON chef (user_name)
