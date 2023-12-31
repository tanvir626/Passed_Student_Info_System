USE [master]
GO
/****** Object:  Database [test]    Script Date: 09/08/2023 10:51:49 AM ******/
CREATE DATABASE [test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [test] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test] SET ARITHABORT OFF 
GO
ALTER DATABASE [test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test] SET RECOVERY FULL 
GO
ALTER DATABASE [test] SET  MULTI_USER 
GO
ALTER DATABASE [test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [test] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [test] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'test', N'ON'
GO
ALTER DATABASE [test] SET QUERY_STORE = ON
GO
ALTER DATABASE [test] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [test]
GO
/****** Object:  Table [dbo].[convocationform]    Script Date: 09/08/2023 10:51:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[convocationform](
	[Member_No] [int] IDENTITY(1,1) NOT NULL,
	[Registration_Date] [date] NULL,
	[Member_Name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Birthday] [date] NULL,
	[Blood_Group] [varchar](20) NULL,
	[Contact_Number] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Education_Type] [varchar](50) NULL,
	[Present_Profession] [varchar](50) NULL,
	[Previour_Profession] [varchar](50) NULL,
	[Rergistration_Fee] [int] NULL,
	[Deposit_Slip] [varchar](5000) NULL,
	[member_img] [varchar](5000) NULL,
	[Deposit_ref_no] [varchar](50) NULL,
	[Address] [varchar](255) NULL,
	[passing_year] [varchar](4) NULL,
 CONSTRAINT [PK_convocationform] PRIMARY KEY CLUSTERED 
(
	[Member_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[convocationform] ON 

INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (1, CAST(N'2023-07-26' AS Date), N'mini ', N'Female', CAST(N'2023-07-19' AS Date), N'null', N'01642333882', N'testweb597@gmail.com', N'School', N'dfsdf', N'sfdf', 112, N'image/', N'image/download.jpg', N'12', N'akasjkajs', N'2000')
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (4, CAST(N'2023-07-26' AS Date), N'mkm', N'Female', CAST(N'2023-07-25' AS Date), N'A-        ', N'01642333882', N'testweb597@gmail.com', N'School', N'dfsdf', N'sfdf', 1222, N'image/download.jpg', N'image/download.jpg', N'111', NULL, N'1974')
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (5, CAST(N'2023-07-26' AS Date), N'mkm', N'--Select--', CAST(N'1900-01-01' AS Date), N'--Select--', N'01642333882', N'testweb597@gmail.com', N'--Select--', N'', N'', 0, N'image/download.jpg', N'image/download.jpg', N'123', NULL, N'1888')
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (6, CAST(N'2023-07-26' AS Date), N'mkm', N'null', CAST(N'1900-01-01' AS Date), N'--Select--', N'01711227559', N'miakhalifaaoa@gmail.com', N'--Select--', N'dfsdf', N'', 0, N'image/download.jpg', N'image/download.jpg', N'123', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (7, CAST(N'2023-07-28' AS Date), N'ss', N'null', CAST(N'1900-01-01' AS Date), N'--Select--', N'01642333881', N'hitanvirhossain@gmail.com', N'--Select--', N'', N'', 0, N'', N'image/eagle-neon-dark-3840x2160-12198.png', N'123', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (8, CAST(N'2023-07-28' AS Date), N'mkm', N'null', CAST(N'1900-01-01' AS Date), N'--Select--', N'01642333882', N'testweb597@gmail.com', N'--Select--', N'', N'', 0, N'image/download.jpg', N'image/download.jpg', N'123', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (9, CAST(N'2023-07-29' AS Date), N'mahim', N'null', CAST(N'1900-01-01' AS Date), N'--Select--', N'01642333882', N'testweb597@gmail.com', N'--Select--', N'dfsdf', N'', 0, N'image/download.jpg', N'image/download.jpg', N'123', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (10, CAST(N'2023-07-29' AS Date), N'mahim', N'null', CAST(N'1900-01-01' AS Date), N'--Select--', N'01642333882', N'testweb597@gmail.com', N'--Select--', N'dfsdf', N'', 0, N'image/download.jpg', N'image/download.jpg', N'123', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (11, CAST(N'2023-07-29' AS Date), N'', N'', CAST(N'1900-01-01' AS Date), N'          ', N'', N'', N'School', N'', N'', 0, N'image/download.jpg', N'image/download.jpg', N'', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (12, CAST(N'2023-07-29' AS Date), N'', N'', CAST(N'1900-01-01' AS Date), N'          ', N'', N'', N'College', N'', N'', 0, N'image/download.jpg', N'image/download.jpg', N'', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (13, CAST(N'2023-07-29' AS Date), N'', N'', CAST(N'1900-01-01' AS Date), N'          ', N'', N'', N'College', N'', N'', 0, N'', N'image/', N'', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (14, CAST(N'2023-07-29' AS Date), N'mkm', N'', CAST(N'2023-07-28' AS Date), N'A-        ', N'01642333882', N'testweb597@gmail.com', N'School', N'dfsdf', N'', 0, N'', N'image/', N'111', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (15, CAST(N'2023-07-29' AS Date), N'sanny', N'null', CAST(N'1900-01-01' AS Date), N'null      ', N'01642333882', N'testweb597@gmail.com', N'School', N'', N'', 0, N'', N'image/', N'123', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (16, CAST(N'2023-07-29' AS Date), N'loi', N'Male', CAST(N'1900-01-01' AS Date), N'null      ', N'01642333882', N'testweb597@gmail.com', N'null', N'', N'', 0, N'', N'image/', N'123', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (17, CAST(N'2023-07-30' AS Date), N'mkm', N'null', CAST(N'1900-01-01' AS Date), N'null', N'01642333882', N'testweb597@gmail.com', N'null', N'', N'', 1222, N'image/eagle-neon-dark-3840x2160-12198.png', N'image/ak.jpg', N'123', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (18, CAST(N'2023-07-30' AS Date), N'mkm', N'null', CAST(N'1900-01-01' AS Date), N'null', N'01642333882', N'testweb597@gmail.com', N'null', N'', N'', 0, N'', N'image/ak.jpg', N'123', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (19, CAST(N'2023-07-30' AS Date), N'mahim', N'null', CAST(N'1900-01-01' AS Date), N'null', N'01642333882', N'testweb597@gmail.com', N'null', N'', N'', 0, N'~/slipimage/download.jpg', N'~/image/eagle-neon-dark-3840x2160-12198.png', N'123', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (20, CAST(N'2023-07-30' AS Date), N'mahim', N'null', CAST(N'1900-01-01' AS Date), N'null', N'01642333882', N'testweb597@gmail.com', N'null', N'', N'', 0, N'~/slipimage/', N'~/image/download.jpg', N'123', NULL, NULL)
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (21, CAST(N'2023-08-02' AS Date), N'mkm111', N'Female', CAST(N'2023-08-12' AS Date), N'B-', N'01642333882', N'testweb597@gmail.com', N'School', N'dfsdf', N'sfdf', 111, N'image/download.jpg', N'image/download.jpg', N'111', NULL, N'1999')
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (22, CAST(N'2023-08-02' AS Date), N'sanny', N'null', CAST(N'1900-01-01' AS Date), N'null', N'01642333882', N'testweb597@gmail.com', N'null', N'', N'', 0, N'image/download.jpg', N'image/cart.jpg', N'677', N'', N'2000')
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (23, CAST(N'2023-08-02' AS Date), N'mkm', N'null', CAST(N'1900-01-01' AS Date), N'null', N'01642333882', N'testweb597@gmail.com', N'College', N'', N'', 0, N'image/download.jpg', N'image/download.jpg', N'111', N'', N'2000')
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (24, CAST(N'2023-08-02' AS Date), N'kumer', N'null', CAST(N'1900-01-01' AS Date), N'null', N'01642333882', N'testweb597@gmail.com', N'null', N'', N'', 0, N'image/fart.jpg', N'image/fart.jpg', N'111', NULL, N'')
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (25, CAST(N'2023-08-02' AS Date), N'mkm', N'Female', CAST(N'2023-08-18' AS Date), N'B-', N'01642333882', N'testweb597@gmail.com', N'School', N'dfsdf', N'sfdf', 1222, N'image/download.jpg', N'image/download.jpg', N'111', NULL, N'1999')
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (26, CAST(N'2023-08-02' AS Date), N'kumer', N'null', CAST(N'1900-01-01' AS Date), N'null', N'01642333882', N'testweb597@gmail.com', N'null', N'', N'', 0, N'image/', N'image/', N'123', NULL, N'1888')
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (27, CAST(N'2023-08-02' AS Date), N'mkm', N'null', CAST(N'1900-01-01' AS Date), N'null', N'01642333882', N'testweb597@gmail.com', N'null', N'', N'', 0, N'image/', N'image/download.jpg', N'123', N'', N'1888')
INSERT [dbo].[convocationform] ([Member_No], [Registration_Date], [Member_Name], [Gender], [Birthday], [Blood_Group], [Contact_Number], [Email], [Education_Type], [Present_Profession], [Previour_Profession], [Rergistration_Fee], [Deposit_Slip], [member_img], [Deposit_ref_no], [Address], [passing_year]) VALUES (28, CAST(N'2023-08-02' AS Date), N'sanny', N'null', CAST(N'1900-01-01' AS Date), N'null', N'01642333882', N'testweb597@gmail.com', N'null', N'', N'', 0, N'image/download.jpg', N'image/download.jpg', N'123', NULL, N'1888')
SET IDENTITY_INSERT [dbo].[convocationform] OFF
GO
USE [master]
GO
ALTER DATABASE [test] SET  READ_WRITE 
GO
