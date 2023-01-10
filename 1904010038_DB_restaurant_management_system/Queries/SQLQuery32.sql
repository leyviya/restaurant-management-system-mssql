USE [restaurant_management_system]
GO

/****** Object:  Table [dbo].[crew]    Script Date: 9.01.2023 02:52:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[crew](
	[crew_id] [int] NOT NULL,
	[crew_name] [varchar](20) NULL,
	[crew_number] [int] NOT NULL,
	[crew_total_salary] [money] NULL,
	[crew_user_id] [int] NOT NULL,
 CONSTRAINT [PK_crew] PRIMARY KEY CLUSTERED 
(
	[crew_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE UNIQUE INDEX ix_crname
ON crew (crew_number)
