USE [QLSieuThiMini]
GO
/****** Object:  Table [dbo].[tbl_ChiTietHD]    Script Date: 11/02/2018 7:42:24 AM ******/
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
/****** Object:  Table [dbo].[tbl_ChiTietNhapHang]    Script Date: 11/02/2018 7:42:24 AM ******/
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
/****** Object:  Table [dbo].[tbl_HangHoa]    Script Date: 11/02/2018 7:42:24 AM ******/
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
/****** Object:  Table [dbo].[tbl_HoaDon]    Script Date: 11/02/2018 7:42:24 AM ******/
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
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 11/02/2018 7:42:24 AM ******/
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
/****** Object:  Table [dbo].[tbl_LoaiHangHoa]    Script Date: 11/02/2018 7:42:24 AM ******/
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
/****** Object:  Table [dbo].[tbl_NhapHang]    Script Date: 11/02/2018 7:42:24 AM ******/
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
/****** Object:  Table [dbo].[tbl_TaiKhoan]    Script Date: 11/02/2018 7:42:24 AM ******/
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
SET IDENTITY_INSERT [dbo].[tbl_HangHoa] ON 

INSERT [dbo].[tbl_HangHoa] ([Id], [Ten], [SoLuong], [IdLoaiHang], [GiaBan]) VALUES (1, N'Nước tương', 0, 1, 20000)
INSERT [dbo].[tbl_HangHoa] ([Id], [Ten], [SoLuong], [IdLoaiHang], [GiaBan]) VALUES (2, N'Nước mắm', 0, 1, 20000)
SET IDENTITY_INSERT [dbo].[tbl_HangHoa] OFF
SET IDENTITY_INSERT [dbo].[tbl_HoaDon] ON 

INSERT [dbo].[tbl_HoaDon] ([Id], [NgayLap], [NguoiLap], [IdKhachHang]) VALUES (1, CAST(N'2010-10-10T00:00:00.000' AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[tbl_HoaDon] OFF
SET IDENTITY_INSERT [dbo].[tbl_KhachHang] ON 

INSERT [dbo].[tbl_KhachHang] ([Id], [HoTen], [Sdt], [Email], [DiaChi]) VALUES (1, N'Nguyễn Văn B', N'0123456789', N'nva@gmail.com', N'123 Nguyễn Du')
INSERT [dbo].[tbl_KhachHang] ([Id], [HoTen], [Sdt], [Email], [DiaChi]) VALUES (3, N'dfs', N'fsd', N'sdf', N'fsddsfsdfds')
SET IDENTITY_INSERT [dbo].[tbl_KhachHang] OFF
SET IDENTITY_INSERT [dbo].[tbl_LoaiHangHoa] ON 

INSERT [dbo].[tbl_LoaiHangHoa] ([Id], [Ten]) VALUES (1, N'Thức ăn nhanh')
INSERT [dbo].[tbl_LoaiHangHoa] ([Id], [Ten]) VALUES (2, N'Gia vị')
SET IDENTITY_INSERT [dbo].[tbl_LoaiHangHoa] OFF
SET IDENTITY_INSERT [dbo].[tbl_TaiKhoan] ON 

INSERT [dbo].[tbl_TaiKhoan] ([Id], [HoTen], [Sdt], [TenDangNhap], [MatKhau], [Quyen]) VALUES (1, N'Nguyễn Văn A', N'0123456789', N'admin', N'admin', N'Manager')
INSERT [dbo].[tbl_TaiKhoan] ([Id], [HoTen], [Sdt], [TenDangNhap], [MatKhau], [Quyen]) VALUES (3, N'Nguyễn Văn B', N'0321654987', N'admin2', N'admin2', N'Import')
INSERT [dbo].[tbl_TaiKhoan] ([Id], [HoTen], [Sdt], [TenDangNhap], [MatKhau], [Quyen]) VALUES (4, N'Nguyễn Văn C', N'0659873211', N'admin3', N'admin3', N'Export')
SET IDENTITY_INSERT [dbo].[tbl_TaiKhoan] OFF
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
