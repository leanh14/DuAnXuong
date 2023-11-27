create database [DuAnVe]
Go
USE [DuAnVe]
GO
/****** Object:  Table [dbo].[ChucVu]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[NhanVien]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [uniqueidentifier] NOT NULL,
	[IdChucVu] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [int] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Sdt] [varchar] (20)NULL,
	[Email] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](20) NULL,
	[MatKhau] [varchar] (20)NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[VeDat]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeDat](
	[Id] [uniqueidentifier] NOT NULL,
	[IdNhanVien] [uniqueidentifier] NULL,
	[IdVeXemPhim] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[NgayTao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_VeDat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[HoaDonCt]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonCT](
	[Id] [uniqueidentifier] NOT NULL,
	[IdVeDat] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
 CONSTRAINT [PK_HoaDonCT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheThanhVien]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheThanhVien](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[Loai] [int] NULL,
 CONSTRAINT [PK_TheThanhVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeXemPhim]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeXemPhim](
	[Id] [uniqueidentifier] NOT NULL,
	[IdKhachHang] [uniqueidentifier] NULL,
	[IdPhim] [uniqueidentifier] NULL,
	[IdPhong] [uniqueidentifier] NULL,
	[IdTang] [uniqueidentifier] NULL,
	[IdHangGhe] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[TenPhim] [nvarchar](50) NULL,
	[TenTang] [nvarchar](50) NULL,
	[TenPhong] [nvarchar](50) NULL,
	[TenGhe] [nvarchar](50) NULL,
	[NgayChieu] [date] NULL,
	[ThoiGian] [varchar](20) NULL,
	[TrangThai] [int] NULL,

	
 CONSTRAINT [PK_VeXemPhim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [uniqueidentifier] NOT NULL,
	[IdThe] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[GioiTinh] [int] NULL,
	[NgaySinh] [date] NULL,
	[Sdt] [varchar](20) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
    [TaiKhoan] [varchar](20) NULL,
	[MatKhau] [varchar](20) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[VouCher]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[Id] [uniqueidentifier] NOT NULL,
	[IdVeXemPhim] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[TenVoucher] [nvarchar](50) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangGhe]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangGhe](
	[Id] [uniqueidentifier] NOT NULL,
	[IdPhong] [uniqueidentifier]  NULL,
	[IdLoaiGhe] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[TenHangGhe] [nvarchar](50) NULL,
	[TenGhe] [nvarchar](50) NULL,
	
 CONSTRAINT [PK_HangGhe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiGhe]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGhe](
	[Id] [uniqueidentifier] NOT NULL,
	[MaLoaiGhe] [varchar](20) NULL,
	[TenLoai] [nvarchar](50) NULL,
	[Gia] [float](50) NULL,

	[TrangThai] bit NULL,
 CONSTRAINT [PK_LoaiGhe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]     ******/
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[Id] [uniqueidentifier] NOT NULL,
	[IdTang] [uniqueidentifier]  NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[LoaiPhong] [nvarchar](50) NULL,
	[SoChoNgoi] [float] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]		
GO
/****** Object:  Table [dbo].[Tang]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[TenTang] [nvarchar](50) NULL,
	[SoPhong] [float] NULL,
 CONSTRAINT [PK_Tang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rap]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rap](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[SoTang] [int] NULL,
	[SoLuongPhong] [int] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_Rap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[DaoDien] [nvarchar](50) NULL,
	[DienVien] [nvarchar](50) NULL,
	[TheLoai] [nvarchar](50) NULL,
	[ThoiGian] [varchar](100) NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[NoiDung] [nvarchar](100) NULL,
	[NamSX] [date] NULL,
	[DanhGia] [nvarchar](50) NULL,

 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XuatChieuPhim]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatChieuPhim](
	[Id] [uniqueidentifier] NOT NULL,
	[IdRap] [uniqueidentifier]  NULL,
	[IdPhim] [uniqueidentifier] NULL,
	[IdPhong] [uniqueidentifier] NULL,
	[IdTang] [uniqueidentifier] NULL,
	[IdHangGhe] [uniqueidentifier] NULL,
	[NgayChieu] [date] NULL,
	[LoaiXuatChieu] [int] NULL,
	[Gia] [float] NULL,
	[Ma] [varchar](20) NULL,
	[TenGhe] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_XuatChieuPhim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TheThanhVien] ADD  CONSTRAINT [DF_TheThanhVien_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChucVu] ADD  CONSTRAINT [DF_ChucVu_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[VeDat] ADD  CONSTRAINT [DF_VeDat_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[VeXemPhim] ADD  CONSTRAINT [DF_VeXemPhim_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HoaDonCT] ADD  CONSTRAINT [DF_HoaDonCT_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Voucher] ADD  CONSTRAINT [DF_Voucher_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HangGhe] ADD  CONSTRAINT [DF_HangGhe_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[LoaiGhe] ADD  CONSTRAINT [DF_LoaiGhe_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Phong] ADD  CONSTRAINT [DF_Phong_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Tang] ADD  CONSTRAINT [DF_Tang_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[XuatChieuPhim] ADD  CONSTRAINT [DF_XuatChieuPhim_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Phim] ADD  CONSTRAINT [DF_Phim_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Rap] ADD  CONSTRAINT [DF_Rap_Id]  DEFAULT (newid()) FOR [Id]
GO
/**VeXemPhim**/
ALTER TABLE [dbo].[VeXemPhim]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhim_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[VeXemPhim] CHECK CONSTRAINT [FK_VeXemPhim_KhachHang]
GO
ALTER TABLE [dbo].[VeXemPhim]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhim_Phim] FOREIGN KEY([IdPhim])
REFERENCES [dbo].[Phim] ([Id])
GO
ALTER TABLE [dbo].[VeXemPhim] CHECK CONSTRAINT [FK_VeXemPhim_Phim]
GO
ALTER TABLE [dbo].[VeXemPhim]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhim_Phong] FOREIGN KEY([IdPhong])
REFERENCES [dbo].[Phong] ([Id])
GO
ALTER TABLE [dbo].[VeXemPhim] CHECK CONSTRAINT [FK_VeXemPhim_Phong]
GO
ALTER TABLE [dbo].[VeXemPhim]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhim_Tang] FOREIGN KEY([IdTang])
REFERENCES [dbo].[Tang] ([Id])
GO
ALTER TABLE [dbo].[VeXemPhim] CHECK CONSTRAINT [FK_VeXemPhim_Tang]
GO
ALTER TABLE [dbo].[VeXemPhim]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhim_HangGhe] FOREIGN KEY([IdHangGhe])
REFERENCES [dbo].[HangGhe] ([Id])
GO
ALTER TABLE [dbo].[VeXemPhim] CHECK CONSTRAINT [FK_VeXemPhim_HangGhe]
GO
/**KhachHang**/
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TheThanhVien] FOREIGN KEY([IdThe])
REFERENCES [dbo].[TheThanhVien] ([Id])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_TheThanhVien]
GO

/**Voucher**/
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_VeXemPhim] FOREIGN KEY([IdVeXemPhim])
REFERENCES [dbo].[VeXemPhim] ([Id])
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [FK_Voucher_VeXemPhim]
GO
/**HangGher**/
ALTER TABLE [dbo].[HangGhe]  WITH CHECK ADD  CONSTRAINT [FK_HangGhe_Phong] FOREIGN KEY([IdPhong])
REFERENCES [dbo].[Phong] ([Id])
GO
ALTER TABLE [dbo].[HangGhe] CHECK CONSTRAINT [FK_HangGhe_Phong]
GO
ALTER TABLE [dbo].[HangGhe]  WITH CHECK ADD  CONSTRAINT [FK_HangGhe_LoaiGhe] FOREIGN KEY([IdLoaiGhe])
REFERENCES [dbo].[LoaiGhe] ([Id])
GO
ALTER TABLE [dbo].[HangGhe] CHECK CONSTRAINT [FK_HangGhe_LoaiGhe]
GO
/**Phong**/
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_Tang] FOREIGN KEY([IdTang])
REFERENCES [dbo].[Tang] ([Id])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_Tang]
GO
/**XuatChieuPhim**/
ALTER TABLE [dbo].[XuatChieuPhim]  WITH CHECK ADD  CONSTRAINT [FK_XuatChieuPhim_Rap] FOREIGN KEY([IdRap])
REFERENCES [dbo].[Rap] ([Id])
GO
ALTER TABLE [dbo].[XuatChieuPhim] CHECK CONSTRAINT [FK_XuatChieuPhim_Rap]
GO
ALTER TABLE [dbo].[XuatChieuPhim]  WITH CHECK ADD  CONSTRAINT [FK_XuatChieuPhim_Phim] FOREIGN KEY([IdPhim])
REFERENCES [dbo].[Phim] ([Id])
GO
ALTER TABLE [dbo].[XuatChieuPhim] CHECK CONSTRAINT [FK_XuatChieuPhim_Phim]
GO
ALTER TABLE [dbo].[XuatChieuPhim]  WITH CHECK ADD  CONSTRAINT [FK_XuatChieuPhim_Phong] FOREIGN KEY([IdPhong])
REFERENCES [dbo].[Phong] ([Id])
GO
ALTER TABLE [dbo].[XuatChieuPhim] CHECK CONSTRAINT [FK_XuatChieuPhim_Phong]
GO
ALTER TABLE [dbo].[XuatChieuPhim]  WITH CHECK ADD  CONSTRAINT [FK_XuatChieuPhim_Tang] FOREIGN KEY([IdTang])
REFERENCES [dbo].[Tang] ([Id])
GO
ALTER TABLE [dbo].[XuatChieuPhim] CHECK CONSTRAINT [FK_XuatChieuPhim_Tang]
GO
ALTER TABLE [dbo].[XuatChieuPhim]  WITH CHECK ADD  CONSTRAINT [FK_XuatChieuPhim_HangGhe] FOREIGN KEY([IdHangGhe])
REFERENCES [dbo].[HangGhe] ([Id])
GO
ALTER TABLE [dbo].[XuatChieuPhim] CHECK CONSTRAINT [FK_XuatChieuPhim_HangGhe]
GO

/**HoaDonCT**/
ALTER TABLE [dbo].[HoaDonCT]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonCT_VeDat] FOREIGN KEY([IdVeDat])
REFERENCES [dbo].[VeDat] ([Id])
GO
ALTER TABLE [dbo].[HoaDonCT] CHECK CONSTRAINT [FK_HoaDonCT_VeDat]
GO

/**VeDat**/
ALTER TABLE [dbo].[VeDat]  WITH CHECK ADD  CONSTRAINT [FK_VeDat_NhanVien] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[VeDat] CHECK CONSTRAINT [FK_VeDat_NhanVien]
GO
ALTER TABLE [dbo].[VeDat]  WITH CHECK ADD  CONSTRAINT [FK_VeDat_VeXemPhim] FOREIGN KEY([IdVeXemPhim])
REFERENCES [dbo].[VeXemPhim] ([Id])
GO
ALTER TABLE [dbo].[VeDat] CHECK CONSTRAINT [FK_VeDat_VeXemPhim]
GO
/**NhanVien**/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([IdChucVu])
REFERENCES [dbo].[ChucVu] ([Id])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO

/*Them du lieu*/
INSERT INTO HangGhe(Ma,TenHangGhe,TenGhe) VALUES
('HG01','Hang1','A'),
('HG02','Hang2','B'),
('HG03','Hang3','C'),
('HG04','Hang4','D'),
('HG05','Hang5','F')
GO
INSERT INTO HangGhe(Ma,IdLoaiGhe,TenHangGhe,TenGhe) VALUES
('HG06','A9331FA8-8143-48CA-AA3F-034030CC77BA','Hang1','A')
GO
INSERT INTO Phong(Ma,Ten,LoaiPhong,SoChoNgoi,TrangThai) VALUES
('P01','Phong Vip','Thuong gia','12','0'),
('P02','Phong Binh Dan','Thuong gia','8','0'),
('P03','Phong Thuong','Thuong gia','8','0'),
('P04','Phong Lung','Thuong gia','7','1'),
('P05','Phong Phong','Thuong gia','10','1')

GO
INSERT INTO Tang(Ma,TenTang,SoPhong) VALUES
('TANG01','Tang 1','1'),
('TANG02','Tang 2','6'),
('TANG03','Tang 3','3'),
('TANG04','Tang 4','4'),
('TANG05','Tang 5','5')

GO

INSERT INTO HoaDonCT(IdVeDat,Ma) VALUES
('367EAD8F-3F78-423B-AB86-268ACE8E66BC','HDCT001'),
('DF772C15-72B5-4761-9762-2BAD5488BEE6','HDCT002'),
('19FBA5B4-312B-41E7-9311-47EBFBBADD1D','HDCT003'),
('543F927F-FAE9-4177-9123-96A0496755E1','HDCT004'),
('074C58C8-444C-4798-A99E-99A34FDF310E','HDCT005')
GO


INSERT INTO VeDat(IdNhanVien,IdVeXemPhim,Ma,NgayTao,NgayThanhToan,TongTien) VALUES
('E3A95824-5179-4EC5-8A32-351C7110D04B','DC281849-7D0D-4099-AF9E-F7A6A9C81D3F','VD001','4-12-2023','1-4-2023',91000),
('A6F92353-6E93-4E00-83A9-172203998376','49CDCB7C-8C21-41DD-A527-A4F6E61FABE7','VD002','4-12-2023','1-4-2023',78000),
('24BED520-80C4-4C91-ADA4-20230F892A24','7840C9A4-5AB3-4D68-A32D-A77094EA81EB','VD003','4-12-2023','1-4-2023',60000),
('1021686F-CC06-4E0C-AF6F-2B435F47837C','1945C8E8-886E-4EF5-BB26-F64321256878','VD004','4-12-2023','1-4-2023',120000),
('9AF2E26E-F428-4152-95AB-08F1336C13F8','E09874AB-FBF8-4F06-9D27-4FBDF4A140EB','VD005','4-12-2023','1-4-2023',10000)
GO

INSERT INTO VeXemPhim(IdKhachHang,IdPhim,IdPhong,IdTang,IdHangGhe,Ma,TenPhim,TenTang,TenPhong,TenGhe,NgayChieu,ThoiGian,TrangThai) VALUES
('980122AB-ECF7-432E-A4D3-6FDE617059A1','71CC8FA7-7A29-49C8-B8FF-028DEA973F50','4D8520E4-5026-49BD-ABC4-37F6C79B211F','32E1F870-163B-4B0B-A6AF-67A21FA873E0','DE7FAB39-83EE-4171-9D7E-2B9E2D01A900','VXP006','CÔ GIÁO LÀ SỐ 1','Tang 1','Phong Phong','Ghe Bo Cau','2-2-2023',60,0),
('29ED0EDE-63BB-40EC-A676-940466A2F821','8AF432F0-5B73-49FD-BC66-0A9E1D98D5CC','FF7AFDD0-02BF-4FEF-9285-75E784BBD262','6B55E227-D2FD-4CF9-83BC-040525060670','504ECED6-46E4-4501-87DE-959109902509','VXP002','ĐIỀU ƯỚC','Tang 2','Phong Binh Dan','Ghe Nha La','1-2-2023',90,1),
('5D25C996-5214-461F-A05C-B3611DCA77CC','2261DEBA-C699-43A0-BA69-16EC0C8490CD','BB19C649-CBAB-48B7-A5F1-78D6259322E1','D84D1C05-827F-49A2-A323-151AB0968DC1','DE41FCA6-8A5F-446B-A158-00B7EAD1F48D','VXP004','OÁN LINH','Tang 3','Phong Vip','Ghe Tinh Yeu','2-2-2023',45,0),
('A0D24641-582F-4BCD-AFAB-CB1512DFC7E9','6D4EA1E7-4403-49DC-A896-273581DECF4E','79D7CF97-6A86-4920-BBB5-A1BF4F924454','F262EB39-B942-42F6-A638-8202B0D49280','2F76505E-4488-40E8-BCBA-A6FEA8518573','VXP003','NHÀ VỊT DI CƯ','Tang 4','Phong Thuong','Ghe Cau Vong','2-2-2023',97,1),
('B1576F1C-BD95-48E6-998E-D6692F52C99F','16AC8059-C4EC-4610-9DCA-3CBEEF96E764','6B89B35E-CEE6-4D6D-9411-AC6A197981F7','7737DA3E-6AC5-47A7-B609-B135A0EC1409','DDAA77BA-909F-44DE-8469-B37A8D2110B3','VXP005','Phim Xa Hoi','Tang 5','Phong Lung','Ghe Sac Mau','15-2-2022',60,0)
GO

INSERT INTO Voucher(IdVeXemPhim,Ma,TenVoucher,NgayBatDau,NgayKetThuc) VALUES
('E09874AB-FBF8-4F06-9D27-4FBDF4A140EB','VC001','Sieu Dai Tiec','2-8-2023','6-8-2023'),
('49CDCB7C-8C21-41DD-A527-A4F6E61FABE7','VC002','Bung No Mua He','2-8-2023','6-8-2023'),
('7840C9A4-5AB3-4D68-A32D-A77094EA81EB','VC003','San Mua Dong','2-8-2023','6-8-2023'),
('1945C8E8-886E-4EF5-BB26-F64321256878','VC004','Tiec Giang Sinh','11-23-2023','11-26-2023'),
('DC281849-7D0D-4099-AF9E-F7A6A9C81D3F','VC005','Mung Ngay Quoc Khacnh','2-9-2023','6-9-2023')
GO
INSERT INTO XuatChieuPhim(IdRap,IdPhim,IdPhong,IdTang,IdHangGhe,NgayChieu,LoaiXuatChieu,Gia,Ma,TenGhe,SoLuong) VALUES
('9876570C-C85A-44ED-8745-076E4595145E','71CC8FA7-7A29-49C8-B8FF-028DEA973F50','4D8520E4-5026-49BD-ABC4-37F6C79B211F','6B55E227-D2FD-4CF9-83BC-040525060670','DE41FCA6-8A5F-446B-A158-00B7EAD1F48D','12-23-2023',0,40,'XCP001','Ghe Nha La',5),
('A492D70E-6B26-439D-9008-1DB8518701F1','8AF432F0-5B73-49FD-BC66-0A9E1D98D5CC','74790F2F-7E14-4AAA-9AE9-079B2AB9A06A','D84D1C05-827F-49A2-A323-151AB0968DC1','DE7FAB39-83EE-4171-9D7E-2B9E2D01A900','5-26-2023',1,50,'XCP002','Ghe Bo Cau',9),
('DFA6C8BC-8BA3-48A0-A8CE-3B2F55A3BE14','2261DEBA-C699-43A0-BA69-16EC0C8490CD','7BEABDF5-199C-4948-A67B-36B7D58F5EA0','32E1F870-163B-4B0B-A6AF-67A21FA873E0','504ECED6-46E4-4501-87DE-959109902509','7-23-2023',1,80,'XCP003','Ghe Cau Vong',7),
('E2FF2CB1-091E-4D43-A060-485B66DBCA7C','6D4EA1E7-4403-49DC-A896-273581DECF4E','FF7AFDD0-02BF-4FEF-9285-75E784BBD262','F262EB39-B942-42F6-A638-8202B0D49280','2F76505E-4488-40E8-BCBA-A6FEA8518573','8-29-2023',0,10,'XCP004','Ghe Tinh Yeu',10),
('50CD45B7-3034-46F3-B1E1-5A035FBE1DCA','16AC8059-C4EC-4610-9DCA-3CBEEF96E764','BB19C649-CBAB-48B7-A5F1-78D6259322E1','7737DA3E-6AC5-47A7-B609-B135A0EC1409','DDAA77BA-909F-44DE-8469-B37A8D2110B3','10-18-2023',0,70,'XCP005','Ghe Sac Mau',4)
GO



INSERT INTO ChucVu(Ma,Ten) VALUES
('CV001','Giam Doc'),
('CV002','Chu Tich'),
('CV003','To Truong'),
('CV004','Bao Ve'),
('CV005','Pho Giam Doc')
GO

INSERT INTO NhanVien(IdChucVu,Ma,HoTen,NgaySinh,GioiTinh,DiaChi,Sdt,Email,TaiKhoan,MatKhau) VALUES 
('773A6806-55C6-4122-8075-DD73FFA24BDB','NV005','Le Thi Ha','6-23-1999',0,'Bac Ninh','0336561929','lothiao12@tgmail.com','hasile','123'),
('13E68938-4977-4670-9FEA-0F7D183F46DB','NV001','LO THI CAO','1-12-2000',0,'Ha Noi','0336561929','lothiao12@tgmail.com','lothicao','123'),
('BEDAF4D2-9A05-4A0B-B6FE-3D13E26D7DCF','NV002','Nguyen Trong Dat','10-9-2000',1,'Ha Nam','0336561929','lothiao12@tgmail.com','datnee','123'),
('7C063524-2FD7-4297-A31C-ADD617EAA9B1','NV003','Dinh Long Toi','2-1-1989',0,'Hai Phong','0336561929','lothiao12@tgmail.com','toisile','123'),
('214CE941-CB46-4981-9371-CEA98B940E51','NV004','Tran Quoc Hung','6-1-1990',1,'Ha Noi','0336561929','lothiao12@tgmail.com','anhsile','123')
GO
INSERT INTO Rap(Ma,Ten,SoTang,SoLuongPhong,DiaChi,TrangThai) VALUES
('RAP001',N' Hùng Vương Plaza',4,12,'Ho Chi Minh',0),
('RAP002',N'Vincom Nguyễn Chí Thanh',7,7,'Ha Noi',0),
('RAP003',N'Vincom Royal City',4,12,'Ho Chi Minh',1),
('RAP004',N'Vincom Đồng Khởi',3,4,'Ho Chi Minh',0),
('RAP005',N'Aeon Hà Đông',5,5,'Ho Chi Minh',1)
GO
INSERT INTO Phim(Ma,Ten,DaoDien,DienVien,TheLoai,ThoiGian,NoiDung,NamSX,DanhGia) VALUES
('PH005',N'NHÀ VỊT DI CƯ','Renner','Ariana DeBose, Chris Pine',N'Hoạt Hình',2,'Chuyen Chu Vit','2-4-2021','Chua co danh gia'),
('PH002',N'CÔ GIÁO LÀ SỐ 1','Park Jin-pyo',' Shin Hae-sun, Lee Jun-young,',N'Hài,Hành Động',3,'Chuyen tinh cam','1-11-2023','Chua co danh gia'),
('PH001',N'ĐIỀU ƯỚC','Fawn Veerasunthorn','Ariana DeBose, Chris Pine',N'Hài,Hoạt Hình',2,'Chuyen tinh cam','1-11-2023','Chua co danh gia'),
('PH003',N'OÁN LINH','  Kelvin Tong',' Rebecca Lim, Cynthia Koh	',N'  Kinh Dị',1,'Chuyen Kinh Di','1-1-2021','Chua co danh gia'),
('PH004',N'KẺ ĂN HỒN','  Trần Hữu Tấn','Hoàng Hà, Võ Điền Gia Huy',N'  Kinh Dị',2,'Chuyen Kinh Di','12-1-2022','Chua co danh gia')

GO
INSERT INTO TheThanhVien(Ma,Ten,Loai) VALUES
('TV001','VIP NUMBER',1),
('TV002','U22 NUMBER',0),
('TV003','U33 NUMBER',0),
('TV004','VIPP NUMBER',1),
('TV005','VVIP NUMBER',0)
GO
INSERT INTO KhachHang(IdThe,Ma,Ten,GioiTinh,NgaySinh,Sdt,DiaChi,ThanhPho,QuocGia,TaiKhoan,MatKhau,Email) VALUES 
('97435F71-C7CD-49D7-9053-09C9C991D7DC','KH001','LE VAN TIEN',0,'12-1-2002','0337677929','BaDinh','Ha Noi','Viet Nam','anh12','12345','leanh12@gmail.com'),
('D546B3B2-7CFF-4BBD-9DA5-2375E237B988','KH002',' Ho Van Lai',0,'12-1-2001','0337677929','BaDinh','Ha Nam','Viet Nam','anh12','12345','leanh12@gmail.com'),
('8B845761-2056-40D1-A6EB-380EF8550870','KH003','Lai Van Chien',0,'12-1-2000','0337677929','BaDinh','Lao Cai','Viet Nam','anh12','12345','leanh12@gmail.com'),
('FA2BD7AD-C4A8-4412-8B2C-47F92F025171','KH004','Ngo Hong Quan',1,'12-1-2001','0337677929','BaDinh','Yen Ban','Viet Nam','anh12','12345','leanh12@gmail.com'),
('D4922E28-278F-4653-BE3A-8474C9101EFB','KH005','Thien Binh',1,'12-1-2004','0337677929','BaDinh','Vung Tau','Viet Nam','anh12','12345','leanh12@gmail.com')
go
-- Chèn dữ liệu vào bảng LoaiGhe
INSERT INTO [dbo].[LoaiGhe] ([Id], [MaLoaiGhe], [TenLoai], [TrangThai])
VALUES
    (NEWID(), 'LG01', N'Ghế Đơn', 0), 
    (NEWID(), 'LG02', N'Ghế Đôi', 1);


SELECT * FROM TheThanhVien
SELECT * FROM ChucVu
SELECT * FROM Phong

SELECT * FROM Phim
SELECT * FROM loaighe
SELECT * FROM hangghe