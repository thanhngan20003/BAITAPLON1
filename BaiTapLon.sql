CREATE DATABASE QUANLIHOCSINH1
USE QUANLIHOCSINH1
GO
/****** Object:  Table [dbo].[BangDiemMonHoc]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BangDiemMonHoc](
	[MaBangDiemMonHoc] [varchar](20) NOT NULL,
	[DiemKiemTraMieng] [float] NULL,
	[DiemKiemTra15p] [float] NULL,
	[DiemKiemTra1tiet] [float] NULL,
	[DiemThi] [float] NULL,
	[DiemTongKet] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBangDiemMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Day]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Day](
	[MaGV] [varchar](20) NOT NULL,
	[MaMonHoc] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC,
	[MaMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DuocDayBoi]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DuocDayBoi](
	[MaHocSinh] [varchar](20) NOT NULL,
	[MaGV] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC,
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [varchar](20) NOT NULL,
	[TenGV] [nvarchar](20) NOT NULL,
	[GioiTinh] [nchar](10) NULL,
	[Tuoi] [int] NULL,
	[SoDienThoai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HanhKiem]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HanhKiem](
	[MaHanhKiem] [varchar](20) NOT NULL,
	[DiemChuyenCan] [float] NOT NULL,
	[LoaiHanhKiem] [nvarchar](10) NOT NULL,
	[ThoiGian] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHanhKiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHocSinh] [varchar](20) NOT NULL,
	[TenHocSinh] [nvarchar](50) NOT NULL,
	[Lop] [varchar](20) NOT NULL,
	[GioiTinh] [nchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[MaHanhKiem] [varchar](20) NOT NULL,
	[MaLop] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HS_BDMH]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HS_BDMH](
	[MaHocSinh] [varchar](20) NOT NULL,
	[MaBangDiemMonHoc] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC,
	[MaBangDiemMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HS_MH]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HS_MH](
	[MaHocSinh] [varchar](20) NOT NULL,
	[MaMonHoc] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC,
	[MaMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LH_BDMH]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LH_BDMH](
	[MaLop] [varchar](20) NOT NULL,
	[MaBangDiemMonHoc] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC,
	[MaBangDiemMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LopHoc](
	[MaLop] [varchar](20) NOT NULL,
	[TenLop] [nvarchar](20) NOT NULL,
	[SiSo] [int] NULL,
	[MaPhong] [varchar](20) NOT NULL,
	[ThoiGian] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMonHoc] [varchar](20) NOT NULL,
	[TenMonHoc] [nvarchar](20) NOT NULL,
	[KetQua] [nchar](10) NULL,
	[MaBangDiemMonHoc] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NienKhoa]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NienKhoa](
	[ThoiGian] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NK_PH]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NK_PH](
	[ThoiGian] [varchar](20) NOT NULL,
	[MaPhong] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ThoiGian] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongHoc]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongHoc](
	[MaPhong] [varchar](20) NOT NULL,
	[SoPhong] [varchar](20) NOT NULL,
	[SucChua] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanNhan](
	[Ten] [nvarchar](20) NOT NULL,
	[DiaChi] [nvarchar](20) NOT NULL,
	[GioiTinh] [nchar](10) NULL,
	[Tuoi] [int] NULL,
	[MoiQuanHe] [nchar](20) NULL,
	[SoDienThoai] [int] NULL,
	[MaHocSinh] [varchar](20) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 7/8/2020 5:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Thuoc](
	[MaLop] [varchar](20) NOT NULL,
	[MaHocSinh] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC,
	[MaHocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B001', 8, 8.5, 8, 8.5, 8.5)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B002', 9, 7, 7.5, 8.5, 8.5)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B003', 7, 8, 7.5, 7.25, 7.5)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B004', 8, 8, 8, 8, 8)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B005', 6, 5, 7, 8, 7.25)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B006', 7, 8, 7.5, 8.25, 8)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B007', 8, 9, 9, 8.5, 8.75)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B008', 10, 10, 9, 9.5, 9.75)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B009', 6, 6, 7, 7.5, 7)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B010', 7, 8.5, 9.5, 9, 9.25)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B011', 9, 8, 7, 7.5, 7.5)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B012', 5, 3, 3, 2, 2.5)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B013', 6.5, 7, 8, 8.5, 8)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B014', 7, 7, 6.5, 7.5, 7)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B015', 9, 9, 8.5, 9, 9)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B016', 8, 8, 6.5, 5, 6.75)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B017', 8, 7.5, 6, 6.5, 7)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B018', 7, 9, 9, 8, 8.25)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B019', 5, 3, 4, 3, 3.5)
INSERT [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc], [DiemKiemTraMieng], [DiemKiemTra15p], [DiemKiemTra1tiet], [DiemThi], [DiemTongKet]) VALUES (N'B020', 7, 6, 8, 8, 7.5)
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV001', N'MH001')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV001', N'MH010')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV002', N'MH002')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV002', N'MH005')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV003', N'MH004')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV004', N'MH005')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV005', N'MH003')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV005', N'MH011')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV006', N'MH006')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV006', N'MH015')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV007', N'MH007')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV007', N'MH014')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV008', N'MH020')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV009', N'MH003')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV010', N'MH006')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV010', N'MH019')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV011', N'MH018')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV012', N'MH015')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV013', N'MH013')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV013', N'MH016')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV014', N'MH009')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV014', N'MH014')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV015', N'MH007')
INSERT [dbo].[Day] ([MaGV], [MaMonHoc]) VALUES (N'GV015', N'MH008')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS001', N'GV001')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS002', N'GV001')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS003', N'GV001')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS004', N'GV002')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS005', N'GV002')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS005', N'GV010')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS006', N'GV001')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS007', N'GV003')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS007', N'GV009')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS008', N'GV003')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS008', N'GV008')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS009', N'GV004')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS009', N'GV009')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS010', N'GV004')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS010', N'GV010')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS011', N'GV005')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS011', N'GV011')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS012', N'GV005')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS012', N'GV011')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS013', N'GV001')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS013', N'GV003')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS013', N'GV005')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS013', N'GV011')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS014', N'GV006')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS014', N'GV012')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS015', N'GV006')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS015', N'GV013')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS016', N'GV001')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS016', N'GV012')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS017', N'GV007')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS017', N'GV012')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS018', N'GV008')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS018', N'GV013')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS019', N'GV009')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS019', N'GV014')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS020', N'GV002')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS020', N'GV003')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS020', N'GV013')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS021', N'GV011')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS021', N'GV015')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS022', N'GV015')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS023', N'GV014')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS024', N'GV005')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS024', N'GV007')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS025', N'GV005')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS026', N'GV006')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS027', N'GV007')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS028', N'GV008')
INSERT [dbo].[DuocDayBoi] ([MaHocSinh], [MaGV]) VALUES (N'HS029', N'GV001')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV001', N'Hoa', N'Nữ        ', 35, 351023901)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV002', N'Thuý', N'Nữ        ', 36, 351248702)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV003', N'Trang', N'Nữ        ', 40, 351036985)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV004', N'Tùng', N'Nam       ', 40, 354021364)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV005', N'Bách', N'Nam       ', 42, 350215822)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV006', N'Hùng', N'Nam       ', 38, 351014261)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV007', N'Sơn', N'Nam       ', 53, 356006489)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV008', N'Sơn', N'Nam       ', 45, 350241941)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV009', N'Hiếu', N'Nam       ', 40, 350124420)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV010', N'Huyền', N'Nữ        ', 40, 350045974)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV011', N'Trang', N'Nữ        ', 41, 356402139)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV012', N'Hoa', N'Nữ        ', 32, 350126489)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV013', N'Huệ', N'Nữ        ', 39, 354102298)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV014', N'Huy', N'Nam       ', 43, 354102997)
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [GioiTinh], [Tuoi], [SoDienThoai]) VALUES (N'GV015', N'Dương', N'Nam       ', 42, 356698872)
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A01', 9, N'Xuất Sắc', N'2014-2015')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A02', 8, N'Giỏi', N'2014-2015')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A03', 6.5, N'Khá', N'2014-2015')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A04', 4, N'Trung Bình', N'2014-2015')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A05', 2.5, N'Yếu', N'2014-2015')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A06', 0, N'Kém', N'2014-2015')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A07', 2, N'Yếu', N'2015-2016')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A08', 3, N'Trung Bình', N'2015-2016')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A09', 6, N'Trung Bình', N'2015-2016')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A10', 7, N'Khá', N'2015-2016')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A11', 8.5, N'Giỏi', N'2015-2016')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A12', 9.5, N'Xuất Sắc', N'2015-2016')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A13', 9.75, N'Xuất Sắc', N'2016-2017')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A14', 7, N'Khá', N'2016-2017')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A15', 5, N'Trung Bình', N'2016-2017')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A16', 8, N'Giỏi', N'2017-2018')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A17', 6.5, N'Khá', N'2017-2018')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A18', 9, N'Xuất Sắc', N'2018-2019')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A19', 5, N'Trung Bình', N'2018-2019')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A20', 7, N'Khá', N'2019-2020')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A21', 8.5, N'Giỏi', N'2019-2020')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A22', 4.5, N'Trung Bình', N'2019-2020')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A23', 10, N'Xuất Sắc', N'2019-2020')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A24', 3, N'Yếu', N'2019-2020')
INSERT [dbo].[HanhKiem] ([MaHanhKiem], [DiemChuyenCan], [LoaiHanhKiem], [ThoiGian]) VALUES (N'A25', 2, N'Kém', N'2019-2020')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS001', N'Hùng', N'12A1', N'Nam       ', N'Ninh Thuận', CAST(N'2000-03-15' AS Date), N'A02', N'L001')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS002', N'Ngân', N'12A2', N'Nữ        ', N'Bình Định', CAST(N'2000-05-14' AS Date), N'A02', N'L002')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS003', N'Nam', N'12A3', N'Nam       ', N'Hồ Chí Minh', CAST(N'2000-06-21' AS Date), N'A01', N'L003')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS004', N'Ngân', N'12A2', N'Nữ        ', N'Nghệ An', CAST(N'2000-10-16' AS Date), N'A02', N'L002')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS005', N'Nghiêm', N'12A5', N'Nam       ', N'Ninh Thuận', CAST(N'2000-03-15' AS Date), N'A02', N'L005')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS006', N'Cúc', N'12A4', N'Nữ        ', N'Bình Thuận', CAST(N'2000-04-02' AS Date), N'A03', N'L004')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS007', N'Hoa', N'12A5', N'Nữ        ', N'Huế', CAST(N'2000-04-16' AS Date), N'A02', N'L005')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS008', N'Uyên', N'12A5', N'Nữ        ', N'Ninh Thuận', CAST(N'2000-05-01' AS Date), N'A01', N'L010')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS009', N'Phú', N'12A1', N'Nam       ', N'Bình Phước', CAST(N'2000-11-24' AS Date), N'A03', N'L006')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS010', N'Linh', N'12A3', N'Nam       ', N'Thái Bình', CAST(N'2000-02-29' AS Date), N'A02', N'L007')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS011', N'Trung', N'12A1', N'Nam       ', N'Bình Thuận', CAST(N'2000-07-14' AS Date), N'A04', N'L011')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS012', N'Huy', N'12A4', N'Nam       ', N'Bình Định', CAST(N'2000-05-25' AS Date), N'A02', N'L009')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS013', N'Ngọc', N'12A5', N'Nữ        ', N'Ninh Thuận', CAST(N'2000-12-10' AS Date), N'A01', N'L010')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS014', N'Huệ', N'12A3', N'Nữ        ', N'Nghệ An', CAST(N'2000-05-05' AS Date), N'A03', N'L013')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS015', N'Giỏi', N'12A4', N'Nam       ', N'Hải Phòng', CAST(N'2000-05-19' AS Date), N'A05', N'L014')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS016', N'Linh', N'12A2', N'Nữ        ', N'Hồ Chí Minh', CAST(N'2000-06-17' AS Date), N'A03', N'L012')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS017', N'Hiếu', N'12A1', N'Nam       ', N'Vũng Tàu', CAST(N'2000-11-10' AS Date), N'A03', N'L011')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS018', N'Thảo', N'12A1', N'Nữ        ', N'Ninh Thuận', CAST(N'2000-10-20' AS Date), N'A01', N'L006')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS019', N'Tài', N'12A4', N'Nam       ', N'Thanh Hoá', CAST(N'2000-04-26' AS Date), N'A03', N'L014')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS020', N'Thái', N'12A5', N'Nam       ', N'Ninh Thuận', CAST(N'2000-05-05' AS Date), N'A03', N'L015')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS021', N'Thuận', N'12A5', N'Nữ        ', N'Thái Nguyên', CAST(N'2000-01-01' AS Date), N'A02', N'L005')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS022', N'Trinh', N'12A5', N'Nữ        ', N'Nghệ An', CAST(N'2000-01-21' AS Date), N'A02', N'L005')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS023', N'Bích', N'12A4', N'Nữ        ', N'Đà Nẵng', CAST(N'2000-05-14' AS Date), N'A02', N'L004')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS024', N'Trâm', N'12A4', N'Nữ        ', N'Đà Lạt', CAST(N'2000-10-19' AS Date), N'A01', N'L004')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS025', N'Thuý', N'12A3', N'Nữ        ', N'Sapa', CAST(N'2000-01-05' AS Date), N'A01', N'L008')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS026', N'Ngọc', N'12A2', N'Nữ        ', N'Đồng Tháp', CAST(N'2000-05-17' AS Date), N'A03', N'L002')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS027', N'Duy', N'12A1', N'Nam       ', N'Bình Thuận', CAST(N'2000-02-29' AS Date), N'A04', N'L001')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS028', N'Thiện', N'12A5', N'Nam       ', N'Vũng Tàu', CAST(N'2000-07-19' AS Date), N'A03', N'L015')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [Lop], [GioiTinh], [DiaChi], [NgaySinh], [MaHanhKiem], [MaLop]) VALUES (N'HS029', N'Đạt', N'12A5', N'Nam       ', N'Vũng Tàu', CAST(N'2000-06-25' AS Date), N'A04', N'L010')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS001', N'B001')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS002', N'B002')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS003', N'B003')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS004', N'B004')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS005', N'B005')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS006', N'B006')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS007', N'B007')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS008', N'B010')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS009', N'B009')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS010', N'B010')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS011', N'B011')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS012', N'B012')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS013', N'B013')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS014', N'B014')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS015', N'B015')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS016', N'B016')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS017', N'B017')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS018', N'B018')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS019', N'B019')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS020', N'B020')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS021', N'B011')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS022', N'B012')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS023', N'B013')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS024', N'B004')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS025', N'B015')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS026', N'B006')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS027', N'B017')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS028', N'B008')
INSERT [dbo].[HS_BDMH] ([MaHocSinh], [MaBangDiemMonHoc]) VALUES (N'HS029', N'B009')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS001', N'MH001')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS001', N'MH002')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS001', N'MH003')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS001', N'MH004')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS001', N'MH005')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS001', N'MH006')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS001', N'MH007')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS001', N'MH008')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS001', N'MH009')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS001', N'MH010')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS002', N'MH001')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS002', N'MH002')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS002', N'MH003')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS002', N'MH006')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS002', N'MH008')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS002', N'MH009')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS002', N'MH011')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS002', N'MH017')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS002', N'MH018')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS003', N'MH001')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS003', N'MH004')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS003', N'MH007')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS003', N'MH011')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS003', N'MH012')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS003', N'MH015')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS004', N'MH002')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS004', N'MH005')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS004', N'MH015')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS005', N'MH001')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS005', N'MH005')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS005', N'MH006')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS005', N'MH008')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS006', N'MH003')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS006', N'MH016')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS006', N'MH020')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS007', N'MH006')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS007', N'MH014')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS008', N'MH007')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS008', N'MH015')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS008', N'MH016')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS009', N'MH006')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS009', N'MH007')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS009', N'MH009')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS009', N'MH015')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS009', N'MH019')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS010', N'MH007')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS010', N'MH020')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS011', N'MH001')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS011', N'MH005')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS011', N'MH020')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS012', N'MH012')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS013', N'MH005')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS014', N'MH009')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS015', N'MH008')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS015', N'MH009')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS015', N'MH010')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS016', N'MH006')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS017', N'MH018')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS018', N'MH018')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS019', N'MH006')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS019', N'MH009')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS019', N'MH020')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS020', N'MH001')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS020', N'MH007')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS020', N'MH020')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS021', N'MH005')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS021', N'MH014')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS022', N'MH003')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS022', N'MH005')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS023', N'MH003')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS023', N'MH007')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS024', N'MH006')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS025', N'MH002')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS025', N'MH005')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS025', N'MH007')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS026', N'MH001')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS026', N'MH008')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS027', N'MH001')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS027', N'MH009')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS028', N'MH003')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS028', N'MH014')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS029', N'MH005')
INSERT [dbo].[HS_MH] ([MaHocSinh], [MaMonHoc]) VALUES (N'HS029', N'MH015')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L001', N'B001')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L001', N'B007')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L001', N'B016')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L002', N'B002')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L002', N'B017')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L002', N'B020')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L003', N'B003')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L003', N'B013')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L003', N'B018')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L004', N'B004')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L004', N'B019')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L005', N'B005')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L005', N'B020')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L006', N'B006')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L006', N'B010')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L007', N'B007')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L007', N'B011')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L007', N'B019')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L008', N'B004')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L008', N'B008')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L008', N'B012')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L009', N'B009')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L009', N'B013')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L010', N'B010')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L010', N'B014')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L011', N'B011')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L011', N'B015')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L012', N'B002')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L012', N'B009')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L012', N'B012')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L013', N'B003')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L013', N'B013')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L014', N'B004')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L014', N'B014')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L015', N'B006')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L015', N'B009')
INSERT [dbo].[LH_BDMH] ([MaLop], [MaBangDiemMonHoc]) VALUES (N'L015', N'B015')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L001', N'12A1', 38, N'P01', N'2017-2018')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L002', N'12A2', 39, N'P02', N'2017-2018')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L003', N'12A3', 40, N'P03', N'2017-2018')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L004', N'12A4', 38, N'P04', N'2017-2018')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L005', N'12A5', 42, N'P05', N'2017-2018')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L006', N'12A1', 35, N'P06', N'2018-2019')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L007', N'12A2', 36, N'P07', N'2018-2019')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L008', N'12A3', 36, N'P08', N'2018-2019')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L009', N'12A4', 40, N'P09', N'2018-2019')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L010', N'12A5', 41, N'P10', N'2018-2019')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L011', N'12A1', 40, N'P11', N'2019-2020')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L012', N'12A2', 37, N'P12', N'2019-2020')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L013', N'12A3', 40, N'P13', N'2019-2020')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L014', N'12A4', 35, N'P14', N'2019-2020')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop], [SiSo], [MaPhong], [ThoiGian]) VALUES (N'L015', N'12A5', 42, N'P15', N'2019-2020')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH001', N'Toán', N'Đạt       ', N'B001')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH002', N'Văn', N'Đạt       ', N'B002')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH003', N'Anh', N'Đạt       ', N'B003')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH004', N'Lý', N'Đạt       ', N'B004')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH005', N'Hoá', N'Đạt       ', N'B005')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH006', N'Sinh', N'Đạt       ', N'B006')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH007', N'Địa', N'Đạt       ', N'B007')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH008', N'GDCD', N'Đạt       ', N'B008')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH009', N'Công nghệ', N'Đạt       ', N'B009')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH010', N'Lịch Sử', N'Đạt       ', N'B010')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH011', N'Hoá', N'Đạt       ', N'B011')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH012', N'Toán', N'Rớt       ', N'B012')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH013', N'Toán', N'Đạt       ', N'B013')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH014', N'Văn', N'Đạt       ', N'B014')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH015', N'Anh', N'Đạt       ', N'B015')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH016', N'Sinh', N'Đạt       ', N'B016')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH017', N'Địa', N'Đạt       ', N'B017')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH018', N'Lý', N'Đạt       ', N'B018')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH019', N'Lịch Sử', N'Rớt       ', N'B019')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [KetQua], [MaBangDiemMonHoc]) VALUES (N'MH020', N'Văn', N'Đạt       ', N'B020')
INSERT [dbo].[NienKhoa] ([ThoiGian]) VALUES (N'2014-2015')
INSERT [dbo].[NienKhoa] ([ThoiGian]) VALUES (N'2015-2016')
INSERT [dbo].[NienKhoa] ([ThoiGian]) VALUES (N'2016-2017')
INSERT [dbo].[NienKhoa] ([ThoiGian]) VALUES (N'2017-2018')
INSERT [dbo].[NienKhoa] ([ThoiGian]) VALUES (N'2018-2019')
INSERT [dbo].[NienKhoa] ([ThoiGian]) VALUES (N'2019-2020')
INSERT [dbo].[NienKhoa] ([ThoiGian]) VALUES (N'2020-2021')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2014-2015', N'P01')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2014-2015', N'P02')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2014-2015', N'P03')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2014-2015', N'P08')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2014-2015', N'P09')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2015-2016', N'P04')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2015-2016', N'P07')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2015-2016', N'P12')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2015-2016', N'P14')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2015-2016', N'P15')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2017-2018', N'P01')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2017-2018', N'P03')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2017-2018', N'P05')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2017-2018', N'P07')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2017-2018', N'P08')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2017-2018', N'P09')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2017-2018', N'P15')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2018-2019', N'P06')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2018-2019', N'P07')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2018-2019', N'P09')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2019-2020', N'P02')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2019-2020', N'P05')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2019-2020', N'P07')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2019-2020', N'P10')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2019-2020', N'P11')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2019-2020', N'P12')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2019-2020', N'P13')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2019-2020', N'P14')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2020-2021', N'P01')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2020-2021', N'P02')
INSERT [dbo].[NK_PH] ([ThoiGian], [MaPhong]) VALUES (N'2020-2021', N'P15')
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P01', N'1', 40)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P02', N'2', 40)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P03', N'3', 40)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P04', N'4', 38)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P05', N'5', 42)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P06', N'6', 35)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P07', N'7', 36)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P08', N'8', 36)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P09', N'9', 40)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P10', N'10', 42)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P11', N'11', 42)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P12', N'12', 38)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P13', N'13', 40)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P14', N'14', 35)
INSERT [dbo].[PhongHoc] ([MaPhong], [SoPhong], [SucChua]) VALUES (N'P15', N'15', 42)
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Kim', N'Ninh Thuận', N'Nữ        ', 42, N'Mẹ                  ', 357023156, N'HS001')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Hồng', N'Bình Định', N'Nữ        ', 40, N'Mẹ                  ', 351478923, N'HS002')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Hùng', N'Hồ Chí Minh', N'Nam       ', 45, N'Bố                  ', 351269222, N'HS003')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Thảo', N'Nghệ An', N'Nữ        ', 35, N'Mẹ                  ', 312556548, N'HS004')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Thoa', N'Ninh Thuận', N'Nữ        ', 27, N'Chị                 ', 351426985, N'HS005')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Huệ', N'Bình Thuận', N'Nữ        ', 35, N'Mẹ                  ', 351224447, N'HS006')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Nam', N'Huế', N'Nam       ', 28, N'Anh trai            ', 356699213, N'HS007')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Thoa', N'Ninh Thuận', N'Nữ        ', 36, N'Mẹ                  ', 355789411, N'HS008')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Dũng', N'Bình Phước', N'Nam       ', 48, N'Bố                  ', 354881266, N'HS009')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Thuỷ', N'Thái Bình', N'Nữ        ', 45, N'Mẹ                  ', 356221498, N'HS010')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Kiên', N'Bình Thuận', N'Nam       ', 49, N'Bố                  ', 351200642, N'HS011')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Quân', N'Bình Định', N'Nam       ', 45, N'Bố                  ', 350221036, N'HS012')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Thuỷ', N'Nính Thuận', N'Nữ        ', 40, N'Mẹ                  ', 350129907, N'HS013')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Ngân', N'Nghệ An', N'Nữ        ', 38, N'Mẹ                  ', 350366079, N'HS014')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Anh', N'Hải Phòng', N'Nữ        ', 36, N'Mẹ                  ', 354160575, N'HS015')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Kim', N'Hồ Chí Minh', N'Nữ        ', 28, N'Chị                 ', 351020379, N'HS016')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Tấn', N'Vũng Tàu', N'Nam       ', 41, N'Bố                  ', 350020207, N'HS017')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Huệ', N'Ninh Thuận', N'Nữ        ', 40, N'Mẹ                  ', 351950544, N'HS018')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Thuý', N'Thanh Hoá', N'Nữ        ', 45, N'Mẹ                  ', 356662021, N'HS019')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Thái', N'Ninh Thuận', N'Nam       ', 30, N'Anh trai            ', 350201990, N'HS020')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Huyền', N'Thái Nguyên', N'Nữ        ', 30, N'Chị                 ', 359784036, N'HS021')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Trang', N'Nghệ An', N'Nữ        ', 43, N'Mẹ                  ', 351069723, N'HS022')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Quỳnh', N'Đà Nẵng', N'Nữ        ', 40, N'Mẹ                  ', 350124795, N'HS023')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Thơ', N'Đà Lạt', N'Nữ        ', 41, N'Mẹ                  ', 350126495, N'HS024')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Tuấn', N'Sapa', N'Nam       ', 45, N'Bố                  ', 350123064, N'HS025')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Linh', N'Đồng Tháp', N'Nữ        ', 37, N'Chị                 ', 351402697, N'HS026')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Cát', N'Bình Thuận', N'Nữ        ', 43, N'Mẹ                  ', 350216237, N'HS027')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Trang', N'Vũng Tàu', N'Nữ        ', 47, N'Mẹ                  ', 364021359, N'HS028')
INSERT [dbo].[ThanNhan] ([Ten], [DiaChi], [GioiTinh], [Tuoi], [MoiQuanHe], [SoDienThoai], [MaHocSinh]) VALUES (N'Thiên', N'Vũng Tàu', N'Nam       ', 25, N'Anh trai            ', 350216892, N'HS029')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L001', N'HS001')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L001', N'HS009')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L001', N'HS011')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L001', N'HS017')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L001', N'HS027')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L002', N'HS002')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L002', N'HS026')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L003', N'HS003')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L003', N'HS025')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L004', N'HS006')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L004', N'HS023')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L005', N'HS005')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L005', N'HS028')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L006', N'HS009')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L007', N'HS004')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L008', N'HS010')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L009', N'HS012')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L009', N'HS024')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L010', N'HS007')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L010', N'HS008')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L010', N'HS022')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L011', N'HS011')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L011', N'HS017')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L011', N'HS018')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L012', N'HS012')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L013', N'HS014')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L014', N'HS015')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L014', N'HS019')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L015', N'HS013')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L015', N'HS020')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L015', N'HS021')
INSERT [dbo].[Thuoc] ([MaLop], [MaHocSinh]) VALUES (N'L015', N'HS029')
ALTER TABLE [dbo].[Day]  WITH CHECK ADD FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[Day]  WITH CHECK ADD FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[DuocDayBoi]  WITH CHECK ADD FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[DuocDayBoi]  WITH CHECK ADD FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[HanhKiem]  WITH CHECK ADD  CONSTRAINT [FK_HanhKiemThoiGian] FOREIGN KEY([ThoiGian])
REFERENCES [dbo].[NienKhoa] ([ThoiGian])
GO
ALTER TABLE [dbo].[HanhKiem] CHECK CONSTRAINT [FK_HanhKiemThoiGian]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HanhKiemHocSinh] FOREIGN KEY([MaHanhKiem])
REFERENCES [dbo].[HanhKiem] ([MaHanhKiem])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HanhKiemHocSinh]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_LopHocHocSinh] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_LopHocHocSinh]
GO
ALTER TABLE [dbo].[HS_BDMH]  WITH CHECK ADD FOREIGN KEY([MaBangDiemMonHoc])
REFERENCES [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc])
GO
ALTER TABLE [dbo].[HS_BDMH]  WITH CHECK ADD FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[HS_MH]  WITH CHECK ADD FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[HS_MH]  WITH CHECK ADD FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[LH_BDMH]  WITH CHECK ADD FOREIGN KEY([MaBangDiemMonHoc])
REFERENCES [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc])
GO
ALTER TABLE [dbo].[LH_BDMH]  WITH CHECK ADD FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PhongHoc] ([MaPhong])
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD FOREIGN KEY([ThoiGian])
REFERENCES [dbo].[NienKhoa] ([ThoiGian])
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD FOREIGN KEY([MaBangDiemMonHoc])
REFERENCES [dbo].[BangDiemMonHoc] ([MaBangDiemMonHoc])
GO
ALTER TABLE [dbo].[NK_PH]  WITH CHECK ADD FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PhongHoc] ([MaPhong])
GO
ALTER TABLE [dbo].[NK_PH]  WITH CHECK ADD FOREIGN KEY([ThoiGian])
REFERENCES [dbo].[NienKhoa] ([ThoiGian])
GO
ALTER TABLE [dbo].[ThanNhan]  WITH CHECK ADD FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
GO
USE [master]
GO
ALTER DATABASE [QUANLIHOCSINH] SET  READ_WRITE 
GO

