USE [master]
GO
/****** Object:  Database [SinhVien]    Script Date: 11/28/2016 21:10:45 ******/
CREATE DATABASE [SinhVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SinhVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\SinhVien.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SinhVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\SinhVien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SinhVien] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SinhVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SinhVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SinhVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SinhVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SinhVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SinhVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [SinhVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SinhVien] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SinhVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SinhVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SinhVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SinhVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SinhVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SinhVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SinhVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SinhVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SinhVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SinhVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SinhVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SinhVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SinhVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SinhVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SinhVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SinhVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SinhVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SinhVien] SET  MULTI_USER 
GO
ALTER DATABASE [SinhVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SinhVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SinhVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SinhVien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SinhVien]
GO
/****** Object:  Table [dbo].[account]    Script Date: 11/28/2016 21:10:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[account](
	[masv] [varchar](10) NOT NULL,
	[password] [nvarchar](50) NULL,
	[quyen] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bangdiem]    Script Date: 11/28/2016 21:10:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bangdiem](
	[masv] [varchar](10) NOT NULL,
	[mamonhoc] [varchar](10) NOT NULL,
	[diemtp] [real] NULL,
	[diemthilan1] [real] NULL,
	[diemthilan2] [real] NULL,
	[tkmonlan1he10] [real] NULL,
	[tkmonlan1he4] [real] NULL,
	[tkmonlan2he10] [real] NULL,
	[tkmonlan2he4] [real] NULL,
	[tkmonhe10] [real] NULL,
	[tkmonhe4] [real] NULL,
	[tkmonhechu] [varchar](2) NULL,
	[sotietnghi] [int] NULL,
	[trangthai] [text] NULL,
 CONSTRAINT [PK_bangdiem] PRIMARY KEY CLUSTERED 
(
	[masv] ASC,
	[mamonhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[khoa]    Script Date: 11/28/2016 21:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khoa](
	[makhoa] [varchar](10) NOT NULL,
	[tenkhoa] [varchar](50) NULL,
 CONSTRAINT [PK_khoa] PRIMARY KEY CLUSTERED 
(
	[makhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lop]    Script Date: 11/28/2016 21:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lop](
	[malop] [varchar](10) NOT NULL,
	[tenlop] [varchar](50) NULL,
	[makhoa] [varchar](10) NOT NULL,
 CONSTRAINT [PK_lop] PRIMARY KEY CLUSTERED 
(
	[malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[monhoc]    Script Date: 11/28/2016 21:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[monhoc](
	[mamonhoc] [varchar](10) NOT NULL,
	[tenmonhoc] [varchar](50) NULL,
	[tongsotiet] [int] NULL,
	[sotinchi] [int] NULL,
	[hocky] [int] NULL,
 CONSTRAINT [PK_monhoc] PRIMARY KEY CLUSTERED 
(
	[mamonhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sinhvien]    Script Date: 11/28/2016 21:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sinhvien](
	[masv] [varchar](10) NOT NULL,
	[hoten] [varchar](50) NULL,
	[malop] [varchar](10) NOT NULL,
	[ngaysinh] [varchar](30) NULL,
	[diachi] [varchar](50) NULL,
	[gioitinh] [varchar](10) NULL,
	[tenkhoa] [varchar](10) NULL,
 CONSTRAINT [PK_sinhvien] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tongket]    Script Date: 11/28/2016 21:10:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tongket](
	[masv] [varchar](10) NOT NULL,
	[diemtkhe10] [real] NULL,
	[diemtkhe4] [real] NULL,
	[sotcdat] [int] NULL,
 CONSTRAINT [PK_tongket] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[account] ([masv], [password], [quyen]) VALUES (N'sv01', N'1', 1)
INSERT [dbo].[khoa] ([makhoa], [tenkhoa]) VALUES (N'mk01', N'CNTT')
INSERT [dbo].[khoa] ([makhoa], [tenkhoa]) VALUES (N'mk02', N'QLNL')
INSERT [dbo].[khoa] ([makhoa], [tenkhoa]) VALUES (N'mk03', N'QTDLKS')
INSERT [dbo].[khoa] ([makhoa], [tenkhoa]) VALUES (N'mk04', N'TKDH')
INSERT [dbo].[khoa] ([makhoa], [tenkhoa]) VALUES (N'mk05', N'QTKD')
INSERT [dbo].[lop] ([malop], [tenlop], [makhoa]) VALUES (N'ml01', N'D9CNPM', N'mk01')
INSERT [dbo].[lop] ([malop], [tenlop], [makhoa]) VALUES (N'ml02', N'D9QTANM', N'mk01')
INSERT [dbo].[lop] ([malop], [tenlop], [makhoa]) VALUES (N'ml03', N'D9TMDT', N'mk01')
INSERT [dbo].[lop] ([malop], [tenlop], [makhoa]) VALUES (N'ml04', N'D9KHMT', N'mk01')
INSERT [dbo].[lop] ([malop], [tenlop], [makhoa]) VALUES (N'ml05', N'D9TKDH', N'mk01')
INSERT [dbo].[monhoc] ([mamonhoc], [tenmonhoc], [tongsotiet], [sotinchi], [hocky]) VALUES (N'mh01', N'C', 30, 2, 1)
INSERT [dbo].[monhoc] ([mamonhoc], [tenmonhoc], [tongsotiet], [sotinchi], [hocky]) VALUES (N'mh02', N'C++', 30, 2, 2)
INSERT [dbo].[monhoc] ([mamonhoc], [tenmonhoc], [tongsotiet], [sotinchi], [hocky]) VALUES (N'mh03', N'C#', 30, 2, 3)
INSERT [dbo].[monhoc] ([mamonhoc], [tenmonhoc], [tongsotiet], [sotinchi], [hocky]) VALUES (N'mh04', N'SQL', 30, 2, 4)
INSERT [dbo].[monhoc] ([mamonhoc], [tenmonhoc], [tongsotiet], [sotinchi], [hocky]) VALUES (N'mh05', N'PS', 30, 2, 5)
INSERT [dbo].[monhoc] ([mamonhoc], [tenmonhoc], [tongsotiet], [sotinchi], [hocky]) VALUES (N'mh06', N'AI', 30, 2, 6)
INSERT [dbo].[monhoc] ([mamonhoc], [tenmonhoc], [tongsotiet], [sotinchi], [hocky]) VALUES (N'mh07', N'LR', 30, 2, 7)
INSERT [dbo].[monhoc] ([mamonhoc], [tenmonhoc], [tongsotiet], [sotinchi], [hocky]) VALUES (N'mh08', N'.NET', 30, 2, 8)
INSERT [dbo].[monhoc] ([mamonhoc], [tenmonhoc], [tongsotiet], [sotinchi], [hocky]) VALUES (N'mh09', N'Java', 30, 2, 9)
INSERT [dbo].[sinhvien] ([masv], [hoten], [malop], [ngaysinh], [diachi], [gioitinh], [tenkhoa]) VALUES (N'sv01', N'Vu Quang Truong', N'ml01', N'02-01-1996', N'cam pha', N'nam', N'cntt')
INSERT [dbo].[tongket] ([masv], [diemtkhe10], [diemtkhe4], [sotcdat]) VALUES (N'sv01', NULL, NULL, NULL)
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK_account_sinhvien1] FOREIGN KEY([masv])
REFERENCES [dbo].[sinhvien] ([masv])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK_account_sinhvien1]
GO
ALTER TABLE [dbo].[bangdiem]  WITH CHECK ADD  CONSTRAINT [FK_bangdiem_monhoc] FOREIGN KEY([mamonhoc])
REFERENCES [dbo].[monhoc] ([mamonhoc])
GO
ALTER TABLE [dbo].[bangdiem] CHECK CONSTRAINT [FK_bangdiem_monhoc]
GO
ALTER TABLE [dbo].[bangdiem]  WITH CHECK ADD  CONSTRAINT [FK_bangdiem_sinhvien] FOREIGN KEY([masv])
REFERENCES [dbo].[sinhvien] ([masv])
GO
ALTER TABLE [dbo].[bangdiem] CHECK CONSTRAINT [FK_bangdiem_sinhvien]
GO
ALTER TABLE [dbo].[lop]  WITH CHECK ADD  CONSTRAINT [FK_lop_khoa] FOREIGN KEY([makhoa])
REFERENCES [dbo].[khoa] ([makhoa])
GO
ALTER TABLE [dbo].[lop] CHECK CONSTRAINT [FK_lop_khoa]
GO
ALTER TABLE [dbo].[sinhvien]  WITH CHECK ADD  CONSTRAINT [FK_sinhvien_lop] FOREIGN KEY([malop])
REFERENCES [dbo].[lop] ([malop])
GO
ALTER TABLE [dbo].[sinhvien] CHECK CONSTRAINT [FK_sinhvien_lop]
GO
ALTER TABLE [dbo].[tongket]  WITH CHECK ADD  CONSTRAINT [FK_tongket_sinhvien] FOREIGN KEY([masv])
REFERENCES [dbo].[sinhvien] ([masv])
GO
ALTER TABLE [dbo].[tongket] CHECK CONSTRAINT [FK_tongket_sinhvien]
GO
USE [master]
GO
ALTER DATABASE [SinhVien] SET  READ_WRITE 
GO
