USE [master]
GO
/****** Object:  Database [SkeletonsDB0]    Script Date: 4/9/2023 12:57:33 AM ******/
CREATE DATABASE [SkeletonsDB0]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SkeletonsDB0', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.ACTUALSQLEXPRESSSERVERID\MSSQL\DATA\SkeletonsDB0.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SkeletonsDB0_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.ACTUALSQLEXPRESSSERVERID\MSSQL\DATA\SkeletonsDB0_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SkeletonsDB0] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SkeletonsDB0].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SkeletonsDB0] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET ARITHABORT OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SkeletonsDB0] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SkeletonsDB0] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SkeletonsDB0] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SkeletonsDB0] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SkeletonsDB0] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SkeletonsDB0] SET  MULTI_USER 
GO
ALTER DATABASE [SkeletonsDB0] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SkeletonsDB0] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SkeletonsDB0] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SkeletonsDB0] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SkeletonsDB0] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SkeletonsDB0] SET QUERY_STORE = OFF
GO
USE [SkeletonsDB0]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 4/9/2023 12:57:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[SkeletonsID] [int] IDENTITY(1,1) NOT NULL,
	[SkeletonsOwner] [nvarchar](50) NULL,
	[SkeletonsType] [nvarchar](248) NULL,
	[SkeletonDescription] [nvarchar](244) NULL,
	[SkeletonConditionRating] [int] NULL,
	[SkeletonImagePath] [nvarchar](255) NULL,
	[SkeletonPrice] [money] NULL,
	[SkeletonAddedDate] [date] NULL,
	[SkeletonAddedTime] [time](7) NULL,
	[SkeletonImageBinary] [varbinary](max) NULL,
	[SkeletonImageFileName] [nvarchar](255) NULL,
	[SkeletonAvalible] [bit] NULL,
	[SkeletonQuantity] [bigint] NULL,
	[SeletonForSell] [bit] NULL,
	[SkeletonForBuy] [bit] NULL,
	[SkeletonForLease] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SkeletonsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [SkeletonsDB0] SET  READ_WRITE 
GO
USE [master]
GO
/****** Object:  Database [SkeletonsDB0]    Script Date: 4/9/2023 12:57:38 AM ******/
CREATE DATABASE [SkeletonsDB0]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SkeletonsDB0', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.ACTUALSQLEXPRESSSERVERID\MSSQL\DATA\SkeletonsDB0.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SkeletonsDB0_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.ACTUALSQLEXPRESSSERVERID\MSSQL\DATA\SkeletonsDB0_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SkeletonsDB0] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SkeletonsDB0].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SkeletonsDB0] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET ARITHABORT OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SkeletonsDB0] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SkeletonsDB0] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SkeletonsDB0] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SkeletonsDB0] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SkeletonsDB0] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SkeletonsDB0] SET  MULTI_USER 
GO
ALTER DATABASE [SkeletonsDB0] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SkeletonsDB0] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SkeletonsDB0] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SkeletonsDB0] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SkeletonsDB0] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SkeletonsDB0] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SkeletonsDB0] SET QUERY_STORE = OFF
GO
USE [SkeletonsDB0]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 4/9/2023 12:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[SkeletonsID] [int] IDENTITY(1,1) NOT NULL,
	[SkeletonsOwner] [nvarchar](50) NULL,
	[SkeletonsType] [nvarchar](248) NULL,
	[SkeletonDescription] [nvarchar](244) NULL,
	[SkeletonConditionRating] [int] NULL,
	[SkeletonImagePath] [nvarchar](255) NULL,
	[SkeletonPrice] [money] NULL,
	[SkeletonAddedDate] [date] NULL,
	[SkeletonAddedTime] [time](7) NULL,
	[SkeletonImageBinary] [varbinary](max) NULL,
	[SkeletonImageFileName] [nvarchar](255) NULL,
	[SkeletonAvalible] [bit] NULL,
	[SkeletonQuantity] [bigint] NULL,
	[SeletonForSell] [bit] NULL,
	[SkeletonForBuy] [bit] NULL,
	[SkeletonForLease] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SkeletonsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [SkeletonsDB0] SET  READ_WRITE 
GO
