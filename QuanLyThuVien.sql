USE [QuanLyThuVien]
GO
/****** Object:  Table [dbo].[BanSaoTaiLieu]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanSaoTaiLieu](
	[MaDangKyCaBiet] [varchar](20) NOT NULL,
	[ID_PhienBan] [int] NULL,
	[ID_Tang] [int] NULL,
	[TinhTrang] [nvarchar](100) NULL,
	[NgayNhap] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDangKyCaBiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuMuon]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuMuon](
	[MaChiTiet] [varchar](100) NOT NULL,
	[ID_PhieuMuon] [int] NULL,
	[MaTL] [varchar](20) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[NgayTraSach] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucNangCon]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucNangCon](
	[ID_ChucNang] [int] IDENTITY(1,1) NOT NULL,
	[ID_PhanHe] [int] NULL,
	[TenChucNang] [nvarchar](200) NULL,
	[url] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[ID_ChuDe] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ChuDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangKyDocGia]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyDocGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SoCCCD_TheHocSinh] [varchar](20) NULL,
	[HoTen] [nvarchar](200) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[DoiTuong] [nvarchar](100) NULL,
	[DonVi] [nvarchar](200) NULL,
	[ChucVu] [nvarchar](200) NULL,
	[Email] [varchar](100) NULL,
	[DienThoai] [varchar](11) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[MatKhau] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDocGia] [varchar](20) NOT NULL,
	[ID_DoiTuong] [int] NULL,
	[TenDocGia] [nvarchar](200) NULL,
	[DonVi] [nvarchar](200) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[CCCD] [varchar](12) NULL,
	[DienThoai] [varchar](11) NULL,
	[Email] [varchar](100) NULL,
	[KhoaHoc] [int] NULL,
	[SoDu] [bigint] NULL,
	[GhiChu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoiTuongDocGia]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoiTuongDocGia](
	[ID_DoiTuong] [int] IDENTITY(1,1) NOT NULL,
	[TenDoiTuong] [nvarchar](200) NULL,
	[SoLuongTaiLieu] [int] NULL,
	[SoNgay] [int] NULL,
	[SoLanGiaHan] [int] NULL,
	[SoNgayGiaHan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DoiTuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KeSach]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeSach](
	[ID_KS] [int] IDENTITY(1,1) NOT NULL,
	[MaKe] [varchar](20) NULL,
	[Tang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_KS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiLieu]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiLieu](
	[ID_Loai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID_NV] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [varchar](20) NULL,
	[HoTen] [nvarchar](200) NULL,
	[NgaySinh] [date] NULL,
	[ChucVu] [nvarchar](200) NULL,
	[CCCD] [varchar](12) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[Email] [varchar](100) NULL,
	[NgayVaoLam] [date] NULL,
	[DiaChi] [nvarchar](500) NULL,
	[TrinhDo] [nvarchar](200) NULL,
	[GhiChu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[ID_NXB] [int] IDENTITY(1,1) NOT NULL,
	[MaNhaXuatBan] [varchar](20) NULL,
	[TenNXB] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[QuocGia] [nvarchar](200) NULL,
	[DienThoai] [varchar](11) NULL,
	[NguoiDaiDien] [nvarchar](200) NULL,
	[Email] [varchar](100) NULL,
	[GhiChu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_NXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomNguoiDung]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomNguoiDung](
	[MaNhom] [varchar](20) NOT NULL,
	[TenNhom] [nvarchar](200) NULL,
	[GhiChu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanHe]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHe](
	[ID_PhanHe] [int] IDENTITY(1,1) NOT NULL,
	[TenPhanHe] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PhanHe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaNhomND] [varchar](20) NOT NULL,
	[ID_ChucNang] [int] NOT NULL,
	[CoQuyen] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhomND] ASC,
	[ID_ChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhienBanTaiLieu]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhienBanTaiLieu](
	[ID_PhienBan] [int] IDENTITY(1,1) NOT NULL,
	[ID_TaiLieu] [int] NULL,
	[ID_NhaXuatBan] [int] NULL,
	[NamXuatBan] [int] NULL,
	[SoTrang] [int] NULL,
	[ChieuRong] [int] NULL,
	[ChieuCao] [int] NULL,
	[AnhBia] [varchar](200) NULL,
	[AnhMobile] [varchar](200) NULL,
	[MoTa] [nvarchar](200) NULL,
	[ISBN_ISSN] [varchar](13) NULL,
	[GiaTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PhienBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[ID_PhieuMuon] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieuMuon] [varchar](100) NULL,
	[NgayTao] [datetime] NULL,
	[NgayHetHan] [datetime] NULL,
	[MaDocGia] [varchar](20) NULL,
	[ID_NhanVien] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[ID_TG] [int] IDENTITY(1,1) NOT NULL,
	[MaTacGia] [varchar](20) NULL,
	[TenTG] [nvarchar](200) NULL,
	[GhiChu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanNoiBo]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanNoiBo](
	[ID_NV] [int] NOT NULL,
	[MatKhau] [varchar](200) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[MaNhom] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiLieu]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiLieu](
	[ID_TL] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiLieu] [nvarchar](max) NULL,
	[KyHieuPhanLoai] [varchar](20) NULL,
	[LoaiTaiLieu] [int] NULL,
	[ChuDe] [int] NULL,
	[NgayNhap] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiLieu_TacGia]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiLieu_TacGia](
	[ID_TaiLieu] [int] NOT NULL,
	[ID_TacGia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TaiLieu] ASC,
	[ID_TacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tang]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tang](
	[ID_Tang] [int] IDENTITY(1,1) NOT NULL,
	[TenTang] [nvarchar](100) NULL,
	[ViTri] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Tang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheThuVien]    Script Date: 30-06-2024 10:28:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheThuVien](
	[MaDocGia] [varchar](20) NOT NULL,
	[MatKhau] [varchar](200) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiThucHien] [int] NULL,
	[NgayHetHan] [datetime] NULL,
	[TrangThai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000001', 6, 2, N'Đang cho mượn', CAST(N'2022-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000002', 6, 2, N'Đang cho mượn', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000003', 6, 2, N'Đang cho mượn', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000004', 6, 2, N'Đang cho mượn', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000005', 6, 2, N'Đang cho mượn', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000006', 6, 2, N'Không lưu thông', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000007', 6, 2, N'Đang cho mượn', CAST(N'2022-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000008', 6, 2, N'Sẵn có', CAST(N'2021-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000009', 6, 2, N'Đang cho mượn', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000010', 6, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000011', 6, 2, N'Sẵn có', CAST(N'2019-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000012', 6, 2, N'Sẵn có', CAST(N'2006-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000013', 6, 2, N'Đang cho mượn', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000014', 6, 2, N'Sẵn có', CAST(N'2015-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000015', 6, 2, N'Sẵn có', CAST(N'2001-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000016', 6, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100000017', 6, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100002513', 7, 4, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100002517', 7, 4, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100002518', 7, 4, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100002521', 7, 4, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100002522', 7, 4, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100002523', 7, 4, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100002527', 7, 4, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100002528', 7, 4, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100002531', 7, 4, N'Không lưu thông', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100002532', 7, 4, N'Đang cho mượn', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100021837', 5, 3, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100023537', 2, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100023538', 2, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100023539', 2, 2, N'Không lưu thông', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100023540', 2, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100023541', 2, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100024769', 5, 3, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031812', 1, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031813', 1, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031814', 1, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031815', 1, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031816', 1, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031817', 1, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031818', 1, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031819', 1, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031820', 1, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031821', 1, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031822', 1, 2, N'Sẵn có', CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031823', 1, 2, N'Sẵn có', CAST(N'2019-09-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031824', 1, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031825', 1, 2, N'Sẵn có', CAST(N'2020-12-20' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031826', 1, 2, N'Sẵn có', CAST(N'2024-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031827', 1, 2, N'Sẵn có', CAST(N'2022-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031828', 1, 2, N'Không lưu thông', CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031829', 1, 2, N'Sẵn có', CAST(N'2024-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031830', 1, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100031831', 1, 2, N'Sẵn có', CAST(N'2021-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100032948', 8, 1, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100032949', 8, 1, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100034088', 11, 1, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100034089', 11, 1, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100034177', 12, 1, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100034181', 12, 1, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100035729', 9, 1, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100035730', 9, 1, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100035780', 9, 1, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100036786', 3, 4, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100038674', 10, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100038675', 10, 2, N'Sẵn có', CAST(N'2002-12-19' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100038676', 10, 2, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100039098', 5, 3, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100039099', 5, 3, N'Sẵn có', CAST(N'2020-12-05' AS Date))
INSERT [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet], [ID_PhienBan], [ID_Tang], [TinhTrang], [NgayNhap]) VALUES (N'100039110', 4, 3, N'Đang cho mượn', CAST(N'2020-12-05' AS Date))
GO
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-1-0', 40, N'100000007', N'Đã trả', CAST(N'2024-06-15T16:44:04.230' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-41-0', 41, N'100000009', N'Đã trả', CAST(N'2024-06-15T16:44:27.847' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-42-0', 42, N'100023537', N'Đã trả', CAST(N'2024-06-15T16:49:08.147' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-43-0', 43, N'100023538', N'Đã trả', CAST(N'2024-06-15T22:29:23.847' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-44-0', 44, N'100023537', N'Đã trả', CAST(N'2024-06-15T17:58:53.687' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-45-0', 45, N'100000008', N'Đã trả', CAST(N'2024-06-15T17:26:04.303' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-46-0', 46, N'100000008', N'Đã trả', CAST(N'2024-06-15T17:26:25.483' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-47-0', 47, N'100000008', N'Đã trả', CAST(N'2024-06-15T17:37:49.583' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-47-1', 47, N'100002527', N'Đã trả', CAST(N'2024-06-15T17:37:53.677' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-48-0', 48, N'100031830', N'Đã trả', CAST(N'2024-06-15T17:37:59.147' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-49-0', 49, N'100000008', N'Đã trả', CAST(N'2024-06-15T22:29:28.487' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-50-0', 50, N'100000012', N'Đã trả', CAST(N'2024-06-15T22:26:54.357' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-51-0', 51, N'100000011', N'Đã trả', CAST(N'2024-06-15T22:29:32.967' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-52-0', 52, N'100000008', N'Đã trả', CAST(N'2024-06-16T10:51:38.780' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-53-0', 53, N'100031812', N'Đã trả', CAST(N'2024-06-17T09:03:21.423' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-54-0', 54, N'100031813', N'Đã trả', CAST(N'2024-06-17T09:03:34.987' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-55-0', 55, N'100000008', N'Đã trả', CAST(N'2024-06-25T17:40:53.953' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-55-1', 55, N'100000011', N'Đã trả', CAST(N'2024-06-17T10:18:25.680' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-55-2', 55, N'100021837', N'Đã trả', CAST(N'2024-06-17T10:18:47.223' AS DateTime))
INSERT [dbo].[ChiTietPhieuMuon] ([MaChiTiet], [ID_PhieuMuon], [MaTL], [TrangThai], [NgayTraSach]) VALUES (N'2001206901-56-0', 56, N'100000011', N'Đã trả', CAST(N'2024-06-25T17:41:56.417' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ChucNangCon] ON 

INSERT [dbo].[ChucNangCon] ([ID_ChucNang], [ID_PhanHe], [TenChucNang], [url]) VALUES (1, 1, N'Quản lý quỹ tiền', NULL)
INSERT [dbo].[ChucNangCon] ([ID_ChucNang], [ID_PhanHe], [TenChucNang], [url]) VALUES (2, 2, N'Quản lý độc giả', NULL)
INSERT [dbo].[ChucNangCon] ([ID_ChucNang], [ID_PhanHe], [TenChucNang], [url]) VALUES (3, 2, N'Quản lý mượn trả', N'QuanLyMuonTra')
INSERT [dbo].[ChucNangCon] ([ID_ChucNang], [ID_PhanHe], [TenChucNang], [url]) VALUES (4, 2, N'Quản lý đối tượng độc giả', NULL)
INSERT [dbo].[ChucNangCon] ([ID_ChucNang], [ID_PhanHe], [TenChucNang], [url]) VALUES (5, 3, N'Quản lý Người Dùng', N'QuanLyNguoiDung')
INSERT [dbo].[ChucNangCon] ([ID_ChucNang], [ID_PhanHe], [TenChucNang], [url]) VALUES (6, 3, N'Quản lý phân quyền', N'')
INSERT [dbo].[ChucNangCon] ([ID_ChucNang], [ID_PhanHe], [TenChucNang], [url]) VALUES (7, 3, N'Quản lý nhóm người dùng', NULL)
INSERT [dbo].[ChucNangCon] ([ID_ChucNang], [ID_PhanHe], [TenChucNang], [url]) VALUES (8, 4, N'Quản lý tài liệu', N'QuanLyTaiLieu')
INSERT [dbo].[ChucNangCon] ([ID_ChucNang], [ID_PhanHe], [TenChucNang], [url]) VALUES (9, 5, N'Thông tin tài khoản', NULL)
INSERT [dbo].[ChucNangCon] ([ID_ChucNang], [ID_PhanHe], [TenChucNang], [url]) VALUES (10, 5, N'Đăng xuất', NULL)
INSERT [dbo].[ChucNangCon] ([ID_ChucNang], [ID_PhanHe], [TenChucNang], [url]) VALUES (13, 4, N'Thanh lý tài liệu', NULL)
SET IDENTITY_INSERT [dbo].[ChucNangCon] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([ID_ChuDe], [TenChuDe]) VALUES (1, N'Sản phẩm từ bánh')
INSERT [dbo].[ChuDe] ([ID_ChuDe], [TenChuDe]) VALUES (2, N'Luật, Biện pháp an toàn')
INSERT [dbo].[ChuDe] ([ID_ChuDe], [TenChuDe]) VALUES (3, N'Hợp đồng kinh tế')
INSERT [dbo].[ChuDe] ([ID_ChuDe], [TenChuDe]) VALUES (4, N'Kỹ thuật môi trường')
INSERT [dbo].[ChuDe] ([ID_ChuDe], [TenChuDe]) VALUES (5, N'Thiết bị sấy, sấy khô')
INSERT [dbo].[ChuDe] ([ID_ChuDe], [TenChuDe]) VALUES (6, N'Công nghệ chế biến')
INSERT [dbo].[ChuDe] ([ID_ChuDe], [TenChuDe]) VALUES (8, N'Ngôn ngữ lập trình')
INSERT [dbo].[ChuDe] ([ID_ChuDe], [TenChuDe]) VALUES (9, N'Tây Ban Nha')
INSERT [dbo].[ChuDe] ([ID_ChuDe], [TenChuDe]) VALUES (10, N'Mỹ thuật')
INSERT [dbo].[ChuDe] ([ID_ChuDe], [TenChuDe]) VALUES (11, N'Kỹ năng sống')
INSERT [dbo].[ChuDe] ([ID_ChuDe], [TenChuDe]) VALUES (12, N'Thể thao')
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
GO
INSERT [dbo].[DocGia] ([MaDocGia], [ID_DoiTuong], [TenDocGia], [DonVi], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [DienThoai], [Email], [KhoaHoc], [SoDu], [GhiChu]) VALUES (N'2001206901', 3, N'Hồ Minh Hải', N'Đại học Công Thương', CAST(N'2002-12-08' AS Date), N'Nam', N'TP.HCM', N'079203038709', N'0909443987', N'hai@gmail.com', 2020, 1, N'')
INSERT [dbo].[DocGia] ([MaDocGia], [ID_DoiTuong], [TenDocGia], [DonVi], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [DienThoai], [Email], [KhoaHoc], [SoDu], [GhiChu]) VALUES (N'2001207178', 3, N'Nguyễn Thành Phát', N'Đại học Công Thương', CAST(N'2002-10-10' AS Date), N'Nam', N'TP.HCM', N'079967481099', N'0902987123', N'phat@gmail.com', 2021, 0, N'')
INSERT [dbo].[DocGia] ([MaDocGia], [ID_DoiTuong], [TenDocGia], [DonVi], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [DienThoai], [Email], [KhoaHoc], [SoDu], [GhiChu]) VALUES (N'2033178654', 1, N'Nguyễn Chính anh', N'Đại học Công Thương', CAST(N'2002-10-09' AS Date), N'Nam', N'TP.HCM 2', N'083302876112', N'0902988110', N'truc@gmail.com', 0, 0, N'')
INSERT [dbo].[DocGia] ([MaDocGia], [ID_DoiTuong], [TenDocGia], [DonVi], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [DienThoai], [Email], [KhoaHoc], [SoDu], [GhiChu]) VALUES (N'2033178900', 3, N'Trần Lê Tiến Vũ', N'11DHBM4', CAST(N'2004-05-06' AS Date), N'Nam', N'Hà Nội', N'083876985678', N'123456432', N'tv@gmail.com', 2021, NULL, NULL)
INSERT [dbo].[DocGia] ([MaDocGia], [ID_DoiTuong], [TenDocGia], [DonVi], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [DienThoai], [Email], [KhoaHoc], [SoDu], [GhiChu]) VALUES (N'2033178902', 3, N'Lê Hữu Toàn', N'11DHTH1', CAST(N'2002-12-03' AS Date), N'Nam', N'TPHCM', N'079756789032', N'0909443865', N'minhhai@gmail.com', 2020, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[DoiTuongDocGia] ON 

INSERT [dbo].[DoiTuongDocGia] ([ID_DoiTuong], [TenDoiTuong], [SoLuongTaiLieu], [SoNgay], [SoLanGiaHan], [SoNgayGiaHan]) VALUES (1, N'Giảng viên, viên chức trong trường', 4, 180, 0, 0)
INSERT [dbo].[DoiTuongDocGia] ([ID_DoiTuong], [TenDoiTuong], [SoLuongTaiLieu], [SoNgay], [SoLanGiaHan], [SoNgayGiaHan]) VALUES (2, N'Giảng viên thỉnh giảng', 2, 30, 1, 10)
INSERT [dbo].[DoiTuongDocGia] ([ID_DoiTuong], [TenDoiTuong], [SoLuongTaiLieu], [SoNgay], [SoLanGiaHan], [SoNgayGiaHan]) VALUES (3, N'Sinh viên, học viên', 3, 10, 2, 10)
INSERT [dbo].[DoiTuongDocGia] ([ID_DoiTuong], [TenDoiTuong], [SoLuongTaiLieu], [SoNgay], [SoLanGiaHan], [SoNgayGiaHan]) VALUES (4, N'Độc giả ngoài trường', 1, 10, 0, 0)
SET IDENTITY_INSERT [dbo].[DoiTuongDocGia] OFF
GO
SET IDENTITY_INSERT [dbo].[KeSach] ON 

INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (1, N'1001', 1)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (2, N'1002', 1)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (3, N'1003', 1)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (4, N'1004', 1)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (5, N'1005', 1)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (6, N'2001', 2)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (7, N'2002', 2)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (8, N'2003', 2)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (9, N'2004', 2)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (10, N'2005', 2)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (11, N'3001', 3)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (12, N'3002', 3)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (13, N'3003', 3)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (14, N'3004', 3)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (15, N'3005', 3)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (16, N'4001', 4)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (17, N'4002', 4)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (18, N'4003', 4)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (19, N'4004', 4)
INSERT [dbo].[KeSach] ([ID_KS], [MaKe], [Tang]) VALUES (20, N'4005', 4)
SET IDENTITY_INSERT [dbo].[KeSach] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiLieu] ON 

INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (9, N'Âm thanh')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (1, N'Bài báo')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (7, N'Bản đồ')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (2, N'CD - ROM')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (3, N'Computer file - Tập tin')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (4, N'Khóa luận')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (5, N'Luận án')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (6, N'Luận văn')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (10, N'NCKH cấp bộ')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (11, N'NCKH cấp nhà nước')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (12, N'NCKH cấp trường')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (13, N'Sách')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (14, N'Sách ngoại văn')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (15, N'Serial - Ấn phẩm định kỳ')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (16, N'Tài liệu')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (17, N'Tài liệu chính')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (8, N'Tài liệu hỗn hợp')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (18, N'Tài liệu nghe nhìn')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (19, N'Tài liệu nghe số')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (20, N'Tài liệu tham khảo')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (21, N'Tài liệu tham khảo chính')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (22, N'Văn bản pháp quy')
INSERT [dbo].[LoaiTaiLieu] ([ID_Loai], [TenLoai]) VALUES (23, N'Visual Material - Thiết bị, vật thể')
SET IDENTITY_INSERT [dbo].[LoaiTaiLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([ID_NV], [MaNhanVien], [HoTen], [NgaySinh], [ChucVu], [CCCD], [GioiTinh], [Email], [NgayVaoLam], [DiaChi], [TrinhDo], [GhiChu]) VALUES (1, N'GD001', N'Nguyễn Thị Thúy Hà', CAST(N'1980-12-03' AS Date), N'Giám đốc', N'012312312890', N'Nữ', N'hantt@hufi.edu.vn', CAST(N'2010-10-10' AS Date), N'TP.HCM', N'Thạc Sĩ', NULL)
INSERT [dbo].[NhanVien] ([ID_NV], [MaNhanVien], [HoTen], [NgaySinh], [ChucVu], [CCCD], [GioiTinh], [Email], [NgayVaoLam], [DiaChi], [TrinhDo], [GhiChu]) VALUES (2, N'TVV001', N'Nguyễn Văn Sáng', CAST(N'1982-10-05' AS Date), N'Thư viện viên', N'079203451876', N'Nam', N'sangnv@hufi.edu.vn', CAST(N'2011-10-28' AS Date), N'TP.HCM', N'Cử nhân', NULL)
INSERT [dbo].[NhanVien] ([ID_NV], [MaNhanVien], [HoTen], [NgaySinh], [ChucVu], [CCCD], [GioiTinh], [Email], [NgayVaoLam], [DiaChi], [TrinhDo], [GhiChu]) VALUES (3, N'TVV002', N'Ngô Thị Hải Yến', CAST(N'1985-12-05' AS Date), N'Thư viện viên', N'079312097856', N'Nữ', N'yenntn@hufi.edu.vn', CAST(N'2010-10-10' AS Date), N'TP.HCM', N'Cử nhân', NULL)
INSERT [dbo].[NhanVien] ([ID_NV], [MaNhanVien], [HoTen], [NgaySinh], [ChucVu], [CCCD], [GioiTinh], [Email], [NgayVaoLam], [DiaChi], [TrinhDo], [GhiChu]) VALUES (4, N'CV002', N'Trần Kim Châu', CAST(N'1985-12-05' AS Date), N'Chuyên viên', N'079312097856', N'Nữ', N'chautk@hufi.edu.vn', CAST(N'2015-03-03' AS Date), N'TP.HCM', N'Cử nhân', NULL)
INSERT [dbo].[NhanVien] ([ID_NV], [MaNhanVien], [HoTen], [NgaySinh], [ChucVu], [CCCD], [GioiTinh], [Email], [NgayVaoLam], [DiaChi], [TrinhDo], [GhiChu]) VALUES (5, N'NV001', N'Trần Thị Hằng', CAST(N'1983-12-25' AS Date), N'Nhân viên thư viện', N'079162015678', N'Nữ', N'hangttran@hufi.edu.vn', CAST(N'2008-11-17' AS Date), N'TP.HCM', N'Cử nhân', NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaXuatBan] ON 

INSERT [dbo].[NhaXuatBan] ([ID_NXB], [MaNhaXuatBan], [TenNXB], [DiaChi], [QuocGia], [DienThoai], [NguoiDaiDien], [Email], [GhiChu]) VALUES (1, N'KH_KT', N'Khoa học và kỹ thuật', N'Số 70 Trần Hưng Đạo, Hoàn Kiếm, Hà Nội', N'Việt Nam', N'02439422172', N'Bùi Minh Cường', N'nxbkhkt@hn.vnn.vn', NULL)
INSERT [dbo].[NhaXuatBan] ([ID_NXB], [MaNhaXuatBan], [TenNXB], [DiaChi], [QuocGia], [DienThoai], [NguoiDaiDien], [Email], [GhiChu]) VALUES (2, N'DHQG', N'Đại học quốc gia TPHCM', N'Phường Linh Trung, Thủ Đức, TPHCM', N'Việt Nam', N'02837242181', N'Lê Văn Sĩ', N'info@vnuhcm.edu.vn', NULL)
INSERT [dbo].[NhaXuatBan] ([ID_NXB], [MaNhaXuatBan], [TenNXB], [DiaChi], [QuocGia], [DienThoai], [NguoiDaiDien], [Email], [GhiChu]) VALUES (3, N'NXB_CT', N'NXB Công Thương', N'Tầng 4 - Tòa nhà Bộ Công thương, số 655 Phạm Văn Đồng - Bắc Từ Liêm - Hà Nội', N'Việt Nam', N'02439341562', N'Lê Tiến Anh Hào', N'nxbct@moit.gov.vn', NULL)
INSERT [dbo].[NhaXuatBan] ([ID_NXB], [MaNhaXuatBan], [TenNXB], [DiaChi], [QuocGia], [DienThoai], [NguoiDaiDien], [Email], [GhiChu]) VALUES (4, N'LD_XH', N'Lao động - Xã hội', N'Ngõ Hoà Bình 4 - Minh khai - Hai Bà Trưng - Hà Nội', N'Việt Nam', N'0436246913', N'Lê Tiến Nghĩa', N'nxblaodongxahoi@gmail.com', NULL)
INSERT [dbo].[NhaXuatBan] ([ID_NXB], [MaNhaXuatBan], [TenNXB], [DiaChi], [QuocGia], [DienThoai], [NguoiDaiDien], [Email], [GhiChu]) VALUES (5, N'Truong_DHCT', N'Đại học công thương', N'140 Lê Trọng Tấn, Phường Tây Thạnh, Quận Tân Phú, TP.HCM', N'Việt Nam', N'02838163318', N'Nguyễn Xuân Hoàng', N'info@hufi.edu.vn', NULL)
INSERT [dbo].[NhaXuatBan] ([ID_NXB], [MaNhaXuatBan], [TenNXB], [DiaChi], [QuocGia], [DienThoai], [NguoiDaiDien], [Email], [GhiChu]) VALUES (6, N'HaNoi_GiaoDuc', N'Giáo dục', N'Số 81 Trần Hưng Đạo, Hoàn Kiếm, Hà Nội', N'Việt Nam', N'02438220801', N'Đỗ Văn Thao', N'veph@nxbgd.vn', NULL)
INSERT [dbo].[NhaXuatBan] ([ID_NXB], [MaNhaXuatBan], [TenNXB], [DiaChi], [QuocGia], [DienThoai], [NguoiDaiDien], [Email], [GhiChu]) VALUES (7, N'UK_JOIN_WILEY', N'John Wiley & Son', N'Hoboken, HudSon, New Jersey', N'US', N'', N'', N'cs-author@wiley.com', NULL)
INSERT [dbo].[NhaXuatBan] ([ID_NXB], [MaNhaXuatBan], [TenNXB], [DiaChi], [QuocGia], [DienThoai], [NguoiDaiDien], [Email], [GhiChu]) VALUES (8, N'TGNXB', N'NXB Th? gi?i', N'46 Trần Hưng Đạo, Quận Hoàn Kiếm, Hà Nội', N'Việt Nam', N'02438253841', N'Trần Đoàn Lâm', N'thegioi@hn.vnn.vn', NULL)
INSERT [dbo].[NhaXuatBan] ([ID_NXB], [MaNhaXuatBan], [TenNXB], [DiaChi], [QuocGia], [DienThoai], [NguoiDaiDien], [Email], [GhiChu]) VALUES (9, N'VNTongHop', N'NXB Tổng hợp', N'62 Nguyễn Thị Minh Khai, phường Đa Kao, quận 1, TPHCM', N'Việt Nam', N'02838256804', N'', N'tonghop@nxbhcm.com.vn', NULL)
INSERT [dbo].[NhaXuatBan] ([ID_NXB], [MaNhaXuatBan], [TenNXB], [DiaChi], [QuocGia], [DienThoai], [NguoiDaiDien], [Email], [GhiChu]) VALUES (10, N'HDHL_DT', N'Hội đồng huấn luyện và đào tạo', N'', N'Việt Nam', N'', N'', N'', NULL)
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
GO
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom], [GhiChu]) VALUES (N'admin', N'Quản trị viên', NULL)
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom], [GhiChu]) VALUES (N'chuyenvien', N'Chuyên viên', NULL)
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom], [GhiChu]) VALUES (N'gd', N'Giám đốc', NULL)
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom], [GhiChu]) VALUES (N'nhanvien', N'Nhân viên thư viện', NULL)
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom], [GhiChu]) VALUES (N'thuvienvien', N'Thư viện viên', NULL)
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom], [GhiChu]) VALUES (N'tts', N'Thực tập sinh', NULL)
GO
SET IDENTITY_INSERT [dbo].[PhanHe] ON 

INSERT [dbo].[PhanHe] ([ID_PhanHe], [TenPhanHe]) VALUES (2, N'Độc giả')
INSERT [dbo].[PhanHe] ([ID_PhanHe], [TenPhanHe]) VALUES (1, N'Quản lý báo cáo')
INSERT [dbo].[PhanHe] ([ID_PhanHe], [TenPhanHe]) VALUES (3, N'Quản lý hệ thống')
INSERT [dbo].[PhanHe] ([ID_PhanHe], [TenPhanHe]) VALUES (4, N'Quản lý tài liệu')
INSERT [dbo].[PhanHe] ([ID_PhanHe], [TenPhanHe]) VALUES (5, N'Tài Khoản')
SET IDENTITY_INSERT [dbo].[PhanHe] OFF
GO
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'admin', 1, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'admin', 2, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'admin', 3, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'admin', 4, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'admin', 5, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'admin', 6, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'admin', 7, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'admin', 8, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'admin', 9, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'admin', 10, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'chuyenvien', 1, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'chuyenvien', 2, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'chuyenvien', 3, 1)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'chuyenvien', 4, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'chuyenvien', 5, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'chuyenvien', 6, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'chuyenvien', 7, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'chuyenvien', 8, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'chuyenvien', 9, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'chuyenvien', 10, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'gd', 1, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'gd', 2, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'gd', 3, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'gd', 4, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'gd', 5, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'gd', 6, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'gd', 7, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'gd', 8, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'gd', 9, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'gd', 10, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'nhanvien', 1, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'nhanvien', 2, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'nhanvien', 3, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'nhanvien', 4, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'nhanvien', 5, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'nhanvien', 6, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'nhanvien', 7, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'nhanvien', 8, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'nhanvien', 9, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'nhanvien', 10, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'thuvienvien', 1, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'thuvienvien', 2, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'thuvienvien', 3, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'thuvienvien', 4, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'thuvienvien', 5, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'thuvienvien', 6, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'thuvienvien', 7, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'thuvienvien', 8, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'thuvienvien', 9, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'thuvienvien', 10, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'tts', 1, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'tts', 2, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'tts', 3, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'tts', 4, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'tts', 5, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'tts', 6, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'tts', 7, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'tts', 8, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'tts', 9, 0)
INSERT [dbo].[PhanQuyen] ([MaNhomND], [ID_ChucNang], [CoQuyen]) VALUES (N'tts', 10, 0)
GO
SET IDENTITY_INSERT [dbo].[PhienBanTaiLieu] ON 

INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (1, 7, 6, 2006, 220, 15, 24, N'no_image.png', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (2, 6, 1, 2004, 296, 15, 29, N'no_image.png', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (3, 5, 5, 2018, 198, 15, 21, N'sx_hoachat.jpg', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (4, 4, 4, 2004, 504, 15, 24, N'no_image.png', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (5, 3, 3, 2022, 105, 15, 28, N'no_image.png', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (6, 2, 2, 2009, 267, 15, 24, N'cn_cb_dhqg.jpg', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (7, 1, 1, 2016, 1019, 15, 24, N'no_image.png', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (8, 8, 7, 2016, 124, 15, 22, N'writing_computer_code.jpg', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (9, 9, 8, 2017, 361, 17, 21, N'taybannha.jpg', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (10, 10, 6, 2009, 79, 16, 24, N'trangtrihv.jpg', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (11, 11, 9, 2017, 283, 0, 0, N'biquyetthanhcong.jpg', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (12, 12, 9, 2019, 159, 13, 21, N'hayvuilen.jpg', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (13, 13, 10, 2016, 149, 15, 20, N'thehinh.jpg', NULL, NULL, NULL, 200000)
INSERT [dbo].[PhienBanTaiLieu] ([ID_PhienBan], [ID_TaiLieu], [ID_NhaXuatBan], [NamXuatBan], [SoTrang], [ChieuRong], [ChieuCao], [AnhBia], [AnhMobile], [MoTa], [ISBN_ISSN], [GiaTien]) VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200000)
SET IDENTITY_INSERT [dbo].[PhienBanTaiLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuMuon] ON 

INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (40, N'2001206901-1', CAST(N'2024-06-15T11:54:01.947' AS DateTime), CAST(N'2024-06-25T11:54:02.043' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (41, N'2001206901-41', CAST(N'2024-06-15T11:54:30.973' AS DateTime), CAST(N'2024-06-25T11:54:31.077' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (42, N'2001206901-42', CAST(N'2024-06-15T16:46:13.300' AS DateTime), CAST(N'2024-06-25T16:46:13.427' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (43, N'2001206901-43', CAST(N'2024-06-15T16:46:51.717' AS DateTime), CAST(N'2024-06-25T16:46:51.800' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (44, N'2001206901-44', CAST(N'2024-06-15T16:49:19.663' AS DateTime), CAST(N'2024-06-25T16:49:19.743' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (45, N'2001206901-45', CAST(N'2024-06-15T17:25:17.573' AS DateTime), CAST(N'2024-06-25T17:25:17.847' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (46, N'2001206901-46', CAST(N'2024-06-15T17:26:12.843' AS DateTime), CAST(N'2024-06-25T17:26:12.927' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (47, N'2001206901-47', CAST(N'2024-06-15T17:27:09.620' AS DateTime), CAST(N'2024-06-25T17:27:09.697' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (48, N'2001206901-48', CAST(N'2024-06-15T17:36:08.933' AS DateTime), CAST(N'2024-06-25T17:36:09.013' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (49, N'2001206901-49', CAST(N'2024-06-15T22:11:31.947' AS DateTime), CAST(N'2024-06-25T22:11:32.167' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (50, N'2001206901-50', CAST(N'2024-06-15T22:14:44.347' AS DateTime), CAST(N'2024-06-25T22:14:44.390' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (51, N'2001206901-51', CAST(N'2024-06-15T22:27:56.677' AS DateTime), CAST(N'2024-06-25T22:27:56.720' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (52, N'2001206901-52', CAST(N'2024-06-16T10:51:28.130' AS DateTime), CAST(N'2024-06-26T10:51:28.417' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (53, N'2001206901-53', CAST(N'2024-06-17T09:02:32.590' AS DateTime), CAST(N'2024-06-27T09:02:32.657' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (54, N'2001206901-54', CAST(N'2024-06-17T09:02:52.473' AS DateTime), CAST(N'2024-06-27T09:02:52.517' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (55, N'2001206901-55', CAST(N'2024-06-17T10:17:59.463' AS DateTime), CAST(N'2024-06-27T10:17:59.580' AS DateTime), N'2001206901', 1, N'Tạo mới')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [MaPhieuMuon], [NgayTao], [NgayHetHan], [MaDocGia], [ID_NhanVien], [TrangThai]) VALUES (56, N'2001206901-56', CAST(N'2024-06-17T11:12:06.177' AS DateTime), CAST(N'2024-06-27T11:12:06.263' AS DateTime), N'2001206901', 1, N'Tạo mới')
SET IDENTITY_INSERT [dbo].[PhieuMuon] OFF
GO
SET IDENTITY_INSERT [dbo].[TacGia] ON 

INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (1, N'VN0006', N'Hoàng Văn Chước', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (2, N'VN0005', N'Lê Văn Việt Mẫn', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (3, N'NXB_CT', N'Nhà xuất bản Công Thương', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (4, N'VN0002', N'Bùi Thị Khuyên', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (5, N'VN0003', N'Phạm Văn Phấn', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (6, N'VN0004', N'Phạm Thị Thùy Dương', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (7, N'TS0001', N'Lê văn Sơn', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (8, N'VN0001', N'Trần Văn Phú', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (9, N'DHQG', N'Đại học quốc gia', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (11, N'UK0001', N'Chris Minnikc', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (12, N'VNUN', N'Uyên Nguyên', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (13, N'VNNgoTP', N'Ngô Túy Phượng', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (14, N'USJACK', N'Canfield Jack', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (15, N'SinTeoACher', N'Teo Aik Cher', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (16, N'VN0007', N'Huỳnh Anh', NULL)
INSERT [dbo].[TacGia] ([ID_TG], [MaTacGia], [TenTG], [GhiChu]) VALUES (17, N'VN0008', N'Đỗ Đình Kháng', NULL)
SET IDENTITY_INSERT [dbo].[TacGia] OFF
GO
INSERT [dbo].[TaiKhoanNoiBo] ([ID_NV], [MatKhau], [TrangThai], [MaNhom]) VALUES (1, N'123@@', N'Hoạt động', N'gd')
INSERT [dbo].[TaiKhoanNoiBo] ([ID_NV], [MatKhau], [TrangThai], [MaNhom]) VALUES (2, N'&&sanghufi', N'Hoạt động', N'thuvienvien')
INSERT [dbo].[TaiKhoanNoiBo] ([ID_NV], [MatKhau], [TrangThai], [MaNhom]) VALUES (3, N'thuvien12', N'Hoạt động', N'thuvienvien')
INSERT [dbo].[TaiKhoanNoiBo] ([ID_NV], [MatKhau], [TrangThai], [MaNhom]) VALUES (4, N'12098', N'Hoạt động', N'chuyenvien')
INSERT [dbo].[TaiKhoanNoiBo] ([ID_NV], [MatKhau], [TrangThai], [MaNhom]) VALUES (5, N'123', N'Hoạt động', N'thuvienvien')
GO
SET IDENTITY_INSERT [dbo].[TaiLieu] ON 

INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (1, N'THIẾT KẾ HỆ THỐNG THIẾT BỊ SẤY123', N'664.0284', 9, 1, CAST(N'2020-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (2, N'CÔNG NGHỆ SẢN XUẤT CÁC SẢN PHẨM TỪ SỮA VÀ THỨC UỐNG', N'637.1', 13, 6, CAST(N'2024-10-20T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (3, N'NHỮNG ĐIỀU CẦN BIẾT VỀ SẢN XUẤT, KINH DOANH HÓA CHẤT NGUY HIỂM', N'334.597', 13, 5, CAST(N'2023-10-22T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (4, N'HỢP ĐỒNG KINH TẾ TRONG KINH DOANH', N'343.07', 13, 4, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (5, N'CHẾ TẠO VẬT LIỆU NANO TỔ HỢP CÓ TỪ TÍNH TRÊN NỀN POLYMER SINH HỌC ĐÊ LOẠI BỎ ASEN TRONG NƯỚC NGẦM', N'628', 6, 3, CAST(N'2020-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (6, N'KỸ THUẬT SẤY', N'664.0284', 13, 2, CAST(N'2023-05-22T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (7, N'CÔNG NGHỆ CHẾ BIẾN THỰC PHẨM', N'664.94', 13, 1, CAST(N'2022-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (8, N'WRITING COMPUTER CODE', N'005.1', 13, 8, CAST(N'2023-05-20T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (9, N'TÂY BAN NHA, HÀNH TRÌNH KHÔNG NGÔN NGỮ', N'370.11609', 13, 9, CAST(N'2022-11-12T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (10, N'NHỮNG BÀI MẪU TRANG TRÍ HÌNH VUÔNG', N'701', 13, 10, CAST(N'2024-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (11, N'BÍ QUYẾT THÀNH CÔNG CHO BẠN TRẺ', N'158.1', 13, 11, CAST(N'2023-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (12, N'TẠI SAO LO LẮNG? HÃY VUI LÊN!', N'646.700835', 13, 11, CAST(N'2024-06-05T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (13, N'GIÁO TRÌNH ĐÀO TẠO HUẤN LUYỆN VIÊN MÔN THỂ HÌNH VÀ FITNESS', N'796', 20, 12, CAST(N'2023-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiLieu] ([ID_TL], [TenTaiLieu], [KyHieuPhanLoai], [LoaiTaiLieu], [ChuDe], [NgayNhap]) VALUES (18, N'abc', N'123', 1, 1, CAST(N'2020-10-16T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[TaiLieu] OFF
GO
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (1, 1)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (2, 2)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (3, 3)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (4, 4)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (4, 5)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (4, 6)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (5, 7)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (6, 8)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (7, 9)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (8, 11)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (9, 12)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (10, 13)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (11, 14)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (12, 15)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (13, 16)
INSERT [dbo].[TaiLieu_TacGia] ([ID_TaiLieu], [ID_TacGia]) VALUES (13, 17)
GO
SET IDENTITY_INSERT [dbo].[Tang] ON 

INSERT [dbo].[Tang] ([ID_Tang], [TenTang], [ViTri]) VALUES (1, N'Tầng 1', N'Thư viện HUIT 140 Lê Trọng Tấn')
INSERT [dbo].[Tang] ([ID_Tang], [TenTang], [ViTri]) VALUES (2, N'Tầng 2', N'Thư viện HUIT 140 Lê Trọng Tấn')
INSERT [dbo].[Tang] ([ID_Tang], [TenTang], [ViTri]) VALUES (3, N'Tầng 3', N'Thư viện HUIT 140 Lê Trọng Tấn')
INSERT [dbo].[Tang] ([ID_Tang], [TenTang], [ViTri]) VALUES (4, N'Tầng 4', N'Thư viện HUIT 140 Lê Trọng Tấn')
SET IDENTITY_INSERT [dbo].[Tang] OFF
GO
INSERT [dbo].[TheThuVien] ([MaDocGia], [MatKhau], [NgayTao], [NguoiThucHien], [NgayHetHan], [TrangThai]) VALUES (N'2001206901', N'123', CAST(N'2024-06-05T11:28:58.870' AS DateTime), NULL, NULL, N'Hoạt động')
INSERT [dbo].[TheThuVien] ([MaDocGia], [MatKhau], [NgayTao], [NguoiThucHien], [NgayHetHan], [TrangThai]) VALUES (N'2001207178', N'123', CAST(N'2024-06-05T11:28:58.870' AS DateTime), NULL, NULL, N'Hoạt động')
INSERT [dbo].[TheThuVien] ([MaDocGia], [MatKhau], [NgayTao], [NguoiThucHien], [NgayHetHan], [TrangThai]) VALUES (N'2033178654', N'123', CAST(N'2024-06-05T11:28:58.870' AS DateTime), NULL, NULL, N'Hoạt động')
INSERT [dbo].[TheThuVien] ([MaDocGia], [MatKhau], [NgayTao], [NguoiThucHien], [NgayHetHan], [TrangThai]) VALUES (N'2033178900', N'2033178900', NULL, 1, NULL, N'Hoạt động')
INSERT [dbo].[TheThuVien] ([MaDocGia], [MatKhau], [NgayTao], [NguoiThucHien], [NgayHetHan], [TrangThai]) VALUES (N'2033178902', N'2033178902', NULL, 1, NULL, N'Hoạt động')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ChucNang__CFD37AFAFA687467]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[ChucNangCon] ADD UNIQUE NONCLUSTERED 
(
	[TenChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DangKyDo__1F031876BB9A062A]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[DangKyDocGia] ADD UNIQUE NONCLUSTERED 
(
	[DienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DangKyDo__A9D10534578E5700]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[DangKyDocGia] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DangKyDo__B26E590EA395E062]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[DangKyDocGia] ADD UNIQUE NONCLUSTERED 
(
	[SoCCCD_TheHocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DocGia__1F031876E4FE9EEE]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[DocGia] ADD UNIQUE NONCLUSTERED 
(
	[DienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DocGia__A955A0AA18EE68C1]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[DocGia] ADD UNIQUE NONCLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DocGia__A9D1053415026DFD]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[DocGia] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DoiTuong__46407084DF695094]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[DoiTuongDocGia] ADD UNIQUE NONCLUSTERED 
(
	[TenDoiTuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KeSach__2725CF7C830D1FEF]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[KeSach] ADD UNIQUE NONCLUSTERED 
(
	[MaKe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LoaiTaiL__E29B1042B94473C7]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[LoaiTaiLieu] ADD UNIQUE NONCLUSTERED 
(
	[TenLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__77B2CA4629AE010F]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhaXuatB__1AED0BFB26F034A9]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[NhaXuatBan] ADD UNIQUE NONCLUSTERED 
(
	[MaNhaXuatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhomNguo__2B432D0DB1EA0EF9]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[NhomNguoiDung] ADD UNIQUE NONCLUSTERED 
(
	[TenNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__PhanHe__8E3A2A49867B93B0]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[PhanHe] ADD UNIQUE NONCLUSTERED 
(
	[TenPhanHe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__PhieuMuo__C4C822234B5A7790]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[PhieuMuon] ADD UNIQUE NONCLUSTERED 
(
	[MaPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TacGia__F24E6757C667108D]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[TacGia] ADD UNIQUE NONCLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Tang__94C2B28FA5972083]    Script Date: 30-06-2024 10:28:53 PM ******/
ALTER TABLE [dbo].[Tang] ADD UNIQUE NONCLUSTERED 
(
	[TenTang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BanSaoTaiLieu]  WITH CHECK ADD FOREIGN KEY([ID_PhienBan])
REFERENCES [dbo].[PhienBanTaiLieu] ([ID_PhienBan])
GO
ALTER TABLE [dbo].[BanSaoTaiLieu]  WITH CHECK ADD FOREIGN KEY([ID_Tang])
REFERENCES [dbo].[Tang] ([ID_Tang])
GO
ALTER TABLE [dbo].[ChiTietPhieuMuon]  WITH CHECK ADD FOREIGN KEY([ID_PhieuMuon])
REFERENCES [dbo].[PhieuMuon] ([ID_PhieuMuon])
GO
ALTER TABLE [dbo].[ChiTietPhieuMuon]  WITH CHECK ADD FOREIGN KEY([MaTL])
REFERENCES [dbo].[BanSaoTaiLieu] ([MaDangKyCaBiet])
GO
ALTER TABLE [dbo].[ChucNangCon]  WITH CHECK ADD FOREIGN KEY([ID_PhanHe])
REFERENCES [dbo].[PhanHe] ([ID_PhanHe])
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD FOREIGN KEY([ID_DoiTuong])
REFERENCES [dbo].[DoiTuongDocGia] ([ID_DoiTuong])
GO
ALTER TABLE [dbo].[KeSach]  WITH CHECK ADD FOREIGN KEY([Tang])
REFERENCES [dbo].[Tang] ([ID_Tang])
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD FOREIGN KEY([ID_ChucNang])
REFERENCES [dbo].[ChucNangCon] ([ID_ChucNang])
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD FOREIGN KEY([MaNhomND])
REFERENCES [dbo].[NhomNguoiDung] ([MaNhom])
GO
ALTER TABLE [dbo].[PhienBanTaiLieu]  WITH CHECK ADD FOREIGN KEY([ID_NhaXuatBan])
REFERENCES [dbo].[NhaXuatBan] ([ID_NXB])
GO
ALTER TABLE [dbo].[PhienBanTaiLieu]  WITH CHECK ADD FOREIGN KEY([ID_TaiLieu])
REFERENCES [dbo].[TaiLieu] ([ID_TL])
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD FOREIGN KEY([ID_NhanVien])
REFERENCES [dbo].[NhanVien] ([ID_NV])
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DocGia] ([MaDocGia])
GO
ALTER TABLE [dbo].[TaiKhoanNoiBo]  WITH CHECK ADD FOREIGN KEY([ID_NV])
REFERENCES [dbo].[NhanVien] ([ID_NV])
GO
ALTER TABLE [dbo].[TaiKhoanNoiBo]  WITH CHECK ADD FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomNguoiDung] ([MaNhom])
GO
ALTER TABLE [dbo].[TaiLieu]  WITH CHECK ADD FOREIGN KEY([ChuDe])
REFERENCES [dbo].[ChuDe] ([ID_ChuDe])
GO
ALTER TABLE [dbo].[TaiLieu]  WITH CHECK ADD FOREIGN KEY([LoaiTaiLieu])
REFERENCES [dbo].[LoaiTaiLieu] ([ID_Loai])
GO
ALTER TABLE [dbo].[TaiLieu_TacGia]  WITH CHECK ADD FOREIGN KEY([ID_TaiLieu])
REFERENCES [dbo].[TaiLieu] ([ID_TL])
GO
ALTER TABLE [dbo].[TaiLieu_TacGia]  WITH CHECK ADD FOREIGN KEY([ID_TacGia])
REFERENCES [dbo].[TacGia] ([ID_TG])
GO
ALTER TABLE [dbo].[TheThuVien]  WITH CHECK ADD FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DocGia] ([MaDocGia])
GO
ALTER TABLE [dbo].[TheThuVien]  WITH CHECK ADD FOREIGN KEY([NguoiThucHien])
REFERENCES [dbo].[NhanVien] ([ID_NV])
GO
