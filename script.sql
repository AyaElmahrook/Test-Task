USE [master]
GO
/****** Object:  Database [Houres Faculty]    Script Date: 10/22/2017 18:15:13 ******/
CREATE DATABASE [Houres Faculty] ON  PRIMARY 
( NAME = N'Houres Faculty', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Houres Faculty.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Houres Faculty_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Houres Faculty_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Houres Faculty] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Houres Faculty].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Houres Faculty] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Houres Faculty] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Houres Faculty] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Houres Faculty] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Houres Faculty] SET ARITHABORT OFF
GO
ALTER DATABASE [Houres Faculty] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Houres Faculty] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Houres Faculty] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Houres Faculty] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Houres Faculty] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Houres Faculty] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Houres Faculty] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Houres Faculty] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Houres Faculty] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Houres Faculty] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Houres Faculty] SET  DISABLE_BROKER
GO
ALTER DATABASE [Houres Faculty] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Houres Faculty] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Houres Faculty] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Houres Faculty] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Houres Faculty] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Houres Faculty] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Houres Faculty] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Houres Faculty] SET  READ_WRITE
GO
ALTER DATABASE [Houres Faculty] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Houres Faculty] SET  MULTI_USER
GO
ALTER DATABASE [Houres Faculty] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Houres Faculty] SET DB_CHAINING OFF
GO
USE [Houres Faculty]
GO
/****** Object:  Table [dbo].[Terms]    Script Date: 10/22/2017 18:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Term-No] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Terms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Terms] ON
INSERT [dbo].[Terms] ([ID], [Term-No]) VALUES (1, N'First 2016')
INSERT [dbo].[Terms] ([ID], [Term-No]) VALUES (2, N'Second 2016')
INSERT [dbo].[Terms] ([ID], [Term-No]) VALUES (3, N'Summer 2016')
INSERT [dbo].[Terms] ([ID], [Term-No]) VALUES (4, N'First 2017')
INSERT [dbo].[Terms] ([ID], [Term-No]) VALUES (5, N'Second 2017')
INSERT [dbo].[Terms] ([ID], [Term-No]) VALUES (6, N'Summer 2017')
SET IDENTITY_INSERT [dbo].[Terms] OFF
/****** Object:  Table [dbo].[Employees]    Script Date: 10/22/2017 18:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employees](
	[Emp_ID] [int] IDENTITY(1,1) NOT NULL,
	[Emp_Name] [nvarchar](50) NOT NULL,
	[birth_date] [nvarchar](50) NOT NULL,
	[Emp_Phone] [nvarchar](14) NOT NULL,
	[Emp_City] [nvarchar](50) NOT NULL,
	[Emp_Address] [nvarchar](max) NOT NULL,
	[Salary] [float] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](16) NOT NULL,
	[Job] [nvarchar](50) NOT NULL,
	[Role] [bit] NOT NULL,
	[ID_Number] [nvarchar](14) NOT NULL,
	[ID_Photo] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[E-mail] [varchar](50) NOT NULL,
	[StartDate] [nvarchar](50) NULL,
	[UpdatedDate] [nvarchar](50) NULL,
	[UpdatedBy] [int] NULL,
	[Image] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
	[IsConfirmed] [bit] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Emp_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON
INSERT [dbo].[Employees] ([Emp_ID], [Emp_Name], [birth_date], [Emp_Phone], [Emp_City], [Emp_Address], [Salary], [UserName], [Password], [Job], [Role], [ID_Number], [ID_Photo], [Gender], [E-mail], [StartDate], [UpdatedDate], [UpdatedBy], [Image], [Status], [IsConfirmed]) VALUES (2, N'Amgad', N'1971-07-09', N'01001010333', N'Cairo', N'26 Jun st,block 110', 2500, N'Abo Elmagd', N'Saeed792016', N'Mathmatics doctor', 1, N'27107091700559', N'64904_188824537953775_11752210_n.jpg', 0, N'aboelmagd@yahoo.Com', N'1996-09-10', N'2017-07-30', 2, N'521477_318219921595808_1383662178_a.jpg', 1, 1)
INSERT [dbo].[Employees] ([Emp_ID], [Emp_Name], [birth_date], [Emp_Phone], [Emp_City], [Emp_Address], [Salary], [UserName], [Password], [Job], [Role], [ID_Number], [ID_Photo], [Gender], [E-mail], [StartDate], [UpdatedDate], [UpdatedBy], [Image], [Status], [IsConfirmed]) VALUES (4, N'Hend Sabry Youseef', N'1/Jan/1950', N'01077777777', N'Ashmoun', N'Salah El-deen st , Bolck 96', 2000.21, N'Hend Sabry', N'333', N'Chemistry doctor', 0, N'26985643217896', N'20-baby-photography.preview.jpg', 1, N'Hend@gmail.Com', N'2017-08-11', NULL, NULL, N'541906_154598231376406_2025833382_n.jpg', 1, 0)
INSERT [dbo].[Employees] ([Emp_ID], [Emp_Name], [birth_date], [Emp_Phone], [Emp_City], [Emp_Address], [Salary], [UserName], [Password], [Job], [Role], [ID_Number], [ID_Photo], [Gender], [E-mail], [StartDate], [UpdatedDate], [UpdatedBy], [Image], [Status], [IsConfirmed]) VALUES (5, N'Ahmed Gaber Elmahrook', N'11/Mars/1968', N'01200363636', N'Ashmoun', N'Salah Eldeen st,block 12', 7000, N'ahmad', N'a123456', N'Phesics doctor', 1, N'26803111700447', N'521477_318219921595808_1383662178_a.jpg', 0, N'ahmedG@gmail.Com', N'2000-09-11', N'2017-10-04 07:41:55', 2, N'20-baby-photography.preview.jpg', 1, 1)
INSERT [dbo].[Employees] ([Emp_ID], [Emp_Name], [birth_date], [Emp_Phone], [Emp_City], [Emp_Address], [Salary], [UserName], [Password], [Job], [Role], [ID_Number], [ID_Photo], [Gender], [E-mail], [StartDate], [UpdatedDate], [UpdatedBy], [Image], [Status], [IsConfirmed]) VALUES (6, N'Mohamed Ebrahem Nasif', N'1/Jan/1968', N'01001112223', N'Cairo ', N' Nasir city', 10000, N'Dr.Mohamed Nasif', N'm123456', N'computer science doctor', 0, N'29801011700447', N'541906_154598231376406_2025833382_n.jpg', 0, N'MohamedNasif@yahoo.com', N'2002-07-17', NULL, NULL, N'521477_318219921595808_1383662178_a.jpg', 1, 0)
INSERT [dbo].[Employees] ([Emp_ID], [Emp_Name], [birth_date], [Emp_Phone], [Emp_City], [Emp_Address], [Salary], [UserName], [Password], [Job], [Role], [ID_Number], [ID_Photo], [Gender], [E-mail], [StartDate], [UpdatedDate], [UpdatedBy], [Image], [Status], [IsConfirmed]) VALUES (7, N'Amr Mosaad Hosen', N'19/Jan/1975', N'01001234567', N'Cairo', N'the 5th region', 9000, N'Amr Mosaad', N'a123456', N'computer science doctor', 0, N'27501191700447', N'1506482_250225671832044_7159516346446597108_n.jpg', 0, N'AmrMosaad@gmail.com', N'2000-07-25', NULL, NULL, N'541906_154598231376406_2025833382_n.jpg', 1, 0)
INSERT [dbo].[Employees] ([Emp_ID], [Emp_Name], [birth_date], [Emp_Phone], [Emp_City], [Emp_Address], [Salary], [UserName], [Password], [Job], [Role], [ID_Number], [ID_Photo], [Gender], [E-mail], [StartDate], [UpdatedDate], [UpdatedBy], [Image], [Status], [IsConfirmed]) VALUES (8, N'Saeed Saleh Hasan', N'17/Mars/1968', N'01234567899', N'Menouf ', N'15 Gamal eldeen st ', 7000, N'SaeedSaleh', N's123456', N'phesics doctor', 0, N'26803171700456', N'Jellyfish.jpg', 0, N'SaeedSaleh@Yahoo.Com', N'2004-06-21', NULL, NULL, N'20-baby-photography.preview.jpg', 1, 0)
SET IDENTITY_INSERT [dbo].[Employees] OFF
/****** Object:  Table [dbo].[Students]    Script Date: 10/22/2017 18:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[Std_ID] [int] IDENTITY(1,1) NOT NULL,
	[Std_Name] [nvarchar](50) NOT NULL,
	[Std_birthdate] [nvarchar](50) NOT NULL,
	[Std_Phone] [nvarchar](14) NOT NULL,
	[Std_City] [nvarchar](50) NULL,
	[Std_Address] [nvarchar](max) NULL,
	[Level] [nvarchar](50) NULL,
	[Department] [nvarchar](50) NULL,
	[E-mail] [varchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](16) NOT NULL,
	[ID-Number] [nvarchar](14) NOT NULL,
	[ID-Photo] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[UpDatedDate] [nvarchar](50) NULL,
	[UpdatedBy] [int] NULL,
	[Image] [nvarchar](50) NULL,
	[IsConfirmed] [bit] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_birthdate], [Std_Phone], [Std_City], [Std_Address], [Level], [Department], [E-mail], [UserName], [Password], [ID-Number], [ID-Photo], [Gender], [UpDatedDate], [UpdatedBy], [Image], [IsConfirmed]) VALUES (2, N'Aya', N'2/Feb/1978', N'01200673649', N'Ashmoun', N'Salah Eldeen st', N'less than 72', N'Phesics and computer science', N'ayaelmahrook@gmail.com', N'Aya Gaber', N'farida282015', N'29603091700447', N'1016574_606167299476030_1157900543_n.jpg', 1, N'2017-07-30', 2, N'347.jpg', 1)
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_birthdate], [Std_Phone], [Std_City], [Std_Address], [Level], [Department], [E-mail], [UserName], [Password], [ID-Number], [ID-Photo], [Gender], [UpDatedDate], [UpdatedBy], [Image], [IsConfirmed]) VALUES (28, N'Aya Gaber Elmahrook', N'2/Feb/1978', N'01200673649', N'teww', N'kjhg,jhgf', N'less than 108', N'Chemistry', N'ayaelmahrook@gmail.com', N'Aya Gaber', N'saeed792016', N'29703091700447', N'20-baby-photography.preview.jpg', 1, N'2017-09-28 02:14:58', 2, N'1001554_659286540774071_1619508893_n.jpg', 0)
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_birthdate], [Std_Phone], [Std_City], [Std_Address], [Level], [Department], [E-mail], [UserName], [Password], [ID-Number], [ID-Photo], [Gender], [UpDatedDate], [UpdatedBy], [Image], [IsConfirmed]) VALUES (32, N'Noha mohamed Ahmed', N'1/Jan/1998', N'01233333333', N'helwan', N'retuihj,jdjcd', N'less than 108', N'Computer Science', N'Noha@gmail.com', N'Noha Gamal', N'n123456', N'2975648123356', N'1001554_659286540774071_1619508893_n.jpg', 1, N'2017-09-28 02:32:48', 2, N'347.jpg', 0)
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_birthdate], [Std_Phone], [Std_City], [Std_Address], [Level], [Department], [E-mail], [UserName], [Password], [ID-Number], [ID-Photo], [Gender], [UpDatedDate], [UpdatedBy], [Image], [IsConfirmed]) VALUES (33, N'Yasmeen Alaodein', N'1/Jan/1995', N' 01011111111', N'Shebeen Elkoom', N'bhjjkhn,ghb', N'less than 108', N'Physics and computer science', N'yasmeenalaa@gmail.com', N'Yasmeen Alaa', N'farida28', N'29696963963215', N'1016574_606167299476030_1157900543_n.jpg', 1, N'2017-10-04 03:44:16', 2, N'64904_188824537953775_11752210_n.jpg', 1)
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_birthdate], [Std_Phone], [Std_City], [Std_Address], [Level], [Department], [E-mail], [UserName], [Password], [ID-Number], [ID-Photo], [Gender], [UpDatedDate], [UpdatedBy], [Image], [IsConfirmed]) VALUES (35, N'Mohamed Salah eldeen', N'18/Jan/1995', N'01023232323', N'Aswan', N'naf st , block 52', N'less than 72', N'Phesics', N'SalahEldeen@yahoo.com', N'Salah Eldeen', N'm123456', N'29501181700447', N'541906_154598231376406_2025833382_n.jpg', 0, NULL, NULL, N'1001554_659286540774071_1619508893_n.jpg', 0)
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_birthdate], [Std_Phone], [Std_City], [Std_Address], [Level], [Department], [E-mail], [UserName], [Password], [ID-Number], [ID-Photo], [Gender], [UpDatedDate], [UpdatedBy], [Image], [IsConfirmed]) VALUES (36, N'Yousuf Asaad Saeed', N'2/Aug/1982', N'01023232323', N'Asmoun ', N'Elkawady', N'More than 108', N'Computer Science', N'yousefA@yahoo.com', N'Jo Asaad', N'farida28', N'28208021700447', N'521477_318219921595808_1383662178_a.jpg', 0, NULL, NULL, N'20-baby-photography.preview.jpg', 0)
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_birthdate], [Std_Phone], [Std_City], [Std_Address], [Level], [Department], [E-mail], [UserName], [Password], [ID-Number], [ID-Photo], [Gender], [UpDatedDate], [UpdatedBy], [Image], [IsConfirmed]) VALUES (37, N'Ebraheem nagy ali', N'11/Dec/1995', N'01012345678', N'Alex', N'Elagamy ,Elbetash st , block 50', N'More than 108', N'Mathmatics', N'HemaN@gmail.Com', N'Ebraheem ali', N'e123456', N'29512111700447', N'521477_318219921595808_1383662178_a.jpg', 0, NULL, NULL, N'20-baby-photography.preview.jpg', 0)
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_birthdate], [Std_Phone], [Std_City], [Std_Address], [Level], [Department], [E-mail], [UserName], [Password], [ID-Number], [ID-Photo], [Gender], [UpDatedDate], [UpdatedBy], [Image], [IsConfirmed]) VALUES (38, N'Asmaa Ali AbdElKawy', N'13/Apr/1995', N'01200673649', N'Sheben elkoom ', N'Met bekhet ,nasr st', N'More than 108', N'Computer Science', N'asmaaali@gmail.com', N'Asmaa Ali', N'a123456', N'29504131700447', N'4.jpg', 1, N'2017-10-04 03:44:04', 2, N'3.jpg', 1)
SET IDENTITY_INSERT [dbo].[Students] OFF
/****** Object:  Table [dbo].[News]    Script Date: 10/22/2017 18:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[News_ID] [int] IDENTITY(1,1) NOT NULL,
	[News_Title] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[Date_Of_First_Puplished] [nvarchar](50) NOT NULL,
	[UpdatedDate] [nvarchar](50) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[News_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[News] ON
INSERT [dbo].[News] ([News_ID], [News_Title], [Image], [Subject], [Date_Of_First_Puplished], [UpdatedDate], [UpdatedBy]) VALUES (4, N'NEW NET WORK COVERING THE EGP FACULTY', N'6.jpg', N'  EGP faculty computer science doctors by the support of the faculty staff and according to the order of the faculty header , they have made a strong secured and powerful network in order to help students to search make projects and achieve a type of prosperity for our students and staff members :)', N'2017-09-28 11:20:36', N'2017-10-16 04:56', 2)
INSERT [dbo].[News] ([News_ID], [News_Title], [Image], [Subject], [Date_Of_First_Puplished], [UpdatedDate], [UpdatedBy]) VALUES (5, N'THE STUDENTS REGISTERING SUBJECTS', N'4.jpg', N' We announce of the start of Students registering subjects from the next week In-Shaa-Alla .It''s going to  be available on Sunday and remains till the last of the week for all students from different levels in the EGP faculty . 
 We hope all students will cooperate to end this process successfully :) .', N'2017-09-28 11:57', N'2017-10-01 01:18', 2)
SET IDENTITY_INSERT [dbo].[News] OFF
/****** Object:  Table [dbo].[Department]    Script Date: 10/22/2017 18:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Dep_ID] [int] IDENTITY(1,1) NOT NULL,
	[Dep_Name] [nvarchar](50) NOT NULL,
	[UpdatedDate] [nvarchar](50) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Dep_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([Dep_ID], [Dep_Name], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Phesics', N'1990-06-09', 2)
INSERT [dbo].[Department] ([Dep_ID], [Dep_Name], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Chemistry', N'2017-10-17 04:06:34', 2)
INSERT [dbo].[Department] ([Dep_ID], [Dep_Name], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Mathmatics', N'1992-06-07', 2)
INSERT [dbo].[Department] ([Dep_ID], [Dep_Name], [UpdatedDate], [UpdatedBy]) VALUES (4, N'Computer Science', N'1996-03-07', 2)
INSERT [dbo].[Department] ([Dep_ID], [Dep_Name], [UpdatedDate], [UpdatedBy]) VALUES (7, N'Geology', N'2017-10-17 04:33:51', 2)
INSERT [dbo].[Department] ([Dep_ID], [Dep_Name], [UpdatedDate], [UpdatedBy]) VALUES (8, N'physics and computer science', N'2017-10-17 04:23:44', 5)
SET IDENTITY_INSERT [dbo].[Department] OFF
/****** Object:  Table [dbo].[Emp_Dep]    Script Date: 10/22/2017 18:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp_Dep](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Emp_ID] [int] NULL,
	[Dep_ID] [int] NULL,
 CONSTRAINT [PK_Emp_Dep] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Emp_Dep] ON
INSERT [dbo].[Emp_Dep] ([ID], [Emp_ID], [Dep_ID]) VALUES (1, 2, 1)
INSERT [dbo].[Emp_Dep] ([ID], [Emp_ID], [Dep_ID]) VALUES (2, 4, 1)
SET IDENTITY_INSERT [dbo].[Emp_Dep] OFF
/****** Object:  StoredProcedure [dbo].[Delete_News]    Script Date: 10/22/2017 18:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Delete_News] @ID int
AS
DELETE News
WHERE News_ID=@ID
GO
/****** Object:  Table [dbo].[Complaints]    Script Date: 10/22/2017 18:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaints](
	[Complaint_ID] [int] IDENTITY(1,1) NOT NULL,
	[Complaint_Title] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[Std_ID] [int] NULL,
	[Date] [nvarchar](50) NOT NULL,
	[UpdatedDate] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Complaints] PRIMARY KEY CLUSTERED 
(
	[Complaint_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Complaints] ON
INSERT [dbo].[Complaints] ([Complaint_ID], [Complaint_Title], [Subject], [Std_ID], [Date], [UpdatedDate], [Status]) VALUES (1, N'Unavailable', N'it''s 2 monthes since the start of studing year, But the book of Data strucecher hasn''t yet been available ', 2, N'2017-04-28', N'2017-04-28', 1)
INSERT [dbo].[Complaints] ([Complaint_ID], [Complaint_Title], [Subject], [Std_ID], [Date], [UpdatedDate], [Status]) VALUES (6, N'Materials delay', N'I want a material for system analysis and design ,I''ve ordered it from computer science department secretary two weeks ago but It''s not available till now . ', 28, N'2017-09-16 ', NULL, 0)
INSERT [dbo].[Complaints] ([Complaint_ID], [Complaint_Title], [Subject], [Std_ID], [Date], [UpdatedDate], [Status]) VALUES (7, N'Exams time conflict', N'I''ve a problem with the last exams table update , It''s unfair for me to have 2 exams in the same day and other 3 exams in the next three days .
I hope you look at my problem and find a solution .
Thanks allot :(', 2, N'2017-09-16 ', NULL, 1)
INSERT [dbo].[Complaints] ([Complaint_ID], [Complaint_Title], [Subject], [Std_ID], [Date], [UpdatedDate], [Status]) VALUES (8, N'Subjects time conflict', N' It''s my last term in the faculty , I''m a graduated student but I''ve three subjects at the same time ,they are (Software engenering),(NetWorks),(Solid State Phisics).
I wish you cooperate and help solving the problem Otherwise I''ll need a new term to be graduated and that''s not fair at all .', 2, N'2017-09-22', NULL, 0)
SET IDENTITY_INSERT [dbo].[Complaints] OFF
/****** Object:  Table [dbo].[Library]    Script Date: 10/22/2017 18:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Library](
	[Book_ID] [int] IDENTITY(1,1) NOT NULL,
	[Dep_ID] [int] NULL,
	[Book] [nvarchar](max) NULL,
	[BookName] [nvarchar](50) NULL,
	[Audio] [nvarchar](max) NULL,
	[Gallery] [nvarchar](max) NULL,
	[Role] [nvarchar](50) NULL,
	[Updated Date] [nvarchar](50) NULL,
	[Updaetd By] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[Auther] [nvarchar](50) NULL,
 CONSTRAINT [PK_Library] PRIMARY KEY CLUSTERED 
(
	[Book_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Library] ON
INSERT [dbo].[Library] ([Book_ID], [Dep_ID], [Book], [BookName], [Audio], [Gallery], [Role], [Updated Date], [Updaetd By], [Price], [Auther]) VALUES (1, 4, N'http://download-internet-pdf-ebooks.com/18712-free-book', N'EGP Faculty', NULL, NULL, N'About Computer science', NULL, NULL, CAST(200 AS Decimal(18, 0)), N'Asmaa Ali')
INSERT [dbo].[Library] ([Book_ID], [Dep_ID], [Book], [BookName], [Audio], [Gallery], [Role], [Updated Date], [Updaetd By], [Price], [Auther]) VALUES (2, 4, N'O.s.pptx', N'O.S', NULL, NULL, N'Operating System for computer science', N'2017-09-28', 2, CAST(70 AS Decimal(18, 0)), N'Hany')
INSERT [dbo].[Library] ([Book_ID], [Dep_ID], [Book], [BookName], [Audio], [Gallery], [Role], [Updated Date], [Updaetd By], [Price], [Auther]) VALUES (3, 2, N'28حرف لاحمد حلمي.pdf', N'28 character', NULL, NULL, N'litrature book', N'2017-09-28', 2, CAST(120 AS Decimal(18, 0)), N'ahmed helmy')
SET IDENTITY_INSERT [dbo].[Library] OFF
/****** Object:  StoredProcedure [dbo].[Insert_News]    Script Date: 10/22/2017 18:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_News] @Title nvarchar(50),@Image varbinary(Max),@Subject nvarchar(Max),
@UpdatedBy nvarchar(50)
AS
INSERT INTO dbo.News (News_Title,[Image],[Subject],Date_Of_First_Puplished,
UpdatedBy)VALUES (@Title,@Image,@Subject,GETDATE(),@UpdatedBy)
GO
/****** Object:  StoredProcedure [dbo].[Insert_Department]    Script Date: 10/22/2017 18:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_Department] @Dep_Name nvarchar(50),@UpdatedBy nvarchar(50)
AS 
INSERT INTO dbo.Department (Dep_Name,UpdatedDate,UpdatedBy)
VALUES (@Dep_Name,GETDATE(),@UpdatedBy)
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 10/22/2017 18:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Sub_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sub_Name] [nvarchar](50) NOT NULL,
	[Dep_ID] [int] NULL,
	[Hours] [float] NOT NULL,
 CONSTRAINT [PK_Subjects_1] PRIMARY KEY CLUSTERED 
(
	[Sub_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (1, N'System analysis and design', 4, 3)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (2, N'Data Structure', 4, 4)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (3, N'Atomic Phesics', 1, 3)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (4, N'Alternative current', 1, 3)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (5, N'Applied phesics', 1, 4)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (6, N'Organic chemistry', 2, 2)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (7, N'Unorganic chemistry', 2, 3)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (8, N'Public Mathmatics', 3, 3)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (9, N'Mathmatical analysis', 3, 3)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (10, N'Ordinary differential equations', 3, 4)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (11, N'Algorithm', 4, 2)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (12, N'Solid Phesics', 1, 3)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (13, N'Soft ware Engineering', 4, 4)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (14, N'Electromagnitism', 1, 3)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (26, N'compailer', 4, 3)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (27, N'operating system', 4, 4)
INSERT [dbo].[Subjects] ([Sub_ID], [Sub_Name], [Dep_ID], [Hours]) VALUES (31, N'artificial intelligent', 8, 2)
SET IDENTITY_INSERT [dbo].[Subjects] OFF
/****** Object:  StoredProcedure [dbo].[Update_News]    Script Date: 10/22/2017 18:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Update_News] @Title nvarchar(50),@Image nvarchar(50)=null,@Subject nvarchar(Max),
@UpdatedBy nvarchar(50),@ID int 
AS
UPDATE dbo.News
SET News_Title=@Title ,
 [Image]=@Image , [Subject]=@Subject , UpdatedDate= GetDate() , UpdatedBy=@UpdatedBy
where News_ID=@ID
GO
/****** Object:  Table [dbo].[Subject-Term]    Script Date: 10/22/2017 18:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject-Term](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sub-ID] [int] NULL,
	[Term-ID] [int] NULL,
	[Doc-ID] [int] NULL,
	[Success Ratio] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Subject-Term] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Subject-Term] ON
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (56, 11, 6, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (57, 4, 6, 5, CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (58, 5, 6, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (59, 26, 6, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (60, 9, 6, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (61, 10, 6, 2, CAST(250 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (62, 1, 6, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (87, 4, 3, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (88, 3, 3, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (89, 2, 3, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (90, 9, 3, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (91, 6, 3, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (92, 8, 3, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (93, 1, 3, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (94, 7, 3, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (95, 11, 2, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (96, 4, 2, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (97, 3, 2, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (98, 26, 2, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (99, 2, 2, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (100, 9, 2, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (101, 10, 2, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (102, 6, 2, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (103, 8, 2, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (104, 12, 2, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (105, 1, 2, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (106, 7, 2, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (107, 11, 1, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (108, 4, 1, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (109, 5, 1, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (110, 3, 1, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (111, 26, 1, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (112, 14, 1, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (113, 10, 1, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (114, 6, 1, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (115, 8, 1, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (116, 11, 5, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (117, 5, 5, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (118, 3, 5, 5, CAST(205 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (119, 9, 5, 2, CAST(288 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (120, 10, 5, 2, CAST(230 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (121, 6, 5, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (122, 8, 5, 2, CAST(210 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (123, 7, 5, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (124, 11, 4, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (125, 4, 4, 5, CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (126, 5, 4, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (127, 26, 4, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (128, 14, 4, 5, CAST(280 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (129, 9, 4, 2, CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (130, 27, 4, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (131, 10, 4, 2, CAST(260 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (132, 6, 4, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (133, 8, 4, 2, CAST(296 AS Decimal(18, 0)))
INSERT [dbo].[Subject-Term] ([ID], [Sub-ID], [Term-ID], [Doc-ID], [Success Ratio]) VALUES (134, 7, 4, 4, CAST(0 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Subject-Term] OFF
/****** Object:  Table [dbo].[Students_Subjects]    Script Date: 10/22/2017 18:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students_Subjects](
	[SS_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sub_ID] [int] NULL,
	[Std_ID] [int] NULL,
	[Term_ID] [int] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Students_Subjects] PRIMARY KEY CLUSTERED 
(
	[SS_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Students_Subjects] ON
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (27, 11, 2, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (28, 4, 2, 6, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (29, 5, 2, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (30, 26, 2, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (31, 9, 2, 6, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (32, 1, 2, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (54, 11, 33, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (55, 5, 33, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (56, 3, 33, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (57, 9, 33, 6, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (58, 8, 33, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (59, 7, 33, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (60, 3, 38, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (61, 9, 38, 6, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (62, 10, 38, 6, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (63, 6, 38, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (64, 8, 38, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (65, 7, 38, 6, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (66, 11, 33, 5, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (67, 5, 33, 5, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (68, 3, 33, 5, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (69, 9, 33, 5, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (70, 8, 33, 5, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (71, 7, 33, 5, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (72, 11, 38, 5, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (73, 5, 38, 5, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (74, 10, 38, 5, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (75, 6, 38, 5, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (76, 8, 38, 5, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (77, 7, 38, 5, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (78, 11, 2, 5, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (79, 5, 2, 5, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (80, 3, 2, 5, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (81, 9, 2, 5, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (82, 10, 2, 5, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (83, 6, 2, 5, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (85, 11, 2, 4, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (86, 4, 2, 4, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (87, 5, 2, 4, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (88, 26, 2, 4, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (89, 10, 2, 4, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (90, 6, 2, 4, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (91, 26, 33, 4, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (92, 9, 33, 4, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (93, 27, 33, 4, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (94, 6, 33, 4, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (95, 8, 33, 4, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (96, 7, 33, 4, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (97, 11, 38, 4, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (98, 5, 38, 4, 0)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (99, 14, 38, 4, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (100, 9, 38, 4, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (101, 10, 38, 4, 1)
INSERT [dbo].[Students_Subjects] ([SS_ID], [Sub_ID], [Std_ID], [Term_ID], [Status]) VALUES (102, 6, 38, 4, 0)
SET IDENTITY_INSERT [dbo].[Students_Subjects] OFF
/****** Object:  Table [dbo].[Results]    Script Date: 10/22/2017 18:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[Results_ID] [int] IDENTITY(1,1) NOT NULL,
	[Std_ID] [int] NULL,
	[Sub_ID] [int] NULL,
	[Degree] [decimal](18, 0) NULL,
	[Grade] [nvarchar](50) NULL,
	[UpdatedDate] [nvarchar](50) NULL,
	[UpdatedBy] [int] NULL,
	[TermID] [int] NULL,
 CONSTRAINT [PK_Results] PRIMARY KEY CLUSTERED 
(
	[Results_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Results] ON
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (25, 2, 9, CAST(190 AS Decimal(18, 0)), N'Excellent', N'2017-29-04 10:29', 2, 6)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (26, 33, 9, CAST(200 AS Decimal(18, 0)), N'Excellent', N'2017-29-04 10:29', 2, 6)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (27, 38, 9, CAST(160 AS Decimal(18, 0)), N'Good', N'2017-29-04 10:29', 2, 6)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (28, 38, 10, CAST(250 AS Decimal(18, 0)), N'Excellent', N'2017-55-04 10:55', 2, 6)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (29, 33, 9, CAST(280 AS Decimal(18, 0)), N'Excellent', N'2017-56-04 10:56', 2, 5)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (30, 2, 9, CAST(296 AS Decimal(18, 0)), N'Excellent', N'2017-56-04 10:56', 2, 5)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (31, 38, 10, CAST(200 AS Decimal(18, 0)), N'Good', N'2017-58-04 10:58', 2, 5)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (32, 2, 10, CAST(260 AS Decimal(18, 0)), N'Excellent', N'2017-58-04 10:58', 2, 5)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (33, 33, 8, CAST(270 AS Decimal(18, 0)), N'Excellent', N'2017-58-04 10:58', 2, 5)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (34, 38, 8, CAST(150 AS Decimal(18, 0)), N'Accepted', N'2017-58-04 10:58', 2, 5)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (35, 2, 4, CAST(260 AS Decimal(18, 0)), N'Excellent', N'2017-39-04 11:39', 5, 6)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (36, 33, 3, CAST(180 AS Decimal(18, 0)), N'Accepted', N'2017-40-04 11:40', 5, 5)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (37, 2, 3, CAST(230 AS Decimal(18, 0)), N'Very good', N'2017-40-04 11:40', 5, 5)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (38, 33, 9, CAST(300 AS Decimal(18, 0)), N'Excellent', N'2017-46-05 01:46', 2, 4)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (39, 38, 9, CAST(300 AS Decimal(18, 0)), N'Excellent', N'2017-46-05 01:46', 2, 4)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (40, 2, 10, CAST(290 AS Decimal(18, 0)), N'Excellent', N'2017-46-05 01:46', 2, 4)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (41, 38, 10, CAST(230 AS Decimal(18, 0)), N'Very good', N'2017-46-05 01:46', 2, 4)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (42, 33, 8, CAST(296 AS Decimal(18, 0)), N'Excellent', N'2017-50-05 01:50', 2, 4)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (43, 2, 4, CAST(280 AS Decimal(18, 0)), N'Excellent', N'2017-53-05 01:53', 5, 4)
INSERT [dbo].[Results] ([Results_ID], [Std_ID], [Sub_ID], [Degree], [Grade], [UpdatedDate], [UpdatedBy], [TermID]) VALUES (44, 38, 14, CAST(280 AS Decimal(18, 0)), N'Excellent', N'2017-54-05 01:54', 5, 4)
SET IDENTITY_INSERT [dbo].[Results] OFF
/****** Object:  StoredProcedure [dbo].[Insert_Book]    Script Date: 10/22/2017 18:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Insert_Book] @Dep_ID INT=null,@Book nvarchar(max)=null
,@Role nvarchar(50)=null,@Price money=null,@UpdatedBy nvarchar(50) 
AS
INSERT INTO dbo.Library(Dep_ID,Book,[Role],[Price],[Updated Date],[Updaetd By])
VALUES (@Dep_ID,@Book,@Role,@Price,GETDATE(),@UpdatedBy)
GO
/****** Object:  Table [dbo].[Exams]    Script Date: 10/22/2017 18:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exams](
	[Exam_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sub_ID] [int] NULL,
	[Place] [nvarchar](50) NOT NULL,
	[Date] [nvarchar](50) NOT NULL,
	[Start_Time] [nvarchar](50) NOT NULL,
	[End_Time] [nvarchar](50) NOT NULL,
	[Term_ID] [int] NULL,
 CONSTRAINT [PK_Exams] PRIMARY KEY CLUSTERED 
(
	[Exam_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Exams] ON
INSERT [dbo].[Exams] ([Exam_ID], [Sub_ID], [Place], [Date], [Start_Time], [End_Time], [Term_ID]) VALUES (27, 12, N'Lecture hall 8', N'2017-09-27', N'14:00', N'16:00', 1)
INSERT [dbo].[Exams] ([Exam_ID], [Sub_ID], [Place], [Date], [Start_Time], [End_Time], [Term_ID]) VALUES (28, 11, N'hall 7', N'2017-09-18', N'09:00', N'11:00', 6)
INSERT [dbo].[Exams] ([Exam_ID], [Sub_ID], [Place], [Date], [Start_Time], [End_Time], [Term_ID]) VALUES (29, 5, N'Lecture hall 3', N'2017-09-12', N'13:58', N'16:00', 6)
INSERT [dbo].[Exams] ([Exam_ID], [Sub_ID], [Place], [Date], [Start_Time], [End_Time], [Term_ID]) VALUES (30, 3, N'hall 3', N'2017-09-04', N'11:30', N'13:30', 6)
INSERT [dbo].[Exams] ([Exam_ID], [Sub_ID], [Place], [Date], [Start_Time], [End_Time], [Term_ID]) VALUES (31, 26, N'Lecture hall 5', N'2017-09-04', N'14:00', N'16:00', 6)
INSERT [dbo].[Exams] ([Exam_ID], [Sub_ID], [Place], [Date], [Start_Time], [End_Time], [Term_ID]) VALUES (32, 2, N'hall 4', N'2017-09-27', N'14:00', N'16:00', 6)
SET IDENTITY_INSERT [dbo].[Exams] OFF
/****** Object:  Table [dbo].[Employees_Subjects]    Script Date: 10/22/2017 18:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees_Subjects](
	[ES_ID] [int] IDENTITY(1,1) NOT NULL,
	[Emp_ID] [int] NULL,
	[Sub_ID] [int] NULL,
	[Term-ID] [int] NULL,
	[Updated Date] [nvarchar](50) NOT NULL,
	[Updated By] [int] NULL,
	[StartTime] [nvarchar](50) NULL,
	[EndTime] [nvarchar](50) NULL,
	[Date] [nvarchar](50) NULL,
	[Place] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employees_Subjects] PRIMARY KEY CLUSTERED 
(
	[ES_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees_Subjects] ON
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (20, 6, 11, 6, N'2017-27-04 11:27', 2, N'09:30', N'11:30', N'Sun', N'Hall 1')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (21, 5, 4, 6, N'2017-27-04 11:27', 2, N'12:00', N'14:00', N'Mon', N'Hall 2')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (22, 8, 5, 6, N'2017-27-04 11:27', 2, N'09:30', N'11:30', N'Mon', N'Hall 3')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (23, 7, 26, 6, N'2017-27-04 11:27', 2, N'12:00', N'14:00', N'Sun', N'lecture hall 1')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (24, 2, 9, 6, N'2017-27-04 11:27', 2, N'09:30', N'11:30', N'Tue', N'Hall 5')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (25, 2, 10, 6, N'2017-27-04 11:27', 2, N'09:30', N'11:30', N'Wed', N'Hall 8')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (26, 6, 1, 6, N'2017-27-04 11:27', 2, N'09:30', N'11:30', N'Sat', N'lecture hall 3')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (51, 5, 4, 3, N'2017-14-04 03:14', 2, N'09:30', N'11:00', N'Mon', N'Hall 4')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (52, 8, 3, 3, N'2017-14-04 03:14', 2, N'09:30', N'11:30', N'Thu', N'Hall 3')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (53, 7, 2, 3, N'2017-14-04 03:14', 2, N'12:00', N'14:00', N'Tue', N'lecture hall 5')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (54, 2, 9, 3, N'2017-14-04 03:14', 2, N'12:00', N'14:00', N'Sat', N'lecture hall 5')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (55, 4, 6, 3, N'2017-14-04 03:14', 2, N'12:00', N'14:00', N'Sun', N'lecture hall 1')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (56, 2, 8, 3, N'2017-14-04 03:14', 2, N'09:30', N'11:30', N'Sat', N'Hall 6')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (57, 6, 1, 3, N'2017-14-04 03:14', 2, N'14:30', N'16:30', N'Wed', N'lecture hall 2')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (58, 4, 7, 3, N'2017-14-04 03:14', 2, N'09:30', N'11:30', N'Sat', N'lecture hall 1')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (59, 6, 11, 2, N'2017-21-04 03:21', 2, N'09:30', N'11:30', N'Mon', N'Hall 5')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (60, 5, 4, 2, N'2017-21-04 03:21', 2, N'09:30', N'11:30', N'Sun', N'Hall 7')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (61, 8, 3, 2, N'2017-21-04 03:21', 2, N'09:30', N'11:30', N'Tue', N'Hall 8')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (62, 6, 26, 2, N'2017-21-04 03:21', 2, N'09:30', N'11:30', N'Wed', N'lecture hall 2')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (63, 7, 2, 2, N'2017-21-04 03:21', 2, N'09:30', N'11:30', N'Thu', N'lecture hall 5')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (64, 2, 9, 2, N'2017-21-04 03:21', 2, N'09:30', N'11:30', N'Sat', N'Hall 5')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (65, 2, 10, 2, N'2017-21-04 03:21', 2, N'12:00', N'14:00', N'Sat', N'Hall 6')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (66, 4, 6, 2, N'2017-21-04 03:21', 2, N'12:00', N'14:00', N'Sun', N'Hall 4')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (67, 2, 8, 2, N'2017-21-04 03:21', 2, N'12:00', N'14:00', N'Wed', N'Hall 8')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (68, 5, 12, 2, N'2017-21-04 03:21', 2, N'12:00', N'14:00', N'Wed', N'Hall 8')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (69, 7, 1, 2, N'2017-21-04 03:21', 2, N'12:00', N'14:00', N'Thu', N'lecture hall 5')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (70, 4, 7, 2, N'2017-21-04 03:21', 2, N'12:00', N'14:00', N'Thu', N'lecture hall 3')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (71, 7, 11, 1, N'2017-39-04 03:39', 2, N'09:30', N'11:30', N'Sun', N'Hall 4')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (72, 8, 4, 1, N'2017-39-04 03:39', 2, N'09:30', N'11:30', N'Mon', N'Hall 1')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (73, 5, 5, 1, N'2017-39-04 03:39', 2, N'09:30', N'11:30', N'Tue', N'Hall 6')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (74, 8, 3, 1, N'2017-39-04 03:39', 2, N'09:30', N'11:30', N'Wed', N'lecture hall 3')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (75, 6, 26, 1, N'2017-39-04 03:39', 2, N'09:30', N'11:30', N'Thu', N'Place')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (76, 8, 14, 1, N'2017-39-04 03:39', 2, N'09:30', N'11:30', N'Sat', N'lecture hall 2')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (77, 2, 10, 1, N'2017-39-04 03:39', 2, N'09:30', N'11:30', N'Sun', N'lecture hall 1')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (78, 4, 6, 1, N'2017-39-04 03:39', 2, N'12:00', N'14:00', N'Sun', N'lecture hall 1')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (79, 2, 8, 1, N'2017-39-04 03:39', 2, N'12:10', N'14:00', N'Tue', N'Hall 5')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (80, 6, 11, 5, N'2017-08-04 10:08', 2, N'09:30', N'11:30', N'Sun', N'Hall 2')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (81, 8, 5, 5, N'2017-08-04 10:08', 2, N'09:30', N'11:30', N'Mon', N'Hall 1')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (82, 5, 3, 5, N'2017-08-04 10:08', 2, N'09:30', N'11:30', N'Tue', N'Hall 3')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (83, 2, 9, 5, N'2017-08-04 10:08', 2, N'09:30', N'11:30', N'Wed', N'Hall 4')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (84, 2, 10, 5, N'2017-08-04 10:08', 2, N'09:30', N'11:30', N'Thu', N'Hall 5')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (85, 4, 6, 5, N'2017-08-04 10:08', 2, N'12:00', N'14:00', N'Sun', N'Hall 7')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (86, 2, 8, 5, N'2017-08-04 10:08', 2, N'09:30', N'11:30', N'Sat', N'Hall 6')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (87, 4, 7, 5, N'2017-08-04 10:08', 2, N'12:00', N'14:00', N'Mon', N'Hall 8')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (88, 7, 11, 4, N'2017-52-05 12:52', 2, N'09:30', N'11:30', N'Sun', N'Hall 1')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (89, 5, 4, 4, N'2017-52-05 12:52', 2, N'09:30', N'11:30', N'Mon', N'Hall 2')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (90, 8, 5, 4, N'2017-52-05 12:52', 2, N'09:30', N'11:30', N'Tue', N'Hall 3')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (91, 6, 26, 4, N'2017-52-05 12:52', 2, N'09:30', N'11:30', N'Wed', N'Hall 4')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (92, 5, 14, 4, N'2017-52-05 12:52', 2, N'09:30', N'11:30', N'Thu', N'Hall 5')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (93, 2, 9, 4, N'2017-52-05 12:52', 2, N'09:30', N'11:30', N'Sat', N'Hall 7')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (94, 7, 27, 4, N'2017-52-05 12:52', 2, N'12:00', N'14:00', N'Sun', N'Hall 6')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (95, 2, 10, 4, N'2017-52-05 12:52', 2, N'12:00', N'14:00', N'Mon', N'Hall 8')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (96, 4, 6, 4, N'2017-52-05 12:52', 2, N'12:00', N'14:00', N'Tue', N'lecture hall 1')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (97, 2, 8, 4, N'2017-52-05 12:52', 2, N'12:00', N'14:00', N'Sat', N'lecture hall 2')
INSERT [dbo].[Employees_Subjects] ([ES_ID], [Emp_ID], [Sub_ID], [Term-ID], [Updated Date], [Updated By], [StartTime], [EndTime], [Date], [Place]) VALUES (98, 4, 7, 4, N'2017-52-05 12:52', 2, N'14:30', N'16:30', N'Sun', N'lecture hall 5')
SET IDENTITY_INSERT [dbo].[Employees_Subjects] OFF
/****** Object:  StoredProcedure [dbo].[ComplaintData]    Script Date: 10/22/2017 18:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ComplaintData] 
AS
SELECT C.*, S.Std_Name
  FROM Complaints AS C
   INNER JOIN Students AS S 
   ON C.Std_ID = S.Std_ID
   --WHERE C.Status ='false'
   Order by C.Status
GO
/****** Object:  ForeignKey [FK_Employees_Employees]    Script Date: 10/22/2017 18:15:14 ******/
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Employees] ([Emp_ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
/****** Object:  ForeignKey [FK_Students_Employees]    Script Date: 10/22/2017 18:15:14 ******/
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Employees] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Employees] ([Emp_ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Employees]
GO
/****** Object:  ForeignKey [FK_News_Employees]    Script Date: 10/22/2017 18:15:14 ******/
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Employees] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Employees] ([Emp_ID])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Employees]
GO
/****** Object:  ForeignKey [FK_Department_Employees]    Script Date: 10/22/2017 18:15:14 ******/
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Employees] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Employees] ([Emp_ID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Employees]
GO
/****** Object:  ForeignKey [FK_Emp_Dep_Department]    Script Date: 10/22/2017 18:15:14 ******/
ALTER TABLE [dbo].[Emp_Dep]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Dep_Department] FOREIGN KEY([Dep_ID])
REFERENCES [dbo].[Department] ([Dep_ID])
GO
ALTER TABLE [dbo].[Emp_Dep] CHECK CONSTRAINT [FK_Emp_Dep_Department]
GO
/****** Object:  ForeignKey [FK_Emp_Dep_Employees]    Script Date: 10/22/2017 18:15:14 ******/
ALTER TABLE [dbo].[Emp_Dep]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Dep_Employees] FOREIGN KEY([Emp_ID])
REFERENCES [dbo].[Employees] ([Emp_ID])
GO
ALTER TABLE [dbo].[Emp_Dep] CHECK CONSTRAINT [FK_Emp_Dep_Employees]
GO
/****** Object:  ForeignKey [FK_Complaints_Students]    Script Date: 10/22/2017 18:15:26 ******/
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaints_Students] FOREIGN KEY([Std_ID])
REFERENCES [dbo].[Students] ([Std_ID])
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK_Complaints_Students]
GO
/****** Object:  ForeignKey [FK_Library_Department]    Script Date: 10/22/2017 18:15:26 ******/
ALTER TABLE [dbo].[Library]  WITH CHECK ADD  CONSTRAINT [FK_Library_Department] FOREIGN KEY([Dep_ID])
REFERENCES [dbo].[Department] ([Dep_ID])
GO
ALTER TABLE [dbo].[Library] CHECK CONSTRAINT [FK_Library_Department]
GO
/****** Object:  ForeignKey [FK_Library_Employees]    Script Date: 10/22/2017 18:15:26 ******/
ALTER TABLE [dbo].[Library]  WITH CHECK ADD  CONSTRAINT [FK_Library_Employees] FOREIGN KEY([Updaetd By])
REFERENCES [dbo].[Employees] ([Emp_ID])
GO
ALTER TABLE [dbo].[Library] CHECK CONSTRAINT [FK_Library_Employees]
GO
/****** Object:  ForeignKey [FK_Subjects_Department]    Script Date: 10/22/2017 18:15:26 ******/
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_Department] FOREIGN KEY([Dep_ID])
REFERENCES [dbo].[Department] ([Dep_ID])
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [FK_Subjects_Department]
GO
/****** Object:  ForeignKey [FK_Subject-Term_Employees]    Script Date: 10/22/2017 18:15:26 ******/
ALTER TABLE [dbo].[Subject-Term]  WITH CHECK ADD  CONSTRAINT [FK_Subject-Term_Employees] FOREIGN KEY([Doc-ID])
REFERENCES [dbo].[Employees] ([Emp_ID])
GO
ALTER TABLE [dbo].[Subject-Term] CHECK CONSTRAINT [FK_Subject-Term_Employees]
GO
/****** Object:  ForeignKey [FK_Subject-Term_Subjects]    Script Date: 10/22/2017 18:15:26 ******/
ALTER TABLE [dbo].[Subject-Term]  WITH CHECK ADD  CONSTRAINT [FK_Subject-Term_Subjects] FOREIGN KEY([Sub-ID])
REFERENCES [dbo].[Subjects] ([Sub_ID])
GO
ALTER TABLE [dbo].[Subject-Term] CHECK CONSTRAINT [FK_Subject-Term_Subjects]
GO
/****** Object:  ForeignKey [FK_Subject-Term_Terms]    Script Date: 10/22/2017 18:15:26 ******/
ALTER TABLE [dbo].[Subject-Term]  WITH CHECK ADD  CONSTRAINT [FK_Subject-Term_Terms] FOREIGN KEY([Term-ID])
REFERENCES [dbo].[Terms] ([ID])
GO
ALTER TABLE [dbo].[Subject-Term] CHECK CONSTRAINT [FK_Subject-Term_Terms]
GO
/****** Object:  ForeignKey [FK_Students_Subjects_Students]    Script Date: 10/22/2017 18:15:26 ******/
ALTER TABLE [dbo].[Students_Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Students_Subjects_Students] FOREIGN KEY([Std_ID])
REFERENCES [dbo].[Students] ([Std_ID])
GO
ALTER TABLE [dbo].[Students_Subjects] CHECK CONSTRAINT [FK_Students_Subjects_Students]
GO
/****** Object:  ForeignKey [FK_Students_Subjects_Subjects]    Script Date: 10/22/2017 18:15:26 ******/
ALTER TABLE [dbo].[Students_Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Students_Subjects_Subjects] FOREIGN KEY([Sub_ID])
REFERENCES [dbo].[Subjects] ([Sub_ID])
GO
ALTER TABLE [dbo].[Students_Subjects] CHECK CONSTRAINT [FK_Students_Subjects_Subjects]
GO
/****** Object:  ForeignKey [FK_Students_Subjects_Terms]    Script Date: 10/22/2017 18:15:27 ******/
ALTER TABLE [dbo].[Students_Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Students_Subjects_Terms] FOREIGN KEY([Term_ID])
REFERENCES [dbo].[Terms] ([ID])
GO
ALTER TABLE [dbo].[Students_Subjects] CHECK CONSTRAINT [FK_Students_Subjects_Terms]
GO
/****** Object:  ForeignKey [FK_Results_Employees]    Script Date: 10/22/2017 18:15:27 ******/
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Employees] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Employees] ([Emp_ID])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Employees]
GO
/****** Object:  ForeignKey [FK_Results_Students]    Script Date: 10/22/2017 18:15:27 ******/
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Students] FOREIGN KEY([Std_ID])
REFERENCES [dbo].[Students] ([Std_ID])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Students]
GO
/****** Object:  ForeignKey [FK_Results_Subjects]    Script Date: 10/22/2017 18:15:27 ******/
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Subjects] FOREIGN KEY([Sub_ID])
REFERENCES [dbo].[Subjects] ([Sub_ID])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Subjects]
GO
/****** Object:  ForeignKey [FK_Results_Terms]    Script Date: 10/22/2017 18:15:27 ******/
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Terms] FOREIGN KEY([TermID])
REFERENCES [dbo].[Terms] ([ID])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Terms]
GO
/****** Object:  ForeignKey [FK_Exams_Subjects]    Script Date: 10/22/2017 18:15:27 ******/
ALTER TABLE [dbo].[Exams]  WITH CHECK ADD  CONSTRAINT [FK_Exams_Subjects] FOREIGN KEY([Sub_ID])
REFERENCES [dbo].[Subjects] ([Sub_ID])
GO
ALTER TABLE [dbo].[Exams] CHECK CONSTRAINT [FK_Exams_Subjects]
GO
/****** Object:  ForeignKey [FK_Exams_Terms]    Script Date: 10/22/2017 18:15:27 ******/
ALTER TABLE [dbo].[Exams]  WITH CHECK ADD  CONSTRAINT [FK_Exams_Terms] FOREIGN KEY([Term_ID])
REFERENCES [dbo].[Terms] ([ID])
GO
ALTER TABLE [dbo].[Exams] CHECK CONSTRAINT [FK_Exams_Terms]
GO
/****** Object:  ForeignKey [FK_Employees_Subjects_Employees]    Script Date: 10/22/2017 18:15:27 ******/
ALTER TABLE [dbo].[Employees_Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Subjects_Employees] FOREIGN KEY([Emp_ID])
REFERENCES [dbo].[Employees] ([Emp_ID])
GO
ALTER TABLE [dbo].[Employees_Subjects] CHECK CONSTRAINT [FK_Employees_Subjects_Employees]
GO
/****** Object:  ForeignKey [FK_Employees_Subjects_Employees1]    Script Date: 10/22/2017 18:15:27 ******/
ALTER TABLE [dbo].[Employees_Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Subjects_Employees1] FOREIGN KEY([Updated By])
REFERENCES [dbo].[Employees] ([Emp_ID])
GO
ALTER TABLE [dbo].[Employees_Subjects] CHECK CONSTRAINT [FK_Employees_Subjects_Employees1]
GO
/****** Object:  ForeignKey [FK_Employees_Subjects_Subjects]    Script Date: 10/22/2017 18:15:27 ******/
ALTER TABLE [dbo].[Employees_Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Subjects_Subjects] FOREIGN KEY([Sub_ID])
REFERENCES [dbo].[Subjects] ([Sub_ID])
GO
ALTER TABLE [dbo].[Employees_Subjects] CHECK CONSTRAINT [FK_Employees_Subjects_Subjects]
GO
/****** Object:  ForeignKey [FK_Employees_Subjects_Terms]    Script Date: 10/22/2017 18:15:27 ******/
ALTER TABLE [dbo].[Employees_Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Subjects_Terms] FOREIGN KEY([Term-ID])
REFERENCES [dbo].[Terms] ([ID])
GO
ALTER TABLE [dbo].[Employees_Subjects] CHECK CONSTRAINT [FK_Employees_Subjects_Terms]
GO
