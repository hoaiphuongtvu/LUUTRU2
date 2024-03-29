USE [master]
GO
/****** Object:  Database [QLDA]    Script Date: 12/05/2023 07:26:59 ******/
CREATE DATABASE [QLDA] ON  PRIMARY 
( NAME = N'QLDA', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QLDA.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLDA_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QLDA_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLDA] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLDA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLDA] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLDA] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLDA] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLDA] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLDA] SET ARITHABORT OFF
GO
ALTER DATABASE [QLDA] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLDA] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLDA] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLDA] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLDA] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLDA] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLDA] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLDA] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLDA] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLDA] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLDA] SET  ENABLE_BROKER
GO
ALTER DATABASE [QLDA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLDA] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLDA] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLDA] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLDA] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLDA] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLDA] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLDA] SET  READ_WRITE
GO
ALTER DATABASE [QLDA] SET RECOVERY FULL
GO
ALTER DATABASE [QLDA] SET  MULTI_USER
GO
ALTER DATABASE [QLDA] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLDA] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLDA', N'ON'
GO
USE [QLDA]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/05/2023 07:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoNV] [nvarchar](50) NULL,
	[TenLot] [nvarchar](50) NULL,
	[TenNv] [nvarchar](50) NULL,
	[NgSinh] [date] NULL,
	[Phai] [nvarchar](10) NULL,
	[Dchi] [nvarchar](50) NULL,
	[MaNQL] [varchar](10) NOT NULL,
	[Phong] [varchar](10) NOT NULL,
	[Luong] [float] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'001', N'Vương', N'Ngọc', N'Quyền', CAST(0xD4E70A00 AS Date), N'Nữ', N'Hà Nội', N'', N'QL', 3000000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'002', N'Nguyễn', N'Thanh', N'Tùng', CAST(0xDBE30A00 AS Date), N'Nam', N'TPHCM', N'001', N'NC', 2500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'003', N'Lê', N'Thị', N'Nhẫn', CAST(0x55EC0A00 AS Date), N'Nữ', N'TPHCM', N'001', N'DH', 2500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'004', N'Đinh', N'Bá', N'Tiên', CAST(0x67F60A00 AS Date), N'Nam', N'Đồng Tháp', N'002', N'NC', 2200000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'005', N'Bùi', N'Thúy', N'Vũ', CAST(0x20FE0A00 AS Date), N'Nữ', N'Trà Vinh', N'003', N'DH', 2200000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'006', N'Nguyễn', N'Mạnh', N'Hùng', CAST(0xDD090B00 AS Date), N'Nam', N'Đồng Nai', N'002', N'NC', 2000000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'007', N'Trần', N'Hồng', N'Vân', CAST(0x9F020B00 AS Date), N'Nữ', N'Vĩnh Long', N'004', N'NC', 1800000)
/****** Object:  Table [dbo].[DeAn]    Script Date: 12/05/2023 07:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeAn](
	[MaDA] [varchar](10) NOT NULL,
	[TenDA] [nvarchar](50) NULL,
	[DiaDiemDA] [nvarchar](50) NULL,
	[Phong] [varchar](10) NOT NULL,
	[NgayBD_DK] [date] NULL,
	[NgayKT_DK] [date] NULL,
 CONSTRAINT [PK_DEAN] PRIMARY KEY CLUSTERED 
(
	[MaDA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'DT001', N'Đào tạo 1', N'Nha Trang', N'DH', CAST(0x04270B00 AS Date), CAST(0xB92C0B00 AS Date))
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'DT002', N'Đào tạo 2', N'Đà Nẵng', N'DH', CAST(0xB62C0B00 AS Date), CAST(0xF02D0B00 AS Date))
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'TH001', N'Tin học hóa 1', N'Hà Nội', N'NC', CAST(0x6E280B00 AS Date), CAST(0xDB290B00 AS Date))
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'TH002', N'Tin học hóa 2', N'TPHCM', N'NC', CAST(0xE9280B00 AS Date), CAST(0xDE290B00 AS Date))
/****** Object:  Table [dbo].[PhongBan]    Script Date: 12/05/2023 07:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPB] [varchar](10) NOT NULL,
	[TenPB] [nvarchar](50) NULL,
	[TrPHG] [varchar](10) NOT NULL,
	[DiaDiem] [nvarchar](50) NULL,
	[NgayNhanChuc] [date] NULL,
 CONSTRAINT [PK_PHONGBAN] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [TrPHG], [DiaDiem], [NgayNhanChuc]) VALUES (N'DH', N'Điều Hành', N'003', N'', CAST(0xFC270B00 AS Date))
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [TrPHG], [DiaDiem], [NgayNhanChuc]) VALUES (N'NC', N'Nghiên Cứu', N'002', N'', CAST(0x2B270B00 AS Date))
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [TrPHG], [DiaDiem], [NgayNhanChuc]) VALUES (N'QL', N'Quản Lý', N'001', N'', CAST(0x95240B00 AS Date))
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 12/05/2023 07:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanNhan](
	[MaNV] [varchar](10) NOT NULL,
	[MaTN] [varchar](10) NOT NULL,
	[TenTN] [nvarchar](50) NULL,
	[Phai] [nvarchar](10) NULL,
	[NgSinh] [date] NULL,
	[QuanHe] [nvarchar](50) NULL,
 CONSTRAINT [PK_THANNHAN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaTN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'001', N'1', N'Lê Nhật Minh', N'Nam', CAST(0x47E40A00 AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'002', N'1', N'Lê Hoài Thương', N'Nữ', CAST(0x48EC0A00 AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'003', N'1', N'Trần Minh Tiến', N'Nam', CAST(0x1B170B00 AS Date), N'Con')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'003', N'2', N'Trần Ngọc Linh', N'Nữ', CAST(0x4F1A0B00 AS Date), N'Con')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'003', N'3', N'Trần Minh Long', N'Nam', CAST(0xC8E70A00 AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'004', N'1', N'Lê Phi Phụng', N'Nữ', CAST(0x5BEC0A00 AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'005', N'1', N'Trần Thu Hồng', N'Nữ', CAST(0x08050B00 AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'005', N'2', N'Nguyễn Mạnh Tâm', N'Nam', CAST(0x95280B00 AS Date), N'Con')
/****** Object:  Table [dbo].[PhanCong]    Script Date: 12/05/2023 07:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanCong](
	[MaNV] [varchar](10) NOT NULL,
	[MaDA] [varchar](10) NOT NULL,
	[ThoiGian] [float] NULL,
 CONSTRAINT [PK_PHANCONG] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaDA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'001', N'TH001', 30)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'001', N'TH002', 12.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'DT001', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'DT002', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'TH001', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'TH002', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'003', N'TH001', 37.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'004', N'DT001', 22.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'004', N'DT002', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'006', N'DT001', 30.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'007', N'TH001', 20)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'007', N'TH002', 10)
/****** Object:  ForeignKey [FK_TN_MaNV]    Script Date: 12/05/2023 07:27:00 ******/
ALTER TABLE [dbo].[ThanNhan]  WITH CHECK ADD  CONSTRAINT [FK_TN_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ThanNhan] CHECK CONSTRAINT [FK_TN_MaNV]
GO
/****** Object:  ForeignKey [FK_PC_MaDA]    Script Date: 12/05/2023 07:27:00 ******/
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PC_MaDA] FOREIGN KEY([MaDA])
REFERENCES [dbo].[DeAn] ([MaDA])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PC_MaDA]
GO
/****** Object:  ForeignKey [FK_PC_MaNV]    Script Date: 12/05/2023 07:27:00 ******/
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PC_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PC_MaNV]
GO
