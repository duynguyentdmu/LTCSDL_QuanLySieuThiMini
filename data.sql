USE [master]
GO
/****** Object:  Database [QLSieuThiMini]    Script Date: 11/01/2018 1:35:14 PM ******/
CREATE DATABASE [QLSieuThiMini]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSieuThiMini', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QLSieuThiMini.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSieuThiMini_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QLSieuThiMini_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLSieuThiMini] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSieuThiMini].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSieuThiMini] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSieuThiMini] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSieuThiMini] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLSieuThiMini] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSieuThiMini] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET RECOVERY FULL 
GO
ALTER DATABASE [QLSieuThiMini] SET  MULTI_USER 
GO
ALTER DATABASE [QLSieuThiMini] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSieuThiMini] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSieuThiMini] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSieuThiMini] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSieuThiMini] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSieuThiMini', N'ON'
GO
ALTER DATABASE [QLSieuThiMini] SET QUERY_STORE = OFF
GO
USE [QLSieuThiMini]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QLSieuThiMini]
GO
/****** Object:  Table [dbo].[tbl_ChiTietHD]    Script Date: 11/01/2018 1:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietHD](
	[IdHD] [int] NOT NULL,
	[IdHH] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[IdHD] ASC,
	[IdHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChiTietNhapHang]    Script Date: 11/01/2018 1:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietNhapHang](
	[IdNhapHang] [int] NOT NULL,
	[IdHH] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaNhap] [int] NOT NULL,
	[NgayHetHan] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_ChiTietNhapHang] PRIMARY KEY CLUSTERED 
(
	[IdNhapHang] ASC,
	[IdHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HangHoa]    Script Date: 11/01/2018 1:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HangHoa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[IdLoaiHang] [int] NOT NULL,
	[GiaBan] [int] NOT NULL,
 CONSTRAINT [PK_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HoaDon]    Script Date: 11/01/2018 1:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[NguoiLap] [int] NOT NULL,
	[IdKhachHang] [int] NULL,
 CONSTRAINT [PK_tbl_HoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 11/01/2018 1:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[Sdt] [nvarchar](10) NULL,
	[Email] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LoaiHangHoa]    Script Date: 11/01/2018 1:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LoaiHangHoa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tbl_LoaiHangHoa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhapHang]    Script Date: 11/01/2018 1:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhapHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[IdNguoiNhap] [int] NOT NULL,
 CONSTRAINT [PK_tbl_NhapHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TaiKhoan]    Script Date: 11/01/2018 1:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TaiKhoan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Sdt] [nvarchar](10) NOT NULL,
	[TenDangNhap] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[Quyen] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tbl_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietHD_tbl_HangHoa] FOREIGN KEY([IdHH])
REFERENCES [dbo].[tbl_HangHoa] ([Id])
GO
ALTER TABLE [dbo].[tbl_ChiTietHD] CHECK CONSTRAINT [FK_tbl_ChiTietHD_tbl_HangHoa]
GO
ALTER TABLE [dbo].[tbl_ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietHD_tbl_HoaDon] FOREIGN KEY([IdHD])
REFERENCES [dbo].[tbl_HoaDon] ([Id])
GO
ALTER TABLE [dbo].[tbl_ChiTietHD] CHECK CONSTRAINT [FK_tbl_ChiTietHD_tbl_HoaDon]
GO
ALTER TABLE [dbo].[tbl_ChiTietNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietNhapHang_tbl_HangHoa] FOREIGN KEY([IdHH])
REFERENCES [dbo].[tbl_HangHoa] ([Id])
GO
ALTER TABLE [dbo].[tbl_ChiTietNhapHang] CHECK CONSTRAINT [FK_tbl_ChiTietNhapHang_tbl_HangHoa]
GO
ALTER TABLE [dbo].[tbl_ChiTietNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietNhapHang_tbl_NhapHang] FOREIGN KEY([IdNhapHang])
REFERENCES [dbo].[tbl_NhapHang] ([Id])
GO
ALTER TABLE [dbo].[tbl_ChiTietNhapHang] CHECK CONSTRAINT [FK_tbl_ChiTietNhapHang_tbl_NhapHang]
GO
ALTER TABLE [dbo].[tbl_HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HangHoa_tbl_LoaiHangHoa] FOREIGN KEY([IdLoaiHang])
REFERENCES [dbo].[tbl_LoaiHangHoa] ([Id])
GO
ALTER TABLE [dbo].[tbl_HangHoa] CHECK CONSTRAINT [FK_tbl_HangHoa_tbl_LoaiHangHoa]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[tbl_KhachHang] ([Id])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_TaiKhoan] FOREIGN KEY([NguoiLap])
REFERENCES [dbo].[tbl_TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_TaiKhoan]
GO
ALTER TABLE [dbo].[tbl_NhapHang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NhapHang_tbl_TaiKhoan] FOREIGN KEY([IdNguoiNhap])
REFERENCES [dbo].[tbl_TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[tbl_NhapHang] CHECK CONSTRAINT [FK_tbl_NhapHang_tbl_TaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [QLSieuThiMini] SET  READ_WRITE 
GO
