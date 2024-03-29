

USE [BTL]
GO
/****** Object:  Table [dbo].[account]    Script Date: 17/05/2022 9:50:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[username] [nvarchar](50) NOT NULL,
	[pass] [nvarchar](50) NOT NULL,
	[display_name] [nvarchar](50) NOT NULL,
	[isAdmin] [bit] NOT NULL,
 CONSTRAINT [PK__login_us__B4B2805408AF5DF7] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDB]    Script Date: 17/05/2022 9:50:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDB](
	[smahdb] [nchar](6) NOT NULL,
	[smasp] [nchar](6) NOT NULL,
	[isoluong] [int] NULL,
	[fgiamgia] [float] NULL,
	[fdongian] [float] NULL,
	[fthanhtien] [float] NULL,
 CONSTRAINT [PK_ChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[smahdb] ASC,
	[smasp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDN]    Script Date: 17/05/2022 9:50:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDN](
	[smahdn] [nchar](6) NOT NULL,
	[smasp] [nchar](6) NOT NULL,
	[isoluong] [int] NULL,
	[shangsx] [nchar](50) NULL,
	[fdongian] [float] NULL,
	[fthanhtien] [float] NULL,
 CONSTRAINT [PK_ChiTietHDN] PRIMARY KEY CLUSTERED 
(
	[smahdn] ASC,
	[smasp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hangsx]    Script Date: 17/05/2022 9:50:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hangsx](
	[smahangsx] [nchar](6) NOT NULL,
	[shangsx] [nchar](50) NULL,
 CONSTRAINT [PK__Hangsx__DD4735E82EB0C74F] PRIMARY KEY CLUSTERED 
(
	[smahangsx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 17/05/2022 9:50:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[smahdb] [nchar](6) NOT NULL,
	[dngayban] [datetime] NULL,
	[smakh] [nchar](6) NULL,
	[smanv] [nvarchar](50) NULL,
	[ftongtien] [float] NULL,
 CONSTRAINT [PK__HoaDonBa__7A10AE2189D56780] PRIMARY KEY CLUSTERED 
(
	[smahdb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 17/05/2022 9:50:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[smahdn] [nchar](6) NOT NULL,
	[smanv] [nvarchar](50) NULL,
	[dngaynhap] [datetime] NULL,
	[ftongtien] [float] NULL,
	[smancc] [nchar](6) NULL,
 CONSTRAINT [PK__HoaDonNh__7A10AE2D85918090] PRIMARY KEY CLUSTERED 
(
	[smahdn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 17/05/2022 9:50:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[smakh] [nchar](6) NOT NULL,
	[shotenkh] [nvarchar](60) NOT NULL,
	[sdiachikh] [nvarchar](100) NOT NULL,
	[ssdtkh] [nvarchar](150) NULL,
 CONSTRAINT [PK__KhachHan__0655F67CB31F1F2D] PRIMARY KEY CLUSTERED 
(
	[smakh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 17/05/2022 9:50:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[smalsp] [nchar](6) NOT NULL,
	[stenloai] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK__LoaiSanP__85DB3B7A42AD2D25] PRIMARY KEY CLUSTERED 
(
	[smalsp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhacungcap]    Script Date: 17/05/2022 9:50:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhacungcap](
	[smancc] [nchar](6) NOT NULL,
	[stenncc] [nvarchar](100) NULL,
	[sdiachi] [nvarchar](100) NULL,
	[ssdt] [nvarchar](12) NULL,
 CONSTRAINT [PK__Nhacungc__7AA616A1D891602E] PRIMARY KEY CLUSTERED 
(
	[smancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 17/05/2022 9:50:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[smanv] [nvarchar](50) NOT NULL,
	[shotennv] [nvarchar](60) NOT NULL,
	[sdiachinv] [nvarchar](100) NOT NULL,
	[isdtnv] [nvarchar](150) NOT NULL,
	[sgioitinh] [nchar](10) NULL,
	[fluong] [float] NULL,
	[dngaysinh] [date] NULL,
 CONSTRAINT [PK__NhanVien__065613382A7AFBAD] PRIMARY KEY CLUSTERED 
(
	[smanv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 17/05/2022 9:50:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[smasp] [nchar](6) NOT NULL,
	[stensp] [nvarchar](30) NOT NULL,
	[isoluong] [int] NOT NULL,
	[fgianhap] [float] NOT NULL,
	[fgiaban] [float] NOT NULL,
	[smalsp] [nchar](6) NULL,
	[smahangsx] [nchar](6) NULL,
 CONSTRAINT [PK__SanPham__06563B9206A25707] PRIMARY KEY CLUSTERED 
(
	[smasp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([username], [pass], [display_name], [isAdmin]) VALUES (N'admin', N'admin', N'Ngọc Yến', 1)
INSERT [dbo].[account] ([username], [pass], [display_name], [isAdmin]) VALUES (N'user', N'user', N'User 1 not Admin', 0)
GO
INSERT [dbo].[ChiTietHDB] ([smahdb], [smasp], [isoluong], [fgiamgia], [fdongian], [fthanhtien]) VALUES (N'HDB001', N'SP0001', 2, 0, 15000, 30000)
INSERT [dbo].[ChiTietHDB] ([smahdb], [smasp], [isoluong], [fgiamgia], [fdongian], [fthanhtien]) VALUES (N'HDB001', N'SP0002', 2, 0, 15000, 30000)
INSERT [dbo].[ChiTietHDB] ([smahdb], [smasp], [isoluong], [fgiamgia], [fdongian], [fthanhtien]) VALUES (N'HDB002', N'SP0001', 2, 0, 15000, 30000)
INSERT [dbo].[ChiTietHDB] ([smahdb], [smasp], [isoluong], [fgiamgia], [fdongian], [fthanhtien]) VALUES (N'HDB002', N'SP0002', 2, 0, 15000, 30000)
GO
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN001', N'SP0001', 150, N'HSX001                                            ', 10000, 1500000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN003', N'SP0001', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN003', N'SP0002', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN003', N'SP0005', 16, N'HSX002                                            ', 10000, 160000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN004', N'SP0001', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN004', N'SP0002', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN004', N'SP0005', 16, N'HSX002                                            ', 10000, 160000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN005', N'SP0001', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN005', N'SP0002', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN005', N'SP0005', 16, N'HSX002                                            ', 10000, 160000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN006', N'SP0001', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN006', N'SP0002', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN006', N'SP0005', 16, N'HSX002                                            ', 10000, 160000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN007', N'SP0001', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN007', N'SP0002', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN007', N'SP0005', 16, N'HSX002                                            ', 10000, 160000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN008', N'SP0001', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN008', N'SP0002', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN008', N'SP0005', 16, N'HSX002                                            ', 10000, 160000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN009', N'SP0001', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN009', N'SP0002', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN009', N'SP0005', 16, N'HSX002                                            ', 10000, 160000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN010', N'SP0001', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN010', N'SP0002', 20, N'HSX001                                            ', 10000, 200000)
INSERT [dbo].[ChiTietHDN] ([smahdn], [smasp], [isoluong], [shangsx], [fdongian], [fthanhtien]) VALUES (N'HDN010', N'SP0005', 16, N'HSX002                                            ', 10000, 160000)
GO
INSERT [dbo].[Hangsx] ([smahangsx], [shangsx]) VALUES (N'HSX001', N'Coca-cola Co., Ltd                                ')
INSERT [dbo].[Hangsx] ([smahangsx], [shangsx]) VALUES (N'HSX002', N'Tổng công ty nước giải khát Sài Gòn - Sabeco      ')
INSERT [dbo].[Hangsx] ([smahangsx], [shangsx]) VALUES (N'HSX003', N'Nhà máy bia Thăng Long                            ')
INSERT [dbo].[Hangsx] ([smahangsx], [shangsx]) VALUES (N'HSX004', N'Nhà máy bia Huế Huda                              ')
INSERT [dbo].[Hangsx] ([smahangsx], [shangsx]) VALUES (N'HSX005', N'Nhà máy bia miền Trung - Larue                    ')
INSERT [dbo].[Hangsx] ([smahangsx], [shangsx]) VALUES (N'HSX006', N'Bánh kẹo Ohsi                                     ')
INSERT [dbo].[Hangsx] ([smahangsx], [shangsx]) VALUES (N'HSX007', N'Bánh kẹo King Ðô                                  ')
INSERT [dbo].[Hangsx] ([smahangsx], [shangsx]) VALUES (N'HSX008', N'Bánh kẹo Bibica                                   ')
INSERT [dbo].[Hangsx] ([smahangsx], [shangsx]) VALUES (N'HSX009', N'Bánh kẹo hải hà                                   ')
INSERT [dbo].[Hangsx] ([smahangsx], [shangsx]) VALUES (N'HSX010', N'Bánh kẹo Hà Nội                                   ')
GO
INSERT [dbo].[HoaDonBan] ([smahdb], [dngayban], [smakh], [smanv], [ftongtien]) VALUES (N'HDB001', CAST(N'2022-05-16T00:00:00.000' AS DateTime), N'KH0001', N'NV001                                             ', 60000)
INSERT [dbo].[HoaDonBan] ([smahdb], [dngayban], [smakh], [smanv], [ftongtien]) VALUES (N'HDB002', CAST(N'2022-03-01T00:00:00.000' AS DateTime), N'KH0002', N'NV001                                             ', 150000)
GO
INSERT [dbo].[HoaDonNhap] ([smahdn], [smanv], [dngaynhap], [ftongtien], [smancc]) VALUES (N'HDN001', N'NV001', CAST(N'2022-05-17T00:00:00.000' AS DateTime), 1500000, N'NCC001')
INSERT [dbo].[HoaDonNhap] ([smahdn], [smanv], [dngaynhap], [ftongtien], [smancc]) VALUES (N'HDN002', N'NV002', CAST(N'2022-05-17T00:00:00.000' AS DateTime), 2000000, N'NCC002')
INSERT [dbo].[HoaDonNhap] ([smahdn], [smanv], [dngaynhap], [ftongtien], [smancc]) VALUES (N'HDN003', N'NV001', CAST(N'2022-05-17T00:00:00.000' AS DateTime), 560000, N'NCC003')
INSERT [dbo].[HoaDonNhap] ([smahdn], [smanv], [dngaynhap], [ftongtien], [smancc]) VALUES (N'HDN004', N'NV002', CAST(N'2022-05-17T00:00:00.000' AS DateTime), 790000, N'NCC004')
INSERT [dbo].[HoaDonNhap] ([smahdn], [smanv], [dngaynhap], [ftongtien], [smancc]) VALUES (N'HDN005', N'NV001', CAST(N'2022-05-17T00:00:00.000' AS DateTime), 930000, N'NCC005')
INSERT [dbo].[HoaDonNhap] ([smahdn], [smanv], [dngaynhap], [ftongtien], [smancc]) VALUES (N'HDN006', N'NV002', CAST(N'2022-05-17T00:00:00.000' AS DateTime), 2000000, N'NCC006')
INSERT [dbo].[HoaDonNhap] ([smahdn], [smanv], [dngaynhap], [ftongtien], [smancc]) VALUES (N'HDN007', N'NV001', CAST(N'2022-05-17T00:00:00.000' AS DateTime), 5000000, N'NCC007')
INSERT [dbo].[HoaDonNhap] ([smahdn], [smanv], [dngaynhap], [ftongtien], [smancc]) VALUES (N'HDN008', N'NV002', CAST(N'2022-05-17T00:00:00.000' AS DateTime), 6000000, N'NCC008')
INSERT [dbo].[HoaDonNhap] ([smahdn], [smanv], [dngaynhap], [ftongtien], [smancc]) VALUES (N'HDN009', N'NV001', CAST(N'2022-05-17T00:00:00.000' AS DateTime), 7000000, N'NCC009')
INSERT [dbo].[HoaDonNhap] ([smahdn], [smanv], [dngaynhap], [ftongtien], [smancc]) VALUES (N'HDN010', N'NV002', CAST(N'2022-05-17T00:00:00.000' AS DateTime), 890000, N'NCC010')
GO
INSERT [dbo].[KhachHang] ([smakh], [shotenkh], [sdiachikh], [ssdtkh]) VALUES (N'KH0001', N'Chan Yeon', N'Hà nội', N'0909090909')
INSERT [dbo].[KhachHang] ([smakh], [shotenkh], [sdiachikh], [ssdtkh]) VALUES (N'KH0002', N'Yeon Chan', N'Hà nội', N'0909090909')
INSERT [dbo].[KhachHang] ([smakh], [shotenkh], [sdiachikh], [ssdtkh]) VALUES (N'KH0003', N'Lee Gà Mờ', N'Hà nội', N'0901090901')
INSERT [dbo].[KhachHang] ([smakh], [shotenkh], [sdiachikh], [ssdtkh]) VALUES (N'KH0004', N'Naruto                                                      ', N'Thuong Tin                                                                                          ', N'0901030405')
GO
INSERT [dbo].[LoaiSanPham] ([smalsp], [stenloai]) VALUES (N'LSP001', N'Nước ngọt')
INSERT [dbo].[LoaiSanPham] ([smalsp], [stenloai]) VALUES (N'LSP002', N'Bánh kẹo')
GO
INSERT [dbo].[Nhacungcap] ([smancc], [stenncc], [sdiachi], [ssdt]) VALUES (N'NCC001', N'Nhà cung cấp 1', N'Ha Noi', N'02400000011')
INSERT [dbo].[Nhacungcap] ([smancc], [stenncc], [sdiachi], [ssdt]) VALUES (N'NCC002', N'Nhà cung cấp 2', N'Ha Noi', N'02400000012')
INSERT [dbo].[Nhacungcap] ([smancc], [stenncc], [sdiachi], [ssdt]) VALUES (N'NCC003', N'Nhà cung cấp 3', N'Ha Noi', N'02400000013 ')
INSERT [dbo].[Nhacungcap] ([smancc], [stenncc], [sdiachi], [ssdt]) VALUES (N'NCC004', N'Nhà cung cấp 4', N'Ha Noi', N'02400000014')
INSERT [dbo].[Nhacungcap] ([smancc], [stenncc], [sdiachi], [ssdt]) VALUES (N'NCC005', N'Nhà cung cấp 5', N'Ha Noi', N'02400000015')
INSERT [dbo].[Nhacungcap] ([smancc], [stenncc], [sdiachi], [ssdt]) VALUES (N'NCC006', N'Nhà cung cấp 6', N'Ha Noi', N'02400000016')
INSERT [dbo].[Nhacungcap] ([smancc], [stenncc], [sdiachi], [ssdt]) VALUES (N'NCC007', N'Nhà cung cấp 7', N'Ha Noi', N'02400000017')
INSERT [dbo].[Nhacungcap] ([smancc], [stenncc], [sdiachi], [ssdt]) VALUES (N'NCC008', N'Nhà cung cấp 8', N'Ha Noi', N'02400000018')
INSERT [dbo].[Nhacungcap] ([smancc], [stenncc], [sdiachi], [ssdt]) VALUES (N'NCC009', N'Nhà cung cấp 9', N'Ha Noi', N'02400000019')
INSERT [dbo].[Nhacungcap] ([smancc], [stenncc], [sdiachi], [ssdt]) VALUES (N'NCC010', N'Nhà cung cấp 10', N'Ha Noi', N'02400000020')
GO
INSERT [dbo].[NhanVien] ([smanv], [shotennv], [sdiachinv], [isdtnv], [sgioitinh], [fluong], [dngaysinh]) VALUES (N'NV001', N'Nhan vien 1', N'Ha Noi', N'0909090909', N'Nam       ', 120, CAST(N'1990-05-05' AS Date))
INSERT [dbo].[NhanVien] ([smanv], [shotennv], [sdiachinv], [isdtnv], [sgioitinh], [fluong], [dngaysinh]) VALUES (N'NV002', N'Nguyen Van A', N'HN', N'0909090909', N'Nam       ', 121212, CAST(N'2000-05-16' AS Date))
GO
INSERT [dbo].[SanPham] ([smasp], [stensp], [isoluong], [fgianhap], [fgiaban], [smalsp], [smahangsx]) VALUES (N'SP0001', N'Nước Coca-cola', 1000, 10000, 15000, N'LSP001', N'HSX001')
INSERT [dbo].[SanPham] ([smasp], [stensp], [isoluong], [fgianhap], [fgiaban], [smalsp], [smahangsx]) VALUES (N'SP0002', N'Nước Pepsi', 1000, 10000, 15000, N'LSP001', N'HSX001')
INSERT [dbo].[SanPham] ([smasp], [stensp], [isoluong], [fgianhap], [fgiaban], [smalsp], [smahangsx]) VALUES (N'SP0003', N'Fanta', 1000, 10000, 15000, N'LSP001', N'HSX001')
INSERT [dbo].[SanPham] ([smasp], [stensp], [isoluong], [fgianhap], [fgiaban], [smalsp], [smahangsx]) VALUES (N'SP0004', N'7Up', 1000, 10000, 10000, N'LSP001', N'HSX001')
INSERT [dbo].[SanPham] ([smasp], [stensp], [isoluong], [fgianhap], [fgiaban], [smalsp], [smahangsx]) VALUES (N'SP0005', N'Sài gòn Special', 1000, 10000, 10000, N'LSP001', N'HSX002')
INSERT [dbo].[SanPham] ([smasp], [stensp], [isoluong], [fgianhap], [fgiaban], [smalsp], [smahangsx]) VALUES (N'SP0006', N'Thăng Long', 1000, 10000, 10000, N'LSP001', N'HSX003')
INSERT [dbo].[SanPham] ([smasp], [stensp], [isoluong], [fgianhap], [fgiaban], [smalsp], [smahangsx]) VALUES (N'SP0007', N'Huda', 1000, 10000, 10000, N'LSP001', N'HSX004')
INSERT [dbo].[SanPham] ([smasp], [stensp], [isoluong], [fgianhap], [fgiaban], [smalsp], [smahangsx]) VALUES (N'SP0008', N'Bia Larue', 1000, 10000, 10000, N'LSP001', N'HSX005')
INSERT [dbo].[SanPham] ([smasp], [stensp], [isoluong], [fgianhap], [fgiaban], [smalsp], [smahangsx]) VALUES (N'SP0009', N'Banh keo 1', 1000, 10000, 10000, N'LSP002', N'HSX006')
INSERT [dbo].[SanPham] ([smasp], [stensp], [isoluong], [fgianhap], [fgiaban], [smalsp], [smahangsx]) VALUES (N'SP0010', N'Banh keo 2', 1000, 10000, 10000, N'LSP002', N'HSX007')
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHD__smahd__32E0915F] FOREIGN KEY([smahdb])
REFERENCES [dbo].[HoaDonBan] ([smahdb])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [FK__ChiTietHD__smahd__32E0915F]
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHD__smasp__33D4B598] FOREIGN KEY([smasp])
REFERENCES [dbo].[SanPham] ([smasp])
GO
ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [FK__ChiTietHD__smasp__33D4B598]
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHD__smahd__35BCFE0A] FOREIGN KEY([smahdn])
REFERENCES [dbo].[HoaDonNhap] ([smahdn])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHDN] CHECK CONSTRAINT [FK__ChiTietHD__smahd__35BCFE0A]
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHD__smasp__36B12243] FOREIGN KEY([smasp])
REFERENCES [dbo].[SanPham] ([smasp])
GO
ALTER TABLE [dbo].[ChiTietHDN] CHECK CONSTRAINT [FK__ChiTietHD__smasp__36B12243]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK__HoaDonBan__smakh__2D27B809] FOREIGN KEY([smakh])
REFERENCES [dbo].[KhachHang] ([smakh])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK__HoaDonBan__smakh__2D27B809]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK__HoaDonBan__smanv__2E1BDC42] FOREIGN KEY([smanv])
REFERENCES [dbo].[NhanVien] ([smanv])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK__HoaDonBan__smanv__2E1BDC42]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK__HoaDonNha__smanc__3C69FB99] FOREIGN KEY([smancc])
REFERENCES [dbo].[Nhacungcap] ([smancc])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK__HoaDonNha__smanc__3C69FB99]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK__HoaDonNha__smanv__30F848ED] FOREIGN KEY([smanv])
REFERENCES [dbo].[NhanVien] ([smanv])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK__HoaDonNha__smanv__30F848ED]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__smahang__398D8EEE] FOREIGN KEY([smahangsx])
REFERENCES [dbo].[Hangsx] ([smahangsx])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__smahang__398D8EEE]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__smalsp__2A4B4B5E] FOREIGN KEY([smalsp])
REFERENCES [dbo].[LoaiSanPham] ([smalsp])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__smalsp__2A4B4B5E]
GO
/****** Object:  StoredProcedure [dbo].[pcdcthdb]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdcthdb]
	@mhdb nchar(50),
	@tsp nchar(60)
AS
	select ChiTietHDB.smahdb,SanPham.stensp,ChiTietHDB.isoluong,ChiTietHDB.fgiamgia,SanPham.fgiaban,ChiTietHDB.fthanhtien
from ChiTietHDB,SanPham
where ChiTietHDB.smasp=SanPham.smasp and ChiTietHDB.smahdb=@mhdb and SanPham.stensp=@tsp
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdcthdn]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdcthdn]
	@hdn nchar(50),
	@tsp nchar(100)
AS
	select ChiTietHDN.smahdn,SanPham.stensp,ChiTietHDN.isoluong,ChiTietHDN.fdongian,Hangsx.shangsx,ChiTietHDN.fthanhtien 
	from ChiTietHDN,SanPham,Hangsx 
	where ChiTietHDN.smasp=SanPham.smasp and SanPham.smahangsx=Hangsx.smahangsx and ChiTietHDN.smahdn=@hdn and SanPham.stensp=@tsp
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdhangsx]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdhangsx]
	@smh nchar(50)
AS
	SELECT *
	from Hangsx
	where smahangsx=@smh
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdhdb]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdhdb]
	@hdb nchar(50)
AS
	select HoaDonBan.smahdb,HoaDonBan.dngayban,KhachHang.shotenkh,NhanVien.shotennv,SUM(ChiTietHDB.isoluong*SanPham.fgiaban-ChiTietHDB.fgiamgia) as 'Tổng tiền'
from HoaDonBan,KhachHang,NhanVien,ChiTietHDB,SanPham
where HoaDonBan.smakh=KhachHang.smakh and HoaDonBan.smanv=NhanVien.smanv 
and HoaDonBan.smahdb=ChiTietHDB.smahdb and HoaDonBan.smahdb=@hdb
group by HoaDonBan.smahdb,HoaDonBan.dngayban,KhachHang.shotenkh,NhanVien.shotennv
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdhdn]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdhdn]
	@hdn nchar(50)
AS
	select HoaDonNhap.smahdn, NhanVien.shotennv, HoaDonNhap.dngaynhap, Nhacungcap.stenncc, HoaDonNhap.ftongtien 
	from HoaDonNhap,NhanVien,Nhacungcap 
	where HoaDonNhap.smanv=NhanVien.smanv and HoaDonNhap.smancc=Nhacungcap.smancc and HoaDonNhap.smahdn=@hdn
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdkhachhang]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdkhachhang]
	@smkh nchar(50)
AS
	SELECT * from KhachHang
	where smakh=@smkh
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdloaisp]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdloaisp]
	@smal nchar(50)
AS
	SELECT * from LoaiSanPham where smalsp=@smal
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdncc]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdncc]
	@mncc nchar(50)
AS
	SELECT * 
	from Nhacungcap
	where smancc=@mncc
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdnv]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdnv]
	@smanv nchar(50)
AS
	SELECT * 
	FROM NhanVien
	WHERE smanv=@smanv
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdsanpham]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdsanpham]
	@smsp nchar(50)
AS
	SELECT SanPham.smasp,SanPham.stensp,SanPham.isoluong,SanPham.fgianhap,SanPham.fgiaban,LoaiSanPham.stenloai,Hangsx.shangsx
	From SanPham,LoaiSanPham,Hangsx
	where SanPham.smalsp=LoaiSanPham.smalsp 
	and SanPham.smahangsx=Hangsx.smahangsx
	and SanPham.smasp=@smsp
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdthemcthdb]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdthemcthdb]
	@smhd  nchar(50),
	@smsp nchar(50),
	@isl int,
	@fgg float,
	@fdg float,
	@ftt float
AS
	insert into ChiTietHDB(smahdb,smasp,isoluong,fgiamgia,fdongian,fthanhtien)
	values (@smhd,@smsp,@isl,@fgg,@fdg,@ftt)
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdthemcthdn]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdthemcthdn]
	@mhdn nchar(50),
	@msp nchar(50),
	@sl int,
	@dg float,
	@hsx nchar(100),
	@tt float
AS
	insert into ChiTietHDN(smahdn,smasp,isoluong,fdongian,shangsx,fthanhtien)
	values (@mhdn,@msp,@sl,@dg,@hsx,@tt)
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdthemhang]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdthemhang]
	@smh nchar(50),
	@stenh nchar(100)
AS
	insert into Hangsx(smahangsx,shangsx) values (@smh,@stenh)
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdthemhdb]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdthemhdb]
	@mhdb nchar(50),
	@dnb datetime,
	@smkh nchar(50),
	@smnv nchar(50)
AS
	insert into HoaDonBan(smahdb,dngayban,smakh,smanv)
	values (@mhdb,@dnb,@smkh,@smnv)
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdthemhdn]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdthemhdn]
	@hdn nchar(50),
	@mnv nchar(50),
	@nn datetime,
	@ncc nchar(50),
	@tt float
AS
	insert into HoaDonNhap(smahdn,smanv,dngaynhap,smancc,ftongtien)
	values (@hdn,@mnv,@nn,@ncc,@tt)
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdthemkh]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdthemkh]
	@smkh nchar(50),
	@stenkh nchar(60),
	@sdc nchar(100),
	@ssdt nvarchar(150)
AS
	insert into KhachHang(smakh,shotenkh,sdiachikh,ssdtkh)
	values (@smkh,@stenkh,@sdc,@ssdt)
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdthemloaisp]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdthemloaisp]
	@smal nchar(50),
	@stenl nchar(100)
AS
	insert into LoaiSanPham(smalsp,stenloai) values (@smal,@stenl)
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdthemncc]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdthemncc]
	@mncc nchar(50),
	@tncc nchar(100),
	@dc nchar(100),
	@sdt nchar(100)
AS
	insert into Nhacungcap(smancc,stenncc,sdiachi,ssdt)
	values (@mncc,@tncc,@dc,@sdt)
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdthemnv]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdthemnv]
	@smnv nvarchar(50),
	@sht nchar(60),
	@sdiachi nchar(100),
	@sgioitinh nchar(10),
	@isdt nvarchar(150),
	@fluong float,
	@dns date
AS
	insert into NhanVien(smanv,shotennv,sgioitinh,sdiachinv,isdtnv, dngaysinh, fluong)
		values (@smnv,@sht,@sgioitinh,@sdiachi,@isdt,@dns, @fluong)
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[pcdthemsp]    Script Date: 17/05/2022 9:50:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pcdthemsp]
	@smsp nchar(50),
	@stsp nchar(100),
	@isl int,
	@fgn float,
	@fgb float,
	@smlsp nchar(50),
	@smhsx nchar(50)
AS
	insert into SanPham(smasp,stensp,isoluong,fgianhap,fgiaban,smalsp,smahangsx)
	values (@smsp,@stsp,@isl,@fgn,@fgb,@smlsp,@smhsx)
RETURN 0
GO
