USE [master]
GO
/****** Object:  Database [restaurant_management_system]    Script Date: 7.01.2023 23:39:37 ******/
CREATE DATABASE [restaurant_management_system]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'restaurant_management_system', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\restaurant_management_system.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'restaurant_management_system_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\restaurant_management_system_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [restaurant_management_system] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [restaurant_management_system].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [restaurant_management_system] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [restaurant_management_system] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [restaurant_management_system] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [restaurant_management_system] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [restaurant_management_system] SET ARITHABORT OFF 
GO
ALTER DATABASE [restaurant_management_system] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [restaurant_management_system] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [restaurant_management_system] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [restaurant_management_system] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [restaurant_management_system] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [restaurant_management_system] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [restaurant_management_system] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [restaurant_management_system] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [restaurant_management_system] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [restaurant_management_system] SET  ENABLE_BROKER 
GO
ALTER DATABASE [restaurant_management_system] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [restaurant_management_system] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [restaurant_management_system] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [restaurant_management_system] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [restaurant_management_system] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [restaurant_management_system] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [restaurant_management_system] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [restaurant_management_system] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [restaurant_management_system] SET  MULTI_USER 
GO
ALTER DATABASE [restaurant_management_system] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [restaurant_management_system] SET DB_CHAINING OFF 
GO
ALTER DATABASE [restaurant_management_system] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [restaurant_management_system] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [restaurant_management_system] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [restaurant_management_system] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [restaurant_management_system] SET QUERY_STORE = OFF
GO
USE [restaurant_management_system]
GO
/****** Object:  Table [dbo].[chef]    Script Date: 7.01.2023 23:39:37 ******/
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
/****** Object:  Table [dbo].[crew]    Script Date: 7.01.2023 23:39:38 ******/
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
/****** Object:  Table [dbo].[customer]    Script Date: 7.01.2023 23:39:38 ******/
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
	[birth_date] [datetime] NULL,
	[country] [varchar](30) NULL,
	[city] [varchar](30) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[delivery]    Script Date: 7.01.2023 23:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[delivery](
	[delivery_id] [int] NOT NULL,
	[delivery_number] [smallint] NULL,
	[delivery_date] [datetime2](7) NOT NULL,
	[delivery_status] [text] NULL,
 CONSTRAINT [PK_delivery] PRIMARY KEY CLUSTERED 
(
	[delivery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 7.01.2023 23:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[employee_id] [int] NOT NULL,
	[e_firstname] [varchar](25) NOT NULL,
	[e_lastname] [varchar](25) NOT NULL,
	[e_gender] [varchar](25) NULL,
	[e_age] [int] NULL,
	[e_salary] [money] NOT NULL,
	[e_department] [varchar](50) NOT NULL,
	[e_birthdate] [datetime] NULL,
	[e_birthcity] [varchar](50) NULL,
	[e_birthcountry] [varchar](50) NULL,
	[e_phone_number] [varchar](13) NULL,
	[e_mail] [varchar](25) NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[food_info]    Script Date: 7.01.2023 23:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[food_info](
	[food_id] [int] NOT NULL,
	[food_name] [varchar](20) NULL,
	[food_status] [varchar](20) NULL,
	[food_price] [smallmoney] NULL,
	[details] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_food_info] PRIMARY KEY CLUSTERED 
(
	[food_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ingredient]    Script Date: 7.01.2023 23:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ingredient](
	[ingredient_id] [int] NOT NULL,
	[ingredient_name] [varchar](40) NULL,
	[description] [varchar](100) NULL,
	[amount] [decimal](18, 0) NOT NULL,
	[price] [smallmoney] NOT NULL,
	[detail] [varchar](50) NULL,
 CONSTRAINT [PK_ingredient] PRIMARY KEY CLUSTERED 
(
	[ingredient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kitchen_staff]    Script Date: 7.01.2023 23:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kitchen_staff](
	[staff_id] [int] NOT NULL,
	[first_name] [varchar](20) NOT NULL,
	[last_name] [varchar](20) NOT NULL,
	[gender] [varchar](10) NULL,
	[email] [varchar](25) NULL,
	[password] [nvarchar](25) NULL,
	[phone] [varchar](13) NULL,
	[adress] [nvarchar](50) NULL,
	[salary] [money] NOT NULL,
 CONSTRAINT [PK_kitchen_staff] PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 7.01.2023 23:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[menu_id] [int] NOT NULL,
	[number] [varchar](50) NULL,
	[details] [varchar](300) NULL,
	[price] [smallmoney] NOT NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 7.01.2023 23:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
	[payment_id] [int] NOT NULL,
	[ID_invoice] [int] NULL,
	[number] [nvarchar](50) NULL,
	[type] [varchar](20) NULL,
	[method] [varchar](20) NULL,
	[payment_date] [datetime] NOT NULL,
	[payment_amount] [money] NOT NULL,
 CONSTRAINT [PK_payment] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 7.01.2023 23:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[reservation_id] [int] NOT NULL,
	[reserv_date] [datetime] NULL,
	[reserv_time] [datetime2](7) NOT NULL,
	[no_of_guest] [int] NOT NULL,
	[reserv_table_no] [varchar](2) NULL,
 CONSTRAINT [PK_reservation] PRIMARY KEY CLUSTERED 
(
	[reservation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[restaurant_manager]    Script Date: 7.01.2023 23:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaurant_manager](
	[manager_id] [int] NOT NULL,
	[user_name] [varchar](20) NOT NULL,
	[first_name] [varchar](20) NOT NULL,
	[last_name] [varchar](20) NOT NULL,
	[tc_identity_num] [int] NULL,
	[password] [nvarchar](15) NOT NULL,
	[birth_date] [datetime] NULL,
	[phone_number] [varchar](13) NULL,
	[email] [varchar](50) NOT NULL,
	[home_adress] [nvarchar](50) NULL,
	[city] [varchar](25) NULL,
	[country] [varchar](25) NULL,
 CONSTRAINT [PK_restaurant_manager] PRIMARY KEY CLUSTERED 
(
	[manager_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[restaurant_status]    Script Date: 7.01.2023 23:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaurant_status](
	[status_id] [int] NOT NULL,
	[status_name] [varchar](6) NOT NULL,
	[status_date] [datetime] NULL,
 CONSTRAINT [PK_restaurant_status] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction]    Script Date: 7.01.2023 23:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction](
	[trans_id] [int] NOT NULL,
	[trans_report_num] [varchar](15) NULL,
	[trans_date] [datetime] NULL,
	[trans_report_date] [datetime] NOT NULL,
 CONSTRAINT [PK_transaction] PRIMARY KEY CLUSTERED 
(
	[trans_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[waiter]    Script Date: 7.01.2023 23:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[waiter](
	[waiter_id] [int] NOT NULL,
	[first_name] [varchar](20) NULL,
	[last_name] [varchar](20) NULL,
	[user_name] [varchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[tc_identity_num] [int] NULL,
	[birth_date] [datetime] NULL,
	[email] [varchar](25) NOT NULL,
	[phone_number] [varchar](13) NULL,
	[salary] [money] NULL,
 CONSTRAINT [PK_waiter] PRIMARY KEY CLUSTERED 
(
	[waiter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chef]  WITH CHECK ADD  CONSTRAINT [FK_chef_employee] FOREIGN KEY([chef_id])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[chef] CHECK CONSTRAINT [FK_chef_employee]
GO
ALTER TABLE [dbo].[chef]  WITH CHECK ADD  CONSTRAINT [FK_chef_kitchen_staff] FOREIGN KEY([chef_id])
REFERENCES [dbo].[kitchen_staff] ([staff_id])
GO
ALTER TABLE [dbo].[chef] CHECK CONSTRAINT [FK_chef_kitchen_staff]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [FK_customer_food_info] FOREIGN KEY([customer_id])
REFERENCES [dbo].[food_info] ([food_id])
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK_customer_food_info]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [FK_customer_payment] FOREIGN KEY([customer_id])
REFERENCES [dbo].[payment] ([payment_id])
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK_customer_payment]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [FK_customer_reservation] FOREIGN KEY([customer_id])
REFERENCES [dbo].[reservation] ([reservation_id])
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK_customer_reservation]
GO
ALTER TABLE [dbo].[delivery]  WITH CHECK ADD  CONSTRAINT [FK_delivery_crew] FOREIGN KEY([delivery_id])
REFERENCES [dbo].[crew] ([crew_id])
GO
ALTER TABLE [dbo].[delivery] CHECK CONSTRAINT [FK_delivery_crew]
GO
ALTER TABLE [dbo].[delivery]  WITH CHECK ADD  CONSTRAINT [FK_delivery_employee] FOREIGN KEY([delivery_id])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[delivery] CHECK CONSTRAINT [FK_delivery_employee]
GO
ALTER TABLE [dbo].[delivery]  WITH CHECK ADD  CONSTRAINT [FK_delivery_ingredient] FOREIGN KEY([delivery_id])
REFERENCES [dbo].[ingredient] ([ingredient_id])
GO
ALTER TABLE [dbo].[delivery] CHECK CONSTRAINT [FK_delivery_ingredient]
GO
ALTER TABLE [dbo].[delivery]  WITH CHECK ADD  CONSTRAINT [FK_delivery_payment] FOREIGN KEY([delivery_id])
REFERENCES [dbo].[payment] ([payment_id])
GO
ALTER TABLE [dbo].[delivery] CHECK CONSTRAINT [FK_delivery_payment]
GO
ALTER TABLE [dbo].[delivery]  WITH CHECK ADD  CONSTRAINT [FK_delivery_restaurant_manager] FOREIGN KEY([delivery_id])
REFERENCES [dbo].[restaurant_manager] ([manager_id])
GO
ALTER TABLE [dbo].[delivery] CHECK CONSTRAINT [FK_delivery_restaurant_manager]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_kitchen_staff] FOREIGN KEY([employee_id])
REFERENCES [dbo].[kitchen_staff] ([staff_id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_kitchen_staff]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_restaurant_status] FOREIGN KEY([employee_id])
REFERENCES [dbo].[restaurant_status] ([status_id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_restaurant_status]
GO
ALTER TABLE [dbo].[food_info]  WITH CHECK ADD  CONSTRAINT [FK_food_info_ingredient] FOREIGN KEY([food_id])
REFERENCES [dbo].[ingredient] ([ingredient_id])
GO
ALTER TABLE [dbo].[food_info] CHECK CONSTRAINT [FK_food_info_ingredient]
GO
ALTER TABLE [dbo].[food_info]  WITH CHECK ADD  CONSTRAINT [FK_food_info_kitchen_staff] FOREIGN KEY([food_id])
REFERENCES [dbo].[kitchen_staff] ([staff_id])
GO
ALTER TABLE [dbo].[food_info] CHECK CONSTRAINT [FK_food_info_kitchen_staff]
GO
ALTER TABLE [dbo].[food_info]  WITH CHECK ADD  CONSTRAINT [FK_food_info_payment] FOREIGN KEY([food_id])
REFERENCES [dbo].[payment] ([payment_id])
GO
ALTER TABLE [dbo].[food_info] CHECK CONSTRAINT [FK_food_info_payment]
GO
ALTER TABLE [dbo].[ingredient]  WITH CHECK ADD  CONSTRAINT [FK_ingredient_menu] FOREIGN KEY([ingredient_id])
REFERENCES [dbo].[menu] ([menu_id])
GO
ALTER TABLE [dbo].[ingredient] CHECK CONSTRAINT [FK_ingredient_menu]
GO
ALTER TABLE [dbo].[ingredient]  WITH CHECK ADD  CONSTRAINT [FK_ingredient_payment] FOREIGN KEY([ingredient_id])
REFERENCES [dbo].[payment] ([payment_id])
GO
ALTER TABLE [dbo].[ingredient] CHECK CONSTRAINT [FK_ingredient_payment]
GO
ALTER TABLE [dbo].[menu]  WITH CHECK ADD  CONSTRAINT [FK_menu_customer] FOREIGN KEY([menu_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[menu] CHECK CONSTRAINT [FK_menu_customer]
GO
ALTER TABLE [dbo].[menu]  WITH CHECK ADD  CONSTRAINT [FK_menu_food_info] FOREIGN KEY([menu_id])
REFERENCES [dbo].[food_info] ([food_id])
GO
ALTER TABLE [dbo].[menu] CHECK CONSTRAINT [FK_menu_food_info]
GO
ALTER TABLE [dbo].[menu]  WITH CHECK ADD  CONSTRAINT [FK_menu_restaurant_manager] FOREIGN KEY([menu_id])
REFERENCES [dbo].[restaurant_manager] ([manager_id])
GO
ALTER TABLE [dbo].[menu] CHECK CONSTRAINT [FK_menu_restaurant_manager]
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD  CONSTRAINT [FK_payment_menu] FOREIGN KEY([payment_id])
REFERENCES [dbo].[menu] ([menu_id])
GO
ALTER TABLE [dbo].[payment] CHECK CONSTRAINT [FK_payment_menu]
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD  CONSTRAINT [FK_reservation_customer] FOREIGN KEY([reservation_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[reservation] CHECK CONSTRAINT [FK_reservation_customer]
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD  CONSTRAINT [FK_reservation_menu] FOREIGN KEY([reservation_id])
REFERENCES [dbo].[menu] ([menu_id])
GO
ALTER TABLE [dbo].[reservation] CHECK CONSTRAINT [FK_reservation_menu]
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD  CONSTRAINT [FK_reservation_restaurant_status] FOREIGN KEY([reservation_id])
REFERENCES [dbo].[restaurant_status] ([status_id])
GO
ALTER TABLE [dbo].[reservation] CHECK CONSTRAINT [FK_reservation_restaurant_status]
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FK_transaction_delivery] FOREIGN KEY([trans_id])
REFERENCES [dbo].[delivery] ([delivery_id])
GO
ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FK_transaction_delivery]
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FK_transaction_payment] FOREIGN KEY([trans_id])
REFERENCES [dbo].[payment] ([payment_id])
GO
ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FK_transaction_payment]
GO
ALTER TABLE [dbo].[waiter]  WITH CHECK ADD  CONSTRAINT [FK_waiter_crew] FOREIGN KEY([waiter_id])
REFERENCES [dbo].[crew] ([crew_id])
GO
ALTER TABLE [dbo].[waiter] CHECK CONSTRAINT [FK_waiter_crew]
GO
ALTER TABLE [dbo].[waiter]  WITH CHECK ADD  CONSTRAINT [FK_waiter_employee] FOREIGN KEY([waiter_id])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[waiter] CHECK CONSTRAINT [FK_waiter_employee]
GO
USE [master]
GO
ALTER DATABASE [restaurant_management_system] SET  READ_WRITE 
GO
