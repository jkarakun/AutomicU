USE [master]
GO

IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'###DBNAME###')
ALTER DATABASE [###DBNAME###] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
GO

/****** Object:  Database [AutomicU]    Script Date: 10/04/2015 14:30:07 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'###DBNAME###')
DROP DATABASE [###DBNAME###]
GO

USE [master]
GO

/****** Object:  Database [###DBNAME###]    Script Date: 9/4/2015 10:28:28 AM ******/
CREATE DATABASE [###DBNAME###] ON PRIMARY
( NAME = N'###DBNAME###', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\###DBNAME###.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'###DBNAME###_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\###DBNAME###_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [###DBNAME###] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [###DBNAME###].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [###DBNAME###] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [###DBNAME###] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [###DBNAME###] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [###DBNAME###] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [###DBNAME###] SET ARITHABORT OFF 
GO

ALTER DATABASE [###DBNAME###] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [###DBNAME###] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [###DBNAME###] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [###DBNAME###] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [###DBNAME###] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [###DBNAME###] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [###DBNAME###] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [###DBNAME###] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [###DBNAME###] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [###DBNAME###] SET  DISABLE_BROKER 
GO

ALTER DATABASE [###DBNAME###] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [###DBNAME###] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [###DBNAME###] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [###DBNAME###] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [###DBNAME###] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [###DBNAME###] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [###DBNAME###] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [###DBNAME###] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [###DBNAME###] SET  MULTI_USER 
GO

ALTER DATABASE [###DBNAME###] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [###DBNAME###] SET DB_CHAINING OFF 
GO

ALTER DATABASE [###DBNAME###] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [###DBNAME###] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [###DBNAME###] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [###DBNAME###] SET  READ_WRITE 
GO

USE [###DBNAME###]
GO

/****** Object:  Table [dbo].[courses]    Script Date: 9/30/2015 10:42:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[courses](
	[course_id] [numeric](18, 0) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_courses] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

INSERT INTO [###DBNAME###].[dbo].[courses]
           ([course_id]
           ,[name]
           ,[description])
     VALUES
           (1,'AMB01 - Application Manager Basics','The Applications Manager Basic training course will provide students a complete understanding of AM over the course of 3 days. This training provides a comprehensive introduction into understanding AM9. First you will learn how to run tasks and how to manage and monitor those tasks through Applications Manager. Then as the course progresses you will learn how create job definitions and workflows. Finally the course will teach you how to create substitution variables, condition statements and predecessors to create fully automated processes.'),
(2,'AEA01 - Automation Engine - Admin','The Automation Engine Admin course will give students a complete understanding of the architecture and set up of the Automation Engine.  It will enable students to be prepared to install, configure, set up, and maintain customized environments.  Students will also install different types of agents to connect to applications and other software products and tools.  The ideal student for this course is a new administrator, someone looking to install new environments, or an admin who is looking to pull more information from their AE system.'),
(3,'AEB01 - Automation Engine Basics','The Automation Engine Basics course is ideal for new users of the Automation Engine.  Student will navigate the User Interface and begin to build WorkFlows that can handle complex time and event triggers with many different responses and results.  Students will understand how to manipulate the system to fit their needs and automate tasks with variables, notifications, and prompts.  Ideal students for this course are new users to the Automation Engine, and those with no other formal training who wish to get the most out of their experience.'),
(4,'AES01 - Automation Engine Script','The Automation Engine Script course will walk students through the main action language of the Automation Engine.  Your instructor will explain the functions and commands and give specific examples and exercises to expand your knowledge of the flexibility and power of automation.  The ideal student for this course is a person who is experienced in the Automation Engine who wants to pull more power and flexibility from their jobs and tasks.')

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[instructors](
	[instructor_id] [numeric](18, 0) NOT NULL,
	[name] [varchar](max) NOT NULL,
	[description] [varchar](max) NOT NULL,
	[title] [varchar](max) NOT NULL,
	[image] [varchar](max) NOT NULL,
 CONSTRAINT [PK_instructors] PRIMARY KEY CLUSTERED 
(
	[instructor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

INSERT INTO [###DBNAME###].[dbo].[instructors]
           ([instructor_id]
           ,[name]
           ,[description]
           ,[title]
           ,[image])
     VALUES
           
(1,'Ken','Automation Engine Expert','','img/team/kenny.jpg'),
(2,'Larry','Release Automation Expert','','img/team/larry.jpg'),
(3,'Karen','Release AutomationExpert','','img/team/karen.jpg'),
(4,'Dan','Release Automation Expert','','img/team/dan.jpg')
GO
