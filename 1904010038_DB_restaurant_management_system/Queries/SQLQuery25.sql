USE [restaurant_management_system]
GO

/****** Object:  Table [dbo].[customer]    Script Date: 9.01.2023 02:26:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[customer](
	[customer_id] [int] NOT NULL,
	[user_name] [varchar](50) NULL,
	[password] [varchar](50) NOT NULL,
	[first_name] [varchar](20) NOT NULL,
	[last_name] [varchar](20) NOT NULL,
	[tc_identity_num] [int] NULL,
	[phone_number] [varchar](13) NULL,
	[mail_adress] [nvarchar](30) NOT NULL,
	[country] [varchar](30) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[mail_adress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE INDEX ix_cname
ON customer (first_name, last_name)
