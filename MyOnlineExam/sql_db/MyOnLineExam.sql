USE [master]
GO
/****** Object:  Database [MyOnLineExam]    Script Date: 12/16/2016 19:03:54 ******/
CREATE DATABASE [MyOnLineExam] ON  PRIMARY 
( NAME = N'MyOnLineExam_Data', FILENAME = N'F:\软件设计模式学期实训\02项目\01在线考试系统\04项目资源\Demo\2数据库_在线考试系统\MyOnLineExam_Data.MDF' , SIZE = 2240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'MyOnLineExam_Log', FILENAME = N'F:\软件设计模式学期实训\02项目\01在线考试系统\04项目资源\Demo\2数据库_在线考试系统\MyOnLineExam_Log.LDF' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'MyOnLineExam', @new_cmptlevel=80
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyOnLineExam].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [MyOnLineExam] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [MyOnLineExam] SET ANSI_NULLS OFF
GO
ALTER DATABASE [MyOnLineExam] SET ANSI_PADDING OFF
GO
ALTER DATABASE [MyOnLineExam] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [MyOnLineExam] SET ARITHABORT OFF
GO
ALTER DATABASE [MyOnLineExam] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [MyOnLineExam] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [MyOnLineExam] SET AUTO_SHRINK ON
GO
ALTER DATABASE [MyOnLineExam] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [MyOnLineExam] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [MyOnLineExam] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [MyOnLineExam] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [MyOnLineExam] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [MyOnLineExam] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [MyOnLineExam] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [MyOnLineExam] SET  DISABLE_BROKER
GO
ALTER DATABASE [MyOnLineExam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [MyOnLineExam] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [MyOnLineExam] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [MyOnLineExam] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [MyOnLineExam] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [MyOnLineExam] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [MyOnLineExam] SET  READ_WRITE
GO
ALTER DATABASE [MyOnLineExam] SET RECOVERY SIMPLE
GO
ALTER DATABASE [MyOnLineExam] SET  MULTI_USER
GO
ALTER DATABASE [MyOnLineExam] SET PAGE_VERIFY TORN_PAGE_DETECTION
GO
ALTER DATABASE [MyOnLineExam] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'MyOnLineExam', N'ON'
GO
USE [MyOnLineExam]
GO
/****** Object:  Table [dbo].[PaperDetail]    Script Date: 12/16/2016 19:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaperDetail](
	[PaperID] [int] NOT NULL,
	[Type] [varchar](10) NOT NULL,
	[TitleID] [int] NOT NULL,
	[Mark] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_PaperDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PaperDetail] ON
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (3, N'单选题', 1, 2, 9)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (3, N'单选题', 2, 2, 10)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (3, N'多选题', 1, 2, 11)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (3, N'判断题', 3, 2, 12)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (3, N'判断题', 1, 2, 13)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (3, N'填空题', 1, 2, 14)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'单选题', 8, 5, 15)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'单选题', 7, 5, 16)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'单选题', 13, 5, 17)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'单选题', 12, 5, 18)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'单选题', 2, 5, 19)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'多选题', 5, 5, 20)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'多选题', 11, 5, 21)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'多选题', 9, 5, 22)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'多选题', 13, 5, 23)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'多选题', 10, 5, 24)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'判断题', 1, 5, 25)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'判断题', 3, 5, 26)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'判断题', 9, 5, 27)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'判断题', 12, 5, 28)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'判断题', 8, 5, 29)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'填空题', 1, 5, 30)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'填空题', 13, 5, 31)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'填空题', 10, 5, 32)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'填空题', 15, 5, 33)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (4, N'填空题', 11, 5, 34)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'单选题', 12, 5, 35)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'单选题', 11, 5, 36)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'单选题', 13, 5, 37)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'单选题', 6, 5, 38)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'单选题', 9, 5, 39)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'多选题', 7, 5, 40)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'多选题', 8, 5, 41)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'多选题', 11, 5, 42)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'多选题', 4, 5, 43)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'多选题', 13, 5, 44)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'判断题', 9, 5, 45)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'判断题', 6, 5, 46)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'判断题', 1, 5, 47)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'判断题', 8, 5, 48)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'判断题', 14, 5, 49)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'填空题', 12, 5, 50)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'填空题', 9, 5, 51)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'填空题', 16, 5, 52)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'填空题', 1, 5, 53)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (5, N'填空题', 11, 5, 54)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'单选题', 5, 5, 55)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'单选题', 9, 5, 56)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'单选题', 6, 5, 57)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'多选题', 1, 5, 58)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'多选题', 13, 5, 59)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'多选题', 7, 5, 60)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'多选题', 12, 5, 61)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'判断题', 6, 5, 62)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'判断题', 10, 5, 63)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'判断题', 3, 5, 64)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'判断题', 1, 5, 65)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'判断题', 8, 5, 66)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'填空题', 13, 5, 67)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'填空题', 10, 5, 68)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'填空题', 12, 5, 69)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'填空题', 9, 5, 70)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'填空题', 1, 5, 71)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (6, N'填空题', 11, 5, 72)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'单选题', 7, 5, 73)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'单选题', 4, 5, 74)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'单选题', 9, 5, 75)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'多选题', 5, 5, 76)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'多选题', 12, 5, 77)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'多选题', 9, 5, 78)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'多选题', 4, 5, 79)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'判断题', 14, 5, 80)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'判断题', 6, 5, 81)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'判断题', 13, 5, 82)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'判断题', 8, 5, 83)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'判断题', 11, 5, 84)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'填空题', 12, 5, 85)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'填空题', 17, 5, 86)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'填空题', 10, 5, 87)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'填空题', 15, 5, 88)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'填空题', 11, 5, 89)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (7, N'填空题', 1, 5, 90)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (8, N'单选题', 3, 5, 91)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (8, N'多选题', 2, 5, 92)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (8, N'判断题', 2, 5, 93)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (8, N'填空题', 5, 5, 94)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (9, N'多选题', 3, 5, 95)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (9, N'填空题', 8, 5, 96)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (10, N'单选题', 3, 10, 97)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (10, N'多选题', 2, 10, 98)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (10, N'判断题', 2, 10, 99)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (10, N'填空题', 5, 10, 100)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (11, N'单选题', 16, 5, 101)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (11, N'单选题', 14, 5, 102)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (12, N'单选题', 15, 5, 103)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (12, N'单选题', 16, 5, 104)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (13, N'单选题', 14, 5, 105)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (13, N'单选题', 15, 5, 106)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (14, N'单选题', 14, 5, 107)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (14, N'单选题', 15, 5, 108)
GO
print 'Processed 100 total records'
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (14, N'多选题', 15, 5, 109)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (14, N'判断题', 15, 5, 110)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (14, N'填空题', 20, 5, 111)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (15, N'单选题', 16, 5, 112)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (15, N'单选题', 14, 5, 113)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (15, N'多选题', 15, 5, 114)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (15, N'判断题', 16, 5, 115)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (15, N'填空题', 21, 5, 116)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (16, N'单选题', 15, 5, 117)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (16, N'单选题', 14, 5, 118)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (16, N'多选题', 14, 5, 119)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (16, N'判断题', 16, 5, 120)
INSERT [dbo].[PaperDetail] ([PaperID], [Type], [TitleID], [Mark], [ID]) VALUES (16, N'填空题', 22, 5, 121)
SET IDENTITY_INSERT [dbo].[PaperDetail] OFF
/****** Object:  Table [dbo].[Paper]    Script Date: 12/16/2016 19:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paper](
	[PaperID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[PaperName] [varchar](50) NOT NULL,
	[PaperState] [bit] NOT NULL,
	[Time] [datetime] NULL,
	[Longth] [int] NULL,
	[SumMark] [int] NULL,
 CONSTRAINT [PK_Paper] PRIMARY KEY CLUSTERED 
(
	[PaperID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Paper] ON
INSERT [dbo].[Paper] ([PaperID], [CourseID], [PaperName], [PaperState], [Time], [Longth], [SumMark]) VALUES (14, 6, N'C#期末考试A卷', 1, CAST(0x0000A6DD00A78AA0 AS DateTime), 5, 25)
INSERT [dbo].[Paper] ([PaperID], [CourseID], [PaperName], [PaperState], [Time], [Longth], [SumMark]) VALUES (15, 6, N'C#期末考试B卷', 1, CAST(0x0000A6DD00A78AA0 AS DateTime), 5, 25)
INSERT [dbo].[Paper] ([PaperID], [CourseID], [PaperName], [PaperState], [Time], [Longth], [SumMark]) VALUES (16, 6, N'C#期末考试C卷', 1, CAST(0x0000A6DD00BE1040 AS DateTime), 5, 25)
SET IDENTITY_INSERT [dbo].[Paper] OFF
/****** Object:  Table [dbo].[MultiProblem]    Script Date: 12/16/2016 19:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MultiProblem](
	[CourseID] [int] NOT NULL,
	[Title] [varchar](1000) NOT NULL,
	[AnswerA] [varchar](500) NOT NULL,
	[AnswerB] [varchar](500) NOT NULL,
	[AnswerC] [varchar](500) NOT NULL,
	[AnswerD] [varchar](500) NOT NULL,
	[Answer] [varchar](50) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_MultiProblem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MultiProblem] ON
INSERT [dbo].[MultiProblem] ([CourseID], [Title], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [Answer], [ID]) VALUES (3, N'课程3多选题多选题多选题多选题多选题', N'aaa', N'sss', N'ddd', N'fff', N'ACD', 3)
INSERT [dbo].[MultiProblem] ([CourseID], [Title], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [Answer], [ID]) VALUES (6, N'C#循环有哪几种？', N'for', N'switch', N'do while', N'while', N'ACD', 14)
INSERT [dbo].[MultiProblem] ([CourseID], [Title], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [Answer], [ID]) VALUES (6, N'C#分支结构有哪几种？', N'if', N'if else', N'switch', N'while', N'ABC', 15)
SET IDENTITY_INSERT [dbo].[MultiProblem] OFF
/****** Object:  Table [dbo].[JudgeProblem]    Script Date: 12/16/2016 19:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JudgeProblem](
	[CourseID] [int] NOT NULL,
	[Title] [varchar](1000) NOT NULL,
	[Answer] [bit] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_JudgeProblem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[JudgeProblem] ON
INSERT [dbo].[JudgeProblem] ([CourseID], [Title], [Answer], [ID]) VALUES (6, N'for实现循环语句', 1, 15)
INSERT [dbo].[JudgeProblem] ([CourseID], [Title], [Answer], [ID]) VALUES (6, N'C#语言很先进', 1, 16)
SET IDENTITY_INSERT [dbo].[JudgeProblem] OFF
/****** Object:  Table [dbo].[FillBlankProblem]    Script Date: 12/16/2016 19:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FillBlankProblem](
	[CourseID] [int] NOT NULL,
	[FrontTitle] [varchar](500) NULL,
	[BackTitle] [varchar](500) NULL,
	[Answer] [varchar](200) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_FillBlankProblem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FillBlankProblem] ON
INSERT [dbo].[FillBlankProblem] ([CourseID], [FrontTitle], [BackTitle], [Answer], [ID]) VALUES (6, N'用', N'定义整型变量', N'int', 20)
INSERT [dbo].[FillBlankProblem] ([CourseID], [FrontTitle], [BackTitle], [Answer], [ID]) VALUES (6, N'用', N'定义字符串变量', N'string', 21)
INSERT [dbo].[FillBlankProblem] ([CourseID], [FrontTitle], [BackTitle], [Answer], [ID]) VALUES (6, N'用', N'定义时间变量', N'datetime', 22)
SET IDENTITY_INSERT [dbo].[FillBlankProblem] OFF
/****** Object:  Table [dbo].[Course]    Script Date: 12/16/2016 19:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[Name] [varchar](200) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON
INSERT [dbo].[Course] ([Name], [ID]) VALUES (N'web程序设计', 1)
INSERT [dbo].[Course] ([Name], [ID]) VALUES (N'设计模式', 2)
INSERT [dbo].[Course] ([Name], [ID]) VALUES (N'C#程序基础', 6)
SET IDENTITY_INSERT [dbo].[Course] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 12/16/2016 19:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [varchar](20) NOT NULL,
	[UserPwd] [varchar](20) NOT NULL,
	[UserPower] [int] NOT NULL,
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserNum] [varchar](50) NULL,
	[UserEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([UserName], [UserPwd], [UserPower], [UserID], [UserNum], [UserEmail]) VALUES (N'丁允超', N'admin', 0, 1, N'dyc', N'123@123.com')
INSERT [dbo].[Users] ([UserName], [UserPwd], [UserPower], [UserID], [UserNum], [UserEmail]) VALUES (N'冷亚洪', N'admin', 1, 2, N'lyh', N'123@123.com')
INSERT [dbo].[Users] ([UserName], [UserPwd], [UserPower], [UserID], [UserNum], [UserEmail]) VALUES (N'管理员', N'admin', 2, 5, N'admin', NULL)
INSERT [dbo].[Users] ([UserName], [UserPwd], [UserPower], [UserID], [UserNum], [UserEmail]) VALUES (N'学生1', N'admin', 0, 6, N'student1  ', N'dxxx@xx.com')
INSERT [dbo].[Users] ([UserName], [UserPwd], [UserPower], [UserID], [UserNum], [UserEmail]) VALUES (N'学生2', N'admin', 0, 7, N'student2  ', N'xxx@xx.com')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[SingleProblem]    Script Date: 12/16/2016 19:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SingleProblem](
	[CourseID] [int] NOT NULL,
	[Title] [varchar](1000) NOT NULL,
	[AnswerA] [varchar](500) NOT NULL,
	[AnswerB] [varchar](500) NOT NULL,
	[AnswerC] [varchar](500) NOT NULL,
	[AnswerD] [varchar](500) NOT NULL,
	[Answer] [varchar](2) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SingleProblem] ON
INSERT [dbo].[SingleProblem] ([CourseID], [Title], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [Answer], [ID]) VALUES (6, N'哪个不是C#循环结构', N'for', N'while', N'do while', N'if else', N'D', 14)
INSERT [dbo].[SingleProblem] ([CourseID], [Title], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [Answer], [ID]) VALUES (6, N'定义整型变量的方式', N'int i=100;', N'string s = "";', N'datetime dt;', N'char c;', N'A', 15)
INSERT [dbo].[SingleProblem] ([CourseID], [Title], [AnswerA], [AnswerB], [AnswerC], [AnswerD], [Answer], [ID]) VALUES (6, N'你喜欢C#程序设计吗？', N'喜欢', N'很喜欢', N'非常喜欢', N'不喜欢', N'C', 16)
SET IDENTITY_INSERT [dbo].[SingleProblem] OFF
/****** Object:  Table [dbo].[Score]    Script Date: 12/16/2016 19:03:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Score](
	[UserID] [varchar](20) NOT NULL,
	[PaperID] [int] NOT NULL,
	[Score] [int] NOT NULL,
	[ExamTime] [datetime] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Score] ON
INSERT [dbo].[Score] ([UserID], [PaperID], [Score], [ExamTime], [ID]) VALUES (N'dyc', 14, 20, CAST(0x0000A6DD00000000 AS DateTime), 7)
INSERT [dbo].[Score] ([UserID], [PaperID], [Score], [ExamTime], [ID]) VALUES (N'student1', 15, 0, CAST(0x0000A6DD00000000 AS DateTime), 8)
INSERT [dbo].[Score] ([UserID], [PaperID], [Score], [ExamTime], [ID]) VALUES (N'dyc', 16, 0, CAST(0x0000A6DD00000000 AS DateTime), 9)
SET IDENTITY_INSERT [dbo].[Score] OFF
/****** Object:  StoredProcedure [dbo].[Proc_PaperDetail]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_PaperDetail]
		(@PaperID		[int],
		 @Type			[varchar](10))
AS
begin 
	declare @sql nvarchar(1000)
if @Type='单选题'
 begin	
	set @sql='select * from PaperDetail,SingleProblem where [Type]=''单选题'' and PaperDetail.TitleID=SingleProblem.ID and [PaperID]= '+Cast(@PaperID AS varchar(10)) 
	exec sp_executesql @sql		
 end
else if @Type='多选题'
 begin	
	set @sql='select * from PaperDetail,MultiProblem where [Type]=''多选题'' and PaperDetail.TitleID=MultiProblem.ID and [PaperID]=' + +Cast(@PaperID AS varchar(10))
	exec sp_executesql @sql		
 end
else if @Type='判断题'
 begin	
	set @sql='select * from PaperDetail,JudgeProblem where [Type]=''判断题'' and PaperDetail.TitleID=JudgeProblem.ID and [PaperID]=' + +Cast(@PaperID AS varchar(10))
	exec sp_executesql @sql		
 end
else
 begin	
	set @sql='select * from PaperDetail,FillBlankProblem where [Type]=''填空题'' and PaperDetail.TitleID=FillBlankProblem.ID and [PaperID]=' + +Cast(@PaperID AS varchar(10))
	exec sp_executesql @sql		
 end
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_PaperDelete]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_PaperDelete]
	(@PaperID		[int])
AS DELETE [MyOnLineExam].[dbo].[Paper] 
WHERE 
	( [PaperID]	 = @PaperID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_PaperAdd]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_PaperAdd]
	( 
	 @CourseID 		[int],
	 @PaperName 	[varchar](50),
	 @PaperState 	[bit],
	 @Time          [datetime],
	 @Longth        [int],
	 @SumMark       [int])

AS INSERT INTO [MyOnLineExam].[dbo].[Paper] 
	 (
	 [CourseID],
	 [PaperName],
	 [PaperState],
	 [Time],
	 [Longth],
	 [SumMark])
 
VALUES 
	( 
	 @CourseID, 
	 @PaperName,
	 @PaperState,
	 @Time,
	 @Longth,
	 @SumMark)
GO
/****** Object:  StoredProcedure [dbo].[Proc_MultiProblemModify]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_MultiProblemModify]
	(@ID		[int],
	 @CourseID	[int],
	 @Title 	[varchar](1000),
	 @AnswerA 	[varchar](500),
	 @AnswerB 	[varchar](500),
	 @AnswerC 	[varchar](500),
	 @AnswerD 	[varchar](500),
	 @Answer	[varchar](50))

AS UPDATE [MyOnLineExam].[dbo].[MultiProblem] 

SET  [CourseID]	= @CourseID,
	 [Title]	= @Title,
	 [AnswerA]	= @AnswerA,
	 [AnswerB]	= @AnswerB,
	 [AnswerC]	= @AnswerC,
	 [AnswerD]	= @AnswerD,
	 [Answer]	= @Answer 

WHERE 
	( [ID]	 = @ID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_MultiProblemList]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_MultiProblemList]
		(@CourseID		[int])
AS SELECT 	[dbo].[MultiProblem].[ID], 
		left([dbo].[MultiProblem].[Title],10) as Title
FROM 		[MyOnLineExam].[dbo].[MultiProblem] 
where [CourseID]=@CourseID
GO
/****** Object:  StoredProcedure [dbo].[Proc_MultiProblemDetail]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_MultiProblemDetail]
	@ID	[int]
AS SELECT 	*
FROM [dbo].[MultiProblem]
where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[Proc_MultiProblemDelete]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_MultiProblemDelete]
	(@ID		[int])
AS DELETE [MyOnLineExam].[dbo].[MultiProblem] 
WHERE 
	( [ID]	 = @ID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_MultiProblemAdd]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_MultiProblemAdd]
	(@CourseID	[int],
	 @Title 	[varchar](1000),
	 @AnswerA 	[varchar](500),
	 @AnswerB 	[varchar](500),
	 @AnswerC 	[varchar](500),
	 @AnswerD 	[varchar](500),
	 @Answer	[varchar](50))

AS INSERT INTO [MyOnLineExam].[dbo].[MultiProblem] 
	 ([CourseID],
	 [Title],
	 [AnswerA],
	 [AnswerB],
	 [AnswerC],
	 [AnswerD],
	 [Answer]) 
 
VALUES 
	(@CourseID,
	 @Title,
	 @AnswerA,
	 @AnswerB,
	 @AnswerC,
	 @AnswerD,
	 @Answer)
GO
/****** Object:  StoredProcedure [dbo].[Proc_JudgeProblemModify]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_JudgeProblemModify]
	(@ID		[int],
	 @CourseID	[int],
	 @Title 	[varchar](1000),	 
	 @Answer	[bit])

AS UPDATE [MyOnLineExam].[dbo].[JudgeProblem] 

SET  [CourseID]	= @CourseID,
	 [Title]	= @Title,	 
	 [Answer]	= @Answer 

WHERE 
	( [ID]	 = @ID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_JudgeProblemList]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_JudgeProblemList]
		(@CourseID		[int])
AS SELECT 	[dbo].[JudgeProblem].[ID], 
		left([dbo].[JudgeProblem].[Title],10) as Title
FROM 		[MyOnLineExam].[dbo].[JudgeProblem] 
where [CourseID]=@CourseID
GO
/****** Object:  StoredProcedure [dbo].[Proc_JudgeProblemDetail]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_JudgeProblemDetail]
	@ID	[int]
AS SELECT 	*
FROM [dbo].[JudgeProblem]
where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[Proc_JudgeProblemDelete]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_JudgeProblemDelete]
	(@ID		[int])
AS DELETE [MyOnLineExam].[dbo].[JudgeProblem] 
WHERE 
	( [ID]	 = @ID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_JudgeProblemAdd]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Proc_JudgeProblemAdd]
	(@CourseID	[int],
	 @Title 	[varchar](1000),	 
	 @Answer	[bit])

AS INSERT INTO [MyOnLineExam].[dbo].[JudgeProblem] 
	 ([CourseID],
	  [Title],	 
	  [Answer]) 
 
VALUES 
	(@CourseID,
	 @Title,	 
	 @Answer)
GO
/****** Object:  StoredProcedure [dbo].[Proc_FillBlankProblemModify]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_FillBlankProblemModify]
	(@ID			[int],
	 @CourseID		[int],
	 @FrontTitle 	[varchar](500),
	 @BackTitle		[varchar](500),	 
	 @Answer		[varchar](200))

AS UPDATE [MyOnLineExam].[dbo].[FillBlankProblem] 

SET  [CourseID]		= @CourseID,
	 [FrontTitle]	= @FrontTitle,
	 [BackTitle]	= @BackTitle,	 
	 [Answer]		= @Answer 

WHERE 
	( [ID]	 = @ID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_FillBlankProblemList]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_FillBlankProblemList]
		(@CourseID		[int])
AS SELECT 	[dbo].[FillBlankProblem].[ID], 
		left([dbo].[FillBlankProblem].[FrontTitle],10) as FrontTitle,
		left([dbo].[FillBlankProblem].[BackTitle],10) as BackTitle
FROM 		[MyOnLineExam].[dbo].[FillBlankProblem] 
where [CourseID]=@CourseID
GO
/****** Object:  StoredProcedure [dbo].[Proc_FillBlankProblemDetail]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_FillBlankProblemDetail]
	@ID	[int]
AS SELECT 	*
FROM [dbo].[FillBlankProblem]
where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[Proc_FillBlankProblemDelete]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_FillBlankProblemDelete]
	(@ID		[int])
AS DELETE [MyOnLineExam].[dbo].[FillBlankProblem] 
WHERE 
	( [ID]	 = @ID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_FillBlankProblemAdd]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_FillBlankProblemAdd]
	(@CourseID		[int],
	 @FrontTitle 	[varchar](500),
	 @BackTitle 	[varchar](500),	 
	 @Answer		[varchar](200))

AS INSERT INTO [MyOnLineExam].[dbo].[FillBlankProblem] 
	 ([CourseID],
	  [FrontTitle],
	  [BackTitle],	 
	  [Answer]) 
 
VALUES 
	(@CourseID,
	 @FrontTitle,
	 @BackTitle,	 
	 @Answer)
GO
/****** Object:  StoredProcedure [dbo].[Proc_CourseModify]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_CourseModify]
	(@ID	 		[int],	 
	 @Name 		[varchar](200))

AS UPDATE [MyOnLineExam].[dbo].[Course] 

SET  [Name]		= @Name

WHERE 
	( [ID]	 = @ID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_CourseList]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_CourseList]		
AS SELECT 	*
FROM 		[MyOnLineExam].[dbo].[Course]
GO
/****** Object:  StoredProcedure [dbo].[Proc_CourseDelete]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_CourseDelete]
	(@ID		[int])
AS DELETE [MyOnLineExam].[dbo].[Course] 
WHERE 
	( [ID]	 = @ID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_CourseAdd]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_CourseAdd]
	(@Name 		[varchar](200))

AS INSERT INTO [MyOnLineExam].[dbo].[Course] 
	 ([Name]) 
 
VALUES 
	(@Name)
GO
/****** Object:  StoredProcedure [dbo].[Proc_UserStuList]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_UserStuList] 
AS SELECT *		
			
FROM 		[dbo].[Users]
WHERE Userpower =0
GO
/****** Object:  StoredProcedure [dbo].[Proc_UsersSinModify]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_UsersSinModify]
	(
	 @UserName 		[varchar](20),
	 @UserPwd       [varchar](20),
	 @UserEmail     [varchar](50),
	 @UserNum       [char](10))

AS UPDATE [MyOnLineExam].[dbo].[Users] 

SET  [UserName]		= @UserName,
	 [UserPwd]      = @UserPwd,
     [UserEmail]    = @UserEmail,
     [UserNum]      = @UserNum
     
WHERE 
	( [UserNum]	 = @UserNum)
GO
/****** Object:  StoredProcedure [dbo].[Proc_UsersPasswordModify]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_UsersPasswordModify]
    (@UserID	 	[int],	 
	 @UserPwd 		[varchar](20))	
	 
AS UPDATE [MyOnLineExam].[dbo].[Users] 

SET  [UserPwd]	= @UserPwd

where 
     ([UserID]	= @UserID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_UsersModify]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_UsersModify]
	(@UserID	 	[varchar](20),	 
	 @UserName 		[varchar](20),
	 @UserPower 	[int],
	 @UserPwd       [varchar](20),
	 @UserEmail     [varchar](50),
	 @UserNum       [char](10))

AS UPDATE [MyOnLineExam].[dbo].[Users] 

SET  [UserPower]	= @UserPower,
	 [UserName]		= @UserName,
	 [UserPwd]      = @UserPwd,
     [UserEmail]    = @UserEmail,
     [UserNum]      = @UserNum
     
WHERE 
	( [UserID]	 = @UserID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_UsersList]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_UsersList]
AS SELECT 	[dbo].[Users].[UserID],		 
		[dbo].[Users].[UserName],
		[dbo].[Users].[UserPower] 
FROM 		[dbo].[Users]
GO
/****** Object:  StoredProcedure [dbo].[Proc_UsersDetail]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_UsersDetail]
	@UserNum	char(10)
AS SELECT   [dbo].[Users].[UserID],		 
		    [dbo].[Users].[UserName],
		    [dbo].[Users].[UserPwd],
		    [dbo].[Users].[UserPower],
		    [dbo].[Users].[UserEmail],
			[dbo].[Users].[UserNum]
FROM 		[dbo].[Users]
WHERE UserNum=@UserNum
GO
/****** Object:  StoredProcedure [dbo].[Proc_UsersDelete]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_UsersDelete]
	(@UserID		[varchar](20))
AS DELETE [MyOnLineExam].[dbo].[Users] 
WHERE 
	( [UserID]	 = @UserID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_UsersAdd]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_UsersAdd]
	( 
	 @UserName 		[varchar](20),
	 @UserPwd 		[varchar](20),
	 @UserPower 	[int],
	 @UserEmail     [varchar](50),
	 @UserNum       [char](10))

AS INSERT INTO [MyOnLineExam].[dbo].[Users] 
	 (
	 [UserName],
	 [UserPwd],
	 [UserPower],
	 [UserEmail],
	 [UserNum] )
 
VALUES 
	( 
	 @UserName,
	 @UserPwd,
	 @UserPower,
	 @UserEmail,
	 @UserNum)
GO
/****** Object:  StoredProcedure [dbo].[Proc_UserName]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_UserName] 
	@UserNum	char(10)
AS SELECT  [dbo].[Users].[UserName]

FROM 	   [dbo].[Users] 
where UserNum=@UserNum
GO
/****** Object:  StoredProcedure [dbo].[Proc_SingleProblemModify]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_SingleProblemModify]
	(@ID		[int],
	 @CourseID	[int],
	 @Title 	[varchar](1000),
	 @AnswerA 	[varchar](500),
	 @AnswerB 	[varchar](500),
	 @AnswerC 	[varchar](500),
	 @AnswerD 	[varchar](500),
	 @Answer	[varchar](2))

AS UPDATE [MyOnLineExam].[dbo].[SingleProblem] 

SET  [CourseID]	= @CourseID,
	 [Title]	= @Title,
	 [AnswerA]	= @AnswerA,
	 [AnswerB]	= @AnswerB,
	 [AnswerC]	= @AnswerC,
	 [AnswerD]	= @AnswerD,
	 [Answer]	= @Answer 

WHERE 
	( [ID]	 = @ID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_SingleProblemList]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_SingleProblemList]
		(@CourseID		[int])
AS SELECT 	[dbo].[SingleProblem].[ID], 
		left([dbo].[SingleProblem].[Title],10) as Title
FROM 		[MyOnLineExam].[dbo].[SingleProblem] 
where [CourseID]=@CourseID
GO
/****** Object:  StoredProcedure [dbo].[Proc_SingleProblemDetail]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_SingleProblemDetail]
	@ID	[int]
AS SELECT 	*
FROM [dbo].[SingleProblem]
where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[Proc_SingleProblemDelete]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_SingleProblemDelete]
	(@ID		[int])
AS DELETE [MyOnLineExam].[dbo].[SingleProblem] 
WHERE 
	( [ID]	 = @ID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_SingleProblemAdd]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_SingleProblemAdd]
	(@CourseID	[int],
	 @Title 	[varchar](1000),
	 @AnswerA 	[varchar](500),
	 @AnswerB 	[varchar](500),
	 @AnswerC 	[varchar](500),
	 @AnswerD 	[varchar](500),
	 @Answer	[varchar](2))

AS INSERT INTO [MyOnLineExam].[dbo].[SingleProblem] 
	 ([CourseID],
	 [Title],
	 [AnswerA],
	 [AnswerB],
	 [AnswerC],
	 [AnswerD],
	 [Answer]) 
 
VALUES 
	(@CourseID,
	 @Title,
	 @AnswerA,
	 @AnswerB,
	 @AnswerC,
	 @AnswerD,
	 @Answer)
GO
/****** Object:  StoredProcedure [dbo].[Proc_ScoreList]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_ScoreList]
AS SELECT 	[dbo].[Users].[UserID],		 
		[dbo].[Users].[UserName],
		[dbo].[Score].[ID],
		[dbo].[Score].[Score],
		[dbo].[Score].[ExamTime],
		[dbo].[Paper].[PaperName],
		[dbo].[Paper].[PaperID]
FROM 		[dbo].[Users],[dbo].[Score],[dbo].[Paper]
where Users.UserID=Score.UserID and Score.PaperID=Paper.PaperID
GO
/****** Object:  StoredProcedure [dbo].[Proc_ScoreDelete]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_ScoreDelete]
	(@ID		[int])
AS DELETE [MyOnLineExam].[dbo].[Score] 
WHERE 
	( [ID]	 = @ID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_ScoreAdd]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_ScoreAdd]
	(@UserID	 	[varchar](20), 
	 @PaperID 		[int],
	 @Score 		[int],
	 @ExamTime      [date])

AS INSERT INTO [MyOnLineExam].[dbo].[Score] 
	 ([UserID], 
	 [PaperID],
	 [Score],
	 [ExamTime]) 
 
VALUES 
	(@UserID,	 
	 @PaperID,
	 @Score,
	 @ExamTime)
GO
/****** Object:  StoredProcedure [dbo].[Proc_PaperUseList]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_PaperUseList]
	(@paperState	[bit])
AS SELECT 	[dbo].[Paper].[PaperID],		 
		[dbo].[Paper].[PaperName]		
FROM 		[dbo].[Paper]
where PaperState=@paperState
GO
/****** Object:  StoredProcedure [dbo].[Proc_PaperModify]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_PaperModify]
	(@PaperID		[int],
	 @PaperState 	[bit])

AS UPDATE [MyOnLineExam].[dbo].[Paper] 

SET  [PaperState]		= @PaperState

WHERE 
	( [PaperID]	 = @PaperID)
GO
/****** Object:  StoredProcedure [dbo].[Proc_PaperList_2]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_PaperList_2] 
@CourseID int
AS SELECT 	*	
FROM 		[dbo].[Paper]
where CourseID=@CourseID
GO
/****** Object:  StoredProcedure [dbo].[Proc_PaperList]    Script Date: 12/16/2016 19:04:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_PaperList]	
AS SELECT 	*		
FROM 		[dbo].[Paper],[dbo].[Course]
where [Paper].CourseID=[Course].ID
GO
