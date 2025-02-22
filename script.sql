USE [AA_AracKiralama]
GO
/****** Object:  StoredProcedure [dbo].[SP_RezarvasyonEkle]    Script Date: 2.01.2023 12:19:47 ******/
DROP PROCEDURE [dbo].[SP_RezarvasyonEkle]
GO
/****** Object:  StoredProcedure [dbo].[SP_MusteriEkle]    Script Date: 2.01.2023 12:19:47 ******/
DROP PROCEDURE [dbo].[SP_MusteriEkle]
GO
ALTER TABLE [dbo].[tblUcret] DROP CONSTRAINT [FK_tblUcret_tblSegment]
GO
ALTER TABLE [dbo].[tblUcret] DROP CONSTRAINT [FK_tblUcret_tblArac1]
GO
ALTER TABLE [dbo].[tblRezarvasyon] DROP CONSTRAINT [FK_tblRezarvasyon_tblMusteri]
GO
ALTER TABLE [dbo].[tblRezarvasyon] DROP CONSTRAINT [FK_tblRezarvasyon_tblArac1]
GO
ALTER TABLE [dbo].[tblRezarvasyon] DROP CONSTRAINT [FK_tblRezarvasyon_tblArac]
GO
ALTER TABLE [dbo].[tblModel] DROP CONSTRAINT [FK_tblModel_tblMarka]
GO
ALTER TABLE [dbo].[tblKiralanmısArabalar] DROP CONSTRAINT [FK_tblKiralanmısArabalar_tblRezarvasyon]
GO
ALTER TABLE [dbo].[tblKiralanmısArabalar] DROP CONSTRAINT [FK_tblKiralanmısArabalar_tblMusteri]
GO
ALTER TABLE [dbo].[tblKiralanmısArabalar] DROP CONSTRAINT [FK_tblKiralanmısArabalar_tblArac]
GO
ALTER TABLE [dbo].[tblKiralamaGecmisi] DROP CONSTRAINT [FK_tblKiralamaGecmisi_tblRezarvasyon]
GO
ALTER TABLE [dbo].[tblKiralamaGecmisi] DROP CONSTRAINT [FK_tblKiralamaGecmisi_tblMusteri]
GO
ALTER TABLE [dbo].[tblKiralamaGecmisi] DROP CONSTRAINT [FK_tblKiralamaGecmisi_tblArac]
GO
ALTER TABLE [dbo].[tblArac] DROP CONSTRAINT [FK_tblArac_tblSegment]
GO
ALTER TABLE [dbo].[tblArac] DROP CONSTRAINT [FK_tblArac_tblModel]
GO
ALTER TABLE [dbo].[tblArac] DROP CONSTRAINT [FK_tblArac_tblMarka]
GO
/****** Object:  Table [dbo].[tblUcret]    Script Date: 2.01.2023 12:19:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUcret]') AND type in (N'U'))
DROP TABLE [dbo].[tblUcret]
GO
/****** Object:  Table [dbo].[tblSegment]    Script Date: 2.01.2023 12:19:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSegment]') AND type in (N'U'))
DROP TABLE [dbo].[tblSegment]
GO
/****** Object:  Table [dbo].[tblRezarvasyon]    Script Date: 2.01.2023 12:19:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblRezarvasyon]') AND type in (N'U'))
DROP TABLE [dbo].[tblRezarvasyon]
GO
/****** Object:  Table [dbo].[tblModel]    Script Date: 2.01.2023 12:19:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblModel]') AND type in (N'U'))
DROP TABLE [dbo].[tblModel]
GO
/****** Object:  Table [dbo].[tblMarka]    Script Date: 2.01.2023 12:19:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMarka]') AND type in (N'U'))
DROP TABLE [dbo].[tblMarka]
GO
/****** Object:  Table [dbo].[tblKiralanmısArabalar]    Script Date: 2.01.2023 12:19:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblKiralanmısArabalar]') AND type in (N'U'))
DROP TABLE [dbo].[tblKiralanmısArabalar]
GO
/****** Object:  UserDefinedFunction [dbo].[F_KiralamaGecmisiListele]    Script Date: 2.01.2023 12:19:47 ******/
DROP FUNCTION [dbo].[F_KiralamaGecmisiListele]
GO
/****** Object:  Table [dbo].[tblKiralamaGecmisi]    Script Date: 2.01.2023 12:19:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblKiralamaGecmisi]') AND type in (N'U'))
DROP TABLE [dbo].[tblKiralamaGecmisi]
GO
/****** Object:  UserDefinedFunction [dbo].[F_AracListele]    Script Date: 2.01.2023 12:19:47 ******/
DROP FUNCTION [dbo].[F_AracListele]
GO
/****** Object:  Table [dbo].[tblArac]    Script Date: 2.01.2023 12:19:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblArac]') AND type in (N'U'))
DROP TABLE [dbo].[tblArac]
GO
/****** Object:  UserDefinedFunction [dbo].[F_MusteriKaydiListele]    Script Date: 2.01.2023 12:19:47 ******/
DROP FUNCTION [dbo].[F_MusteriKaydiListele]
GO
/****** Object:  Table [dbo].[tblMusteri]    Script Date: 2.01.2023 12:19:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMusteri]') AND type in (N'U'))
DROP TABLE [dbo].[tblMusteri]
GO
USE [master]
GO
/****** Object:  Database [AA_AracKiralama]    Script Date: 2.01.2023 12:19:47 ******/
DROP DATABASE [AA_AracKiralama]
GO
/****** Object:  Database [AA_AracKiralama]    Script Date: 2.01.2023 12:19:47 ******/
CREATE DATABASE [AA_AracKiralama]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AA_AracKiralama', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\AA_AracKiralama.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AA_AracKiralama_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\AA_AracKiralama_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AA_AracKiralama] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AA_AracKiralama].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AA_AracKiralama] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET ARITHABORT OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AA_AracKiralama] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AA_AracKiralama] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AA_AracKiralama] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AA_AracKiralama] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AA_AracKiralama] SET  MULTI_USER 
GO
ALTER DATABASE [AA_AracKiralama] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AA_AracKiralama] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AA_AracKiralama] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AA_AracKiralama] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AA_AracKiralama] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AA_AracKiralama] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AA_AracKiralama] SET QUERY_STORE = OFF
GO
USE [AA_AracKiralama]
GO
/****** Object:  Table [dbo].[tblMusteri]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMusteri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TCKN] [char](11) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Soyadi] [nvarchar](50) NOT NULL,
	[Cinsiyet] [char](1) NULL,
	[DogumTarihi] [date] NOT NULL,
	[EhliyetTuru] [nvarchar](50) NOT NULL,
	[CepTelefonuKodu] [varchar](6) NOT NULL,
	[CepTelefonu] [char](10) NOT NULL,
	[Adres] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblMusteri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[F_MusteriKaydiListele]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[F_MusteriKaydiListele] ()
returns table
as 
return(select* from tblMusteri)
GO
/****** Object:  Table [dbo].[tblArac]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblArac](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Plaka] [nvarchar](50) NOT NULL,
	[MarkaId] [int] NOT NULL,
	[SegmentId] [int] NOT NULL,
	[ModelId] [int] NOT NULL,
	[Vites] [nvarchar](50) NOT NULL,
	[Renk] [nvarchar](50) NULL,
	[YakitTuru] [nvarchar](30) NOT NULL,
	[MusaitMi] [bit] NOT NULL,
	[Ucret] [money] NOT NULL,
 CONSTRAINT [PK_tblArac] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[F_AracListele]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[F_AracListele] ()
returns table
as 
return(select* from tblArac)
GO
/****** Object:  Table [dbo].[tblKiralamaGecmisi]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKiralamaGecmisi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RezarvasyonId] [int] NULL,
	[MusteriId] [int] NULL,
	[AracId] [int] NULL,
	[KiralamaTarihi] [datetime] NULL,
	[TeslimTarihi] [datetime] NULL,
 CONSTRAINT [PK_tblKiralamaGecmisi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[F_KiralamaGecmisiListele]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[F_KiralamaGecmisiListele] ()
returns table
as 
return(select* from tblKiralamaGecmisi)
GO
/****** Object:  Table [dbo].[tblKiralanmısArabalar]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKiralanmısArabalar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AracId] [int] NOT NULL,
	[RezarvasyonId] [int] NOT NULL,
	[MusteriId] [int] NOT NULL,
	[KiralamaTarihi] [datetime] NOT NULL,
	[KiralamaSuresi] [nvarchar](20) NOT NULL,
	[TeslimTarihi] [datetime] NOT NULL,
	[KiralamaBedeli] [money] NOT NULL,
 CONSTRAINT [PK_tblKiralanmısArabalar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMarka]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMarka](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nchar](10) NULL,
 CONSTRAINT [PK_tblMarka] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModel]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MarkaId] [int] NOT NULL,
	[ModelAdi] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRezarvasyon]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRezarvasyon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AracId] [int] NOT NULL,
	[MusteriId] [int] NOT NULL,
	[KiralamaTarihi] [datetime] NOT NULL,
	[TeslimTarihi] [datetime] NOT NULL,
	[ToplamUcret] [money] NOT NULL,
 CONSTRAINT [PK_tblRezarvasyon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSegment]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSegment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Segment] [char](1) NULL,
 CONSTRAINT [PK_tblSegment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUcret]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUcret](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AracId] [int] NOT NULL,
	[SegmentId] [int] NOT NULL,
	[GunlukUcret] [money] NOT NULL,
	[HaftalikUcret] [money] NOT NULL,
	[AylikUcret] [money] NOT NULL,
 CONSTRAINT [PK_tblUcret] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblArac] ON 

INSERT [dbo].[tblArac] ([Id], [Plaka], [MarkaId], [SegmentId], [ModelId], [Vites], [Renk], [YakitTuru], [MusaitMi], [Ucret]) VALUES (8, N'34PT700', 5, 2, 14, N'otomatik', N'mavi', N'dizel', 0, 160.0000)
INSERT [dbo].[tblArac] ([Id], [Plaka], [MarkaId], [SegmentId], [ModelId], [Vites], [Renk], [YakitTuru], [MusaitMi], [Ucret]) VALUES (9, N'34GT190', 6, 6, 16, N'yarı-otomatik', N'gri', N'dizel', 1, 180.0000)
INSERT [dbo].[tblArac] ([Id], [Plaka], [MarkaId], [SegmentId], [ModelId], [Vites], [Renk], [YakitTuru], [MusaitMi], [Ucret]) VALUES (10, N'34FB07', 7, 3, 19, N'manuel', N'beyaz', N'benzin', 1, 160.0000)
INSERT [dbo].[tblArac] ([Id], [Plaka], [MarkaId], [SegmentId], [ModelId], [Vites], [Renk], [YakitTuru], [MusaitMi], [Ucret]) VALUES (11, N'34RE625', 8, 2, 22, N'otomatik', N'gri', N'benzin', 0, 150.0000)
INSERT [dbo].[tblArac] ([Id], [Plaka], [MarkaId], [SegmentId], [ModelId], [Vites], [Renk], [YakitTuru], [MusaitMi], [Ucret]) VALUES (12, N'34TT1001', 6, 2, 17, N'manuel', N'kırmızı', N'Dizel', 1, 150.0000)
INSERT [dbo].[tblArac] ([Id], [Plaka], [MarkaId], [SegmentId], [ModelId], [Vites], [Renk], [YakitTuru], [MusaitMi], [Ucret]) VALUES (13, N'34DE266', 5, 4, 15, N'otomatik', N'siyah', N'Dizel', 0, 500.0000)
INSERT [dbo].[tblArac] ([Id], [Plaka], [MarkaId], [SegmentId], [ModelId], [Vites], [Renk], [YakitTuru], [MusaitMi], [Ucret]) VALUES (14, N'34AA2559', 2, 3, 7, N'otomatik', N'Beyaz', N'Dizel', 1, 300.0000)
SET IDENTITY_INSERT [dbo].[tblArac] OFF
GO
SET IDENTITY_INSERT [dbo].[tblKiralamaGecmisi] ON 

INSERT [dbo].[tblKiralamaGecmisi] ([Id], [RezarvasyonId], [MusteriId], [AracId], [KiralamaTarihi], [TeslimTarihi]) VALUES (4, 1, 807, 8, CAST(N'2021-12-23T00:00:00.000' AS DateTime), CAST(N'2021-12-30T00:00:00.000' AS DateTime))
INSERT [dbo].[tblKiralamaGecmisi] ([Id], [RezarvasyonId], [MusteriId], [AracId], [KiralamaTarihi], [TeslimTarihi]) VALUES (5, 4, 810, 11, CAST(N'2021-12-01T00:00:00.000' AS DateTime), CAST(N'2021-12-08T00:00:00.000' AS DateTime))
INSERT [dbo].[tblKiralamaGecmisi] ([Id], [RezarvasyonId], [MusteriId], [AracId], [KiralamaTarihi], [TeslimTarihi]) VALUES (6, 7, 813, 13, CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-03-17T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblKiralamaGecmisi] OFF
GO
SET IDENTITY_INSERT [dbo].[tblKiralanmısArabalar] ON 

INSERT [dbo].[tblKiralanmısArabalar] ([Id], [AracId], [RezarvasyonId], [MusteriId], [KiralamaTarihi], [KiralamaSuresi], [TeslimTarihi], [KiralamaBedeli]) VALUES (1, 8, 1, 807, CAST(N'2021-12-23T00:00:00.000' AS DateTime), N'1 hafta', CAST(N'2021-12-30T00:00:00.000' AS DateTime), 910.0000)
INSERT [dbo].[tblKiralanmısArabalar] ([Id], [AracId], [RezarvasyonId], [MusteriId], [KiralamaTarihi], [KiralamaSuresi], [TeslimTarihi], [KiralamaBedeli]) VALUES (2, 11, 4, 810, CAST(N'2021-12-01T00:00:00.000' AS DateTime), N'1 hafta', CAST(N'2021-12-08T00:00:00.000' AS DateTime), 875.0000)
INSERT [dbo].[tblKiralanmısArabalar] ([Id], [AracId], [RezarvasyonId], [MusteriId], [KiralamaTarihi], [KiralamaSuresi], [TeslimTarihi], [KiralamaBedeli]) VALUES (12, 13, 7, 813, CAST(N'2022-05-15T00:00:00.000' AS DateTime), N'2 gün', CAST(N'2022-03-17T00:00:00.000' AS DateTime), 1000.0000)
SET IDENTITY_INSERT [dbo].[tblKiralanmısArabalar] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMarka] ON 

INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (1, N'Alfa Romeo')
INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (2, N'Audi      ')
INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (3, N'BMW       ')
INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (5, N'Volkswagen')
INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (6, N'Toyota    ')
INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (7, N'Ford      ')
INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (8, N'Hyundai   ')
INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (9, N'Citroen   ')
INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (10, N'Fiat      ')
INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (11, N'Dacia     ')
INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (12, N'Kia       ')
INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (13, N'Renault   ')
INSERT [dbo].[tblMarka] ([Id], [Adi]) VALUES (14, N'Peugeot   ')
SET IDENTITY_INSERT [dbo].[tblMarka] OFF
GO
SET IDENTITY_INSERT [dbo].[tblModel] ON 

INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (1, 2, N'Q2')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (2, 2, N'Q3')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (3, 2, N'Q8')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (4, 2, N'C4')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (5, 2, N'C5')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (6, 2, N'A5')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (7, 2, N'A3')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (8, 3, N'i3')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (9, 3, N'i4')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (10, 3, N'320d')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (11, 3, N'730i')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (12, 5, N'Golf')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (13, 5, N'T-Rog')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (14, 5, N'Polo')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (15, 5, N'Passat')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (16, 6, N'Corolla')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (17, 6, N'Yaris')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (18, 6, N'Auris')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (19, 7, N'Focus')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (20, 7, N'Fiesta')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (21, 8, N'i10')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (22, 8, N'i20')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (23, 9, N'C3')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (24, 9, N'C5')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (25, 10, N'Egea')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (26, 11, N'Duster')
INSERT [dbo].[tblModel] ([Id], [MarkaId], [ModelAdi]) VALUES (27, 12, N'Ceed')
SET IDENTITY_INSERT [dbo].[tblModel] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMusteri] ON 

INSERT [dbo].[tblMusteri] ([Id], [TCKN], [Adi], [Soyadi], [Cinsiyet], [DogumTarihi], [EhliyetTuru], [CepTelefonuKodu], [CepTelefonu], [Adres], [Email]) VALUES (805, N'93578542080', N'Taner', N'Ay', N'E', CAST(N'1996-11-04' AS Date), N'manuel', N'90', N'5306702698', N'Üsküdar', N'TA.36@gmail.com')
INSERT [dbo].[tblMusteri] ([Id], [TCKN], [Adi], [Soyadi], [Cinsiyet], [DogumTarihi], [EhliyetTuru], [CepTelefonuKodu], [CepTelefonu], [Adres], [Email]) VALUES (806, N'78293640794', N'Asya', N'Öztürk', N'K', CAST(N'2000-05-25' AS Date), N'otomatik', N'90', N'5462458790', N'Çengelköy', N'AO.61@gmail.com')
INSERT [dbo].[tblMusteri] ([Id], [TCKN], [Adi], [Soyadi], [Cinsiyet], [DogumTarihi], [EhliyetTuru], [CepTelefonuKodu], [CepTelefonu], [Adres], [Email]) VALUES (807, N'62962870295', N'Merve', N'Bayrak', N'K', CAST(N'1990-06-08' AS Date), N'manuel', N'90', N'5419843756', N'Büyükçkmece', N'MB.60@gmail.com')
INSERT [dbo].[tblMusteri] ([Id], [TCKN], [Adi], [Soyadi], [Cinsiyet], [DogumTarihi], [EhliyetTuru], [CepTelefonuKodu], [CepTelefonu], [Adres], [Email]) VALUES (808, N'12358742904', N'Osman', N'Çelik', N'E', CAST(N'1965-01-01' AS Date), N'manuel', N'90', N'5322716759', N'Tuzla', N'Osman.25@gmail.com')
INSERT [dbo].[tblMusteri] ([Id], [TCKN], [Adi], [Soyadi], [Cinsiyet], [DogumTarihi], [EhliyetTuru], [CepTelefonuKodu], [CepTelefonu], [Adres], [Email]) VALUES (809, N'92390166387', N'Kerem', N'Ertürk', N'E', CAST(N'1997-09-05' AS Date), N'otomatik', N'90', N'5537651443', N'Ümraniye', N'KE.90@gmail.com')
INSERT [dbo].[tblMusteri] ([Id], [TCKN], [Adi], [Soyadi], [Cinsiyet], [DogumTarihi], [EhliyetTuru], [CepTelefonuKodu], [CepTelefonu], [Adres], [Email]) VALUES (810, N'86487836743', N'Meryem', N'Bayram', N'K', CAST(N'2001-05-29' AS Date), N'otamatik', N'90', N'5437207251', N'Bayrampaşa', N'MB.56@gmail.com')
INSERT [dbo].[tblMusteri] ([Id], [TCKN], [Adi], [Soyadi], [Cinsiyet], [DogumTarihi], [EhliyetTuru], [CepTelefonuKodu], [CepTelefonu], [Adres], [Email]) VALUES (811, N'34526852885', N'Rüştü', N'Güzel', N'E', CAST(N'1964-07-26' AS Date), N'manuel', N'90', N'5537289117', N'Küçükçekmece', N'RG.58@gmail.com')
INSERT [dbo].[tblMusteri] ([Id], [TCKN], [Adi], [Soyadi], [Cinsiyet], [DogumTarihi], [EhliyetTuru], [CepTelefonuKodu], [CepTelefonu], [Adres], [Email]) VALUES (812, N'25867725813', N'Sude', N'Işıl', N'K', CAST(N'1998-10-27' AS Date), N'manuel', N'90', N'5072469258', N'Beşiktaş', N'SI.7@gmail.com')
INSERT [dbo].[tblMusteri] ([Id], [TCKN], [Adi], [Soyadi], [Cinsiyet], [DogumTarihi], [EhliyetTuru], [CepTelefonuKodu], [CepTelefonu], [Adres], [Email]) VALUES (813, N'46273442693', N'Ayşin', N'Taner', N'K', CAST(N'2002-09-02' AS Date), N'otomatik', N'90', N'5306524125', N'Beykoz', N'AT@gmail.com')
SET IDENTITY_INSERT [dbo].[tblMusteri] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRezarvasyon] ON 

INSERT [dbo].[tblRezarvasyon] ([Id], [AracId], [MusteriId], [KiralamaTarihi], [TeslimTarihi], [ToplamUcret]) VALUES (1, 8, 807, CAST(N'2021-12-23T00:00:00.000' AS DateTime), CAST(N'2021-12-30T00:00:00.000' AS DateTime), 910.0000)
INSERT [dbo].[tblRezarvasyon] ([Id], [AracId], [MusteriId], [KiralamaTarihi], [TeslimTarihi], [ToplamUcret]) VALUES (2, 10, 808, CAST(N'2021-10-20T00:00:00.000' AS DateTime), CAST(N'2021-11-20T00:00:00.000' AS DateTime), 3.3000)
INSERT [dbo].[tblRezarvasyon] ([Id], [AracId], [MusteriId], [KiralamaTarihi], [TeslimTarihi], [ToplamUcret]) VALUES (3, 12, 805, CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-04T00:00:00.000' AS DateTime), 150.0000)
INSERT [dbo].[tblRezarvasyon] ([Id], [AracId], [MusteriId], [KiralamaTarihi], [TeslimTarihi], [ToplamUcret]) VALUES (4, 11, 810, CAST(N'2021-12-01T00:00:00.000' AS DateTime), CAST(N'2021-12-08T00:00:00.000' AS DateTime), 875.0000)
INSERT [dbo].[tblRezarvasyon] ([Id], [AracId], [MusteriId], [KiralamaTarihi], [TeslimTarihi], [ToplamUcret]) VALUES (5, 9, 807, CAST(N'2022-03-10T00:00:00.000' AS DateTime), CAST(N'2022-03-17T00:00:00.000' AS DateTime), 980.0000)
INSERT [dbo].[tblRezarvasyon] ([Id], [AracId], [MusteriId], [KiralamaTarihi], [TeslimTarihi], [ToplamUcret]) VALUES (7, 13, 813, CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-03-17T00:00:00.000' AS DateTime), 1000.0000)
SET IDENTITY_INSERT [dbo].[tblRezarvasyon] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSegment] ON 

INSERT [dbo].[tblSegment] ([Id], [Segment]) VALUES (1, N'A')
INSERT [dbo].[tblSegment] ([Id], [Segment]) VALUES (2, N'B')
INSERT [dbo].[tblSegment] ([Id], [Segment]) VALUES (3, N'C')
INSERT [dbo].[tblSegment] ([Id], [Segment]) VALUES (4, N'D')
INSERT [dbo].[tblSegment] ([Id], [Segment]) VALUES (5, N'E')
INSERT [dbo].[tblSegment] ([Id], [Segment]) VALUES (6, N'F')
INSERT [dbo].[tblSegment] ([Id], [Segment]) VALUES (7, N'M')
SET IDENTITY_INSERT [dbo].[tblSegment] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUcret] ON 

INSERT [dbo].[tblUcret] ([Id], [AracId], [SegmentId], [GunlukUcret], [HaftalikUcret], [AylikUcret]) VALUES (1, 8, 2, 160.0000, 130.0000, 115.0000)
INSERT [dbo].[tblUcret] ([Id], [AracId], [SegmentId], [GunlukUcret], [HaftalikUcret], [AylikUcret]) VALUES (2, 9, 6, 180.0000, 140.0000, 120.0000)
INSERT [dbo].[tblUcret] ([Id], [AracId], [SegmentId], [GunlukUcret], [HaftalikUcret], [AylikUcret]) VALUES (3, 10, 3, 160.0000, 130.0000, 115.0000)
INSERT [dbo].[tblUcret] ([Id], [AracId], [SegmentId], [GunlukUcret], [HaftalikUcret], [AylikUcret]) VALUES (4, 11, 2, 150.0000, 125.0000, 110.0000)
INSERT [dbo].[tblUcret] ([Id], [AracId], [SegmentId], [GunlukUcret], [HaftalikUcret], [AylikUcret]) VALUES (5, 12, 2, 150.0000, 125.0000, 110.0000)
SET IDENTITY_INSERT [dbo].[tblUcret] OFF
GO
ALTER TABLE [dbo].[tblArac]  WITH CHECK ADD  CONSTRAINT [FK_tblArac_tblMarka] FOREIGN KEY([MarkaId])
REFERENCES [dbo].[tblMarka] ([Id])
GO
ALTER TABLE [dbo].[tblArac] CHECK CONSTRAINT [FK_tblArac_tblMarka]
GO
ALTER TABLE [dbo].[tblArac]  WITH CHECK ADD  CONSTRAINT [FK_tblArac_tblModel] FOREIGN KEY([ModelId])
REFERENCES [dbo].[tblModel] ([Id])
GO
ALTER TABLE [dbo].[tblArac] CHECK CONSTRAINT [FK_tblArac_tblModel]
GO
ALTER TABLE [dbo].[tblArac]  WITH CHECK ADD  CONSTRAINT [FK_tblArac_tblSegment] FOREIGN KEY([SegmentId])
REFERENCES [dbo].[tblSegment] ([Id])
GO
ALTER TABLE [dbo].[tblArac] CHECK CONSTRAINT [FK_tblArac_tblSegment]
GO
ALTER TABLE [dbo].[tblKiralamaGecmisi]  WITH CHECK ADD  CONSTRAINT [FK_tblKiralamaGecmisi_tblArac] FOREIGN KEY([AracId])
REFERENCES [dbo].[tblArac] ([Id])
GO
ALTER TABLE [dbo].[tblKiralamaGecmisi] CHECK CONSTRAINT [FK_tblKiralamaGecmisi_tblArac]
GO
ALTER TABLE [dbo].[tblKiralamaGecmisi]  WITH CHECK ADD  CONSTRAINT [FK_tblKiralamaGecmisi_tblMusteri] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[tblMusteri] ([Id])
GO
ALTER TABLE [dbo].[tblKiralamaGecmisi] CHECK CONSTRAINT [FK_tblKiralamaGecmisi_tblMusteri]
GO
ALTER TABLE [dbo].[tblKiralamaGecmisi]  WITH CHECK ADD  CONSTRAINT [FK_tblKiralamaGecmisi_tblRezarvasyon] FOREIGN KEY([RezarvasyonId])
REFERENCES [dbo].[tblRezarvasyon] ([Id])
GO
ALTER TABLE [dbo].[tblKiralamaGecmisi] CHECK CONSTRAINT [FK_tblKiralamaGecmisi_tblRezarvasyon]
GO
ALTER TABLE [dbo].[tblKiralanmısArabalar]  WITH CHECK ADD  CONSTRAINT [FK_tblKiralanmısArabalar_tblArac] FOREIGN KEY([AracId])
REFERENCES [dbo].[tblArac] ([Id])
GO
ALTER TABLE [dbo].[tblKiralanmısArabalar] CHECK CONSTRAINT [FK_tblKiralanmısArabalar_tblArac]
GO
ALTER TABLE [dbo].[tblKiralanmısArabalar]  WITH CHECK ADD  CONSTRAINT [FK_tblKiralanmısArabalar_tblMusteri] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[tblMusteri] ([Id])
GO
ALTER TABLE [dbo].[tblKiralanmısArabalar] CHECK CONSTRAINT [FK_tblKiralanmısArabalar_tblMusteri]
GO
ALTER TABLE [dbo].[tblKiralanmısArabalar]  WITH CHECK ADD  CONSTRAINT [FK_tblKiralanmısArabalar_tblRezarvasyon] FOREIGN KEY([RezarvasyonId])
REFERENCES [dbo].[tblRezarvasyon] ([Id])
GO
ALTER TABLE [dbo].[tblKiralanmısArabalar] CHECK CONSTRAINT [FK_tblKiralanmısArabalar_tblRezarvasyon]
GO
ALTER TABLE [dbo].[tblModel]  WITH CHECK ADD  CONSTRAINT [FK_tblModel_tblMarka] FOREIGN KEY([MarkaId])
REFERENCES [dbo].[tblMarka] ([Id])
GO
ALTER TABLE [dbo].[tblModel] CHECK CONSTRAINT [FK_tblModel_tblMarka]
GO
ALTER TABLE [dbo].[tblRezarvasyon]  WITH CHECK ADD  CONSTRAINT [FK_tblRezarvasyon_tblArac] FOREIGN KEY([AracId])
REFERENCES [dbo].[tblArac] ([Id])
GO
ALTER TABLE [dbo].[tblRezarvasyon] CHECK CONSTRAINT [FK_tblRezarvasyon_tblArac]
GO
ALTER TABLE [dbo].[tblRezarvasyon]  WITH CHECK ADD  CONSTRAINT [FK_tblRezarvasyon_tblArac1] FOREIGN KEY([AracId])
REFERENCES [dbo].[tblArac] ([Id])
GO
ALTER TABLE [dbo].[tblRezarvasyon] CHECK CONSTRAINT [FK_tblRezarvasyon_tblArac1]
GO
ALTER TABLE [dbo].[tblRezarvasyon]  WITH CHECK ADD  CONSTRAINT [FK_tblRezarvasyon_tblMusteri] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[tblMusteri] ([Id])
GO
ALTER TABLE [dbo].[tblRezarvasyon] CHECK CONSTRAINT [FK_tblRezarvasyon_tblMusteri]
GO
ALTER TABLE [dbo].[tblUcret]  WITH CHECK ADD  CONSTRAINT [FK_tblUcret_tblArac1] FOREIGN KEY([AracId])
REFERENCES [dbo].[tblArac] ([Id])
GO
ALTER TABLE [dbo].[tblUcret] CHECK CONSTRAINT [FK_tblUcret_tblArac1]
GO
ALTER TABLE [dbo].[tblUcret]  WITH CHECK ADD  CONSTRAINT [FK_tblUcret_tblSegment] FOREIGN KEY([SegmentId])
REFERENCES [dbo].[tblSegment] ([Id])
GO
ALTER TABLE [dbo].[tblUcret] CHECK CONSTRAINT [FK_tblUcret_tblSegment]
GO
/****** Object:  StoredProcedure [dbo].[SP_MusteriEkle]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_MusteriEkle]

@TCKN char(11),
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@Cinsiyet char(1),
@DogumTarihi date,
@EhliyetTuru nvarchar(50),
@CepTelefonuKodu varchar(6),
@CepTelefonu char(10),
@Adres nvarchar(max),
@Email nvarchar(100)
as
insert into tblMusteri(TCKN, Adi, Soyadi, Cinsiyet, DogumTarihi, EhliyetTuru, CepTelefonuKodu, CepTelefonu, Adres, Email) values ( @TCKN, @Adi, @Soyadi, @Cinsiyet, @DogumTarihi, @EhliyetTuru, @CepTelefonuKodu, @CepTelefonu, @Adres, @Email)
GO
/****** Object:  StoredProcedure [dbo].[SP_RezarvasyonEkle]    Script Date: 2.01.2023 12:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_RezarvasyonEkle]

@AracId int,
@MusteriId int,
@KiralamaTarihi date,
@TeslimTarihi date,
@ToplamUcret money

as
insert into tblRezarvasyon values( @AracId, @MusteriId, @KiralamaTarihi, @TeslimTarihi, @ToplamUcret )
GO
USE [master]
GO
ALTER DATABASE [AA_AracKiralama] SET  READ_WRITE 
GO
