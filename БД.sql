USE [master]
GO
/****** Object:  Database [АбонентыИр330Кунгурцев]    Script Date: 20.12.2022 11:59:26 ******/
CREATE DATABASE [АбонентыИр330Кунгурцев]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'АбонентыИр330Кунгурцев', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\АбонентыИр330Кунгурцев.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'АбонентыИр330Кунгурцев_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\АбонентыИр330Кунгурцев_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [АбонентыИр330Кунгурцев].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET ARITHABORT OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET  DISABLE_BROKER 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET RECOVERY FULL 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET  MULTI_USER 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET DB_CHAINING OFF 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'АбонентыИр330Кунгурцев', N'ON'
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET QUERY_STORE = OFF
GO
USE [АбонентыИр330Кунгурцев]
GO
/****** Object:  Table [dbo].[Абоненты]    Script Date: 20.12.2022 11:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абоненты](
	[Номер_абонента] [int] NOT NULL,
	[ФИО] [nvarchar](50) NULL,
	[Адрес] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Номер_абонента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Города]    Script Date: 20.12.2022 11:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Города](
	[Код_города] [int] NOT NULL,
	[Тариф] [int] NULL,
	[Нозвание_города] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Код_города] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разговоры]    Script Date: 20.12.2022 11:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разговоры](
	[Номер_разговора] [int] NOT NULL,
	[Код_телефона] [int] NULL,
	[Дата_раговора] [date] NULL,
	[Время] [int] NULL,
	[Код_города] [int] NULL,
	[Оплаты] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Номер_разговора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Телефоны]    Script Date: 20.12.2022 11:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Телефоны](
	[Код_телефона] [int] NOT NULL,
	[Номер_абонента] [int] NULL,
	[Номер_телефона] [nvarchar](50) NULL,
	[Номер_договора] [nvarchar](50) NULL,
	[Дата_Установки] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Код_телефона] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Абоненты] ([Номер_абонента], [ФИО], [Адрес]) VALUES (1, N'Орлов 
Сергей Борисович
', N'г.Омск, ул. Мира, 54,4')
INSERT [dbo].[Абоненты] ([Номер_абонента], [ФИО], [Адрес]) VALUES (3, N'Вавилов
Сергей Борисович
', N'Г. Омск, пр.Маркса, 34,23')
INSERT [dbo].[Абоненты] ([Номер_абонента], [ФИО], [Адрес]) VALUES (4, N'Титова Александра Ивановна', N'г. Омск, ул. Ленина, 5,24')
GO
INSERT [dbo].[Города] ([Код_города], [Тариф], [Нозвание_города]) VALUES (1, 10, N'Омск')
INSERT [dbo].[Города] ([Код_города], [Тариф], [Нозвание_города]) VALUES (2, 30, N'Москва')
INSERT [dbo].[Города] ([Код_города], [Тариф], [Нозвание_города]) VALUES (3, 20, N'Воронеж')
INSERT [dbo].[Города] ([Код_города], [Тариф], [Нозвание_города]) VALUES (4, 10, N'Новосибирск')
INSERT [dbo].[Города] ([Код_города], [Тариф], [Нозвание_города]) VALUES (5, 30, N'Санкт-Петербург')
GO
INSERT [dbo].[Разговоры] ([Номер_разговора], [Код_телефона], [Дата_раговора], [Время], [Код_города], [Оплаты]) VALUES (1, 4, CAST(N'2021-03-02' AS Date), 12, 1, N'не оплачено')
INSERT [dbo].[Разговоры] ([Номер_разговора], [Код_телефона], [Дата_раговора], [Время], [Код_города], [Оплаты]) VALUES (2, 2, CAST(N'2021-03-02' AS Date), 2, 4, N'оплачено')
INSERT [dbo].[Разговоры] ([Номер_разговора], [Код_телефона], [Дата_раговора], [Время], [Код_города], [Оплаты]) VALUES (3, 3, CAST(N'2021-03-08' AS Date), 15, 3, N'оплачено')
INSERT [dbo].[Разговоры] ([Номер_разговора], [Код_телефона], [Дата_раговора], [Время], [Код_города], [Оплаты]) VALUES (4, 1, CAST(N'2021-03-08' AS Date), 5, 3, N'оплачено')
INSERT [dbo].[Разговоры] ([Номер_разговора], [Код_телефона], [Дата_раговора], [Время], [Код_города], [Оплаты]) VALUES (5, 4, CAST(N'2021-03-15' AS Date), 10, 5, N'оплачено')
INSERT [dbo].[Разговоры] ([Номер_разговора], [Код_телефона], [Дата_раговора], [Время], [Код_города], [Оплаты]) VALUES (6, 3, CAST(N'2021-03-15' AS Date), 1, 1, N'не оплачено')
INSERT [dbo].[Разговоры] ([Номер_разговора], [Код_телефона], [Дата_раговора], [Время], [Код_города], [Оплаты]) VALUES (7, 1, CAST(N'2021-03-15' AS Date), 10, 1, N'не оплачено')
INSERT [dbo].[Разговоры] ([Номер_разговора], [Код_телефона], [Дата_раговора], [Время], [Код_города], [Оплаты]) VALUES (8, 2, CAST(N'2021-03-15' AS Date), 1, 2, N'оплачено')
INSERT [dbo].[Разговоры] ([Номер_разговора], [Код_телефона], [Дата_раговора], [Время], [Код_города], [Оплаты]) VALUES (9, 5, CAST(N'2021-03-23' AS Date), 6, 3, N'оплачено')
INSERT [dbo].[Разговоры] ([Номер_разговора], [Код_телефона], [Дата_раговора], [Время], [Код_города], [Оплаты]) VALUES (10, 4, CAST(N'2021-04-01' AS Date), 3, 3, N'не оплачено')
INSERT [dbo].[Разговоры] ([Номер_разговора], [Код_телефона], [Дата_раговора], [Время], [Код_города], [Оплаты]) VALUES (11, 2, CAST(N'2021-04-01' AS Date), 3, 3, N'оплачено')
GO
INSERT [dbo].[Телефоны] ([Код_телефона], [Номер_абонента], [Номер_телефона], [Номер_договора], [Дата_Установки]) VALUES (1, 4, N'(3812)333490', N'3465Ф', CAST(N'2012-10-09' AS Date))
INSERT [dbo].[Телефоны] ([Код_телефона], [Номер_абонента], [Номер_телефона], [Номер_договора], [Дата_Установки]) VALUES (2, 4, N'(3812)951211   ', N'3466Ф', CAST(N'2012-10-09' AS Date))
INSERT [dbo].[Телефоны] ([Код_телефона], [Номер_абонента], [Номер_телефона], [Номер_договора], [Дата_Установки]) VALUES (3, 1, N'(3812)531178', N'4523В', CAST(N'2004-08-04' AS Date))
INSERT [dbo].[Телефоны] ([Код_телефона], [Номер_абонента], [Номер_телефона], [Номер_договора], [Дата_Установки]) VALUES (4, 1, N' (3812)326789      ', N'2378Ф ', CAST(N'1996-01-01' AS Date))
INSERT [dbo].[Телефоны] ([Код_телефона], [Номер_абонента], [Номер_телефона], [Номер_договора], [Дата_Установки]) VALUES (5, 3, N'(3812)953412   ', N'99345Р', CAST(N'2013-01-01' AS Date))
GO
ALTER TABLE [dbo].[Разговоры]  WITH CHECK ADD  CONSTRAINT [FK_Разговоры_Города] FOREIGN KEY([Код_города])
REFERENCES [dbo].[Города] ([Код_города])
GO
ALTER TABLE [dbo].[Разговоры] CHECK CONSTRAINT [FK_Разговоры_Города]
GO
ALTER TABLE [dbo].[Разговоры]  WITH CHECK ADD  CONSTRAINT [FK_Разговоры_Телефоны] FOREIGN KEY([Код_телефона])
REFERENCES [dbo].[Телефоны] ([Код_телефона])
GO
ALTER TABLE [dbo].[Разговоры] CHECK CONSTRAINT [FK_Разговоры_Телефоны]
GO
ALTER TABLE [dbo].[Телефоны]  WITH CHECK ADD  CONSTRAINT [FK_Телефоны_Абоненты] FOREIGN KEY([Номер_абонента])
REFERENCES [dbo].[Абоненты] ([Номер_абонента])
GO
ALTER TABLE [dbo].[Телефоны] CHECK CONSTRAINT [FK_Телефоны_Абоненты]
GO
USE [master]
GO
ALTER DATABASE [АбонентыИр330Кунгурцев] SET  READ_WRITE 
GO
