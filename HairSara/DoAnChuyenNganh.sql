USE [master]
GO
/****** Object:  Database [HairSara]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE DATABASE [HairSara]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HairSara', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HairSara.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HairSara_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HairSara_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HairSara] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HairSara].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HairSara] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HairSara] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HairSara] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HairSara] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HairSara] SET ARITHABORT OFF 
GO
ALTER DATABASE [HairSara] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HairSara] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HairSara] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HairSara] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HairSara] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HairSara] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HairSara] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HairSara] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HairSara] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HairSara] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HairSara] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HairSara] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HairSara] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HairSara] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HairSara] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HairSara] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HairSara] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HairSara] SET RECOVERY FULL 
GO
ALTER DATABASE [HairSara] SET  MULTI_USER 
GO
ALTER DATABASE [HairSara] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HairSara] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HairSara] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HairSara] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HairSara] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HairSara] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HairSara', N'ON'
GO
ALTER DATABASE [HairSara] SET QUERY_STORE = OFF
GO
USE [HairSara]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barber]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barber](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameBarber] [nvarchar](max) NOT NULL,
	[IdChiNhanhWork] [int] NOT NULL,
	[IdUserBarber] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Barber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGianBatDau] [datetime2](7) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[IdBarber] [int] NOT NULL,
	[IdDichVu] [int] NOT NULL,
	[IdChiNhanh] [int] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenChiNhanh] [nvarchar](max) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[IdViTri] [int] NOT NULL,
 CONSTRAINT [PK_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameCustomer] [nvarchar](max) NOT NULL,
	[IdUserCustomer] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](max) NOT NULL,
	[MoTaDanhMuc] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDichVu] [nvarchar](max) NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[Gia] [decimal](18, 2) NOT NULL,
	[IdDanhMuc] [int] NOT NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HuyLichHen]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HuyLichHen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LyDoHuyLich] [nvarchar](max) NOT NULL,
	[ThoiGianHuy] [datetime2](7) NOT NULL,
	[IdBooking] [int] NOT NULL,
 CONSTRAINT [PK_HuyLichHen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichHen]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichHen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TrangThaiHoanThanh] [bit] NOT NULL,
	[ThoiGianKetThuc] [datetime2](7) NOT NULL,
	[IdBooking] [int] NOT NULL,
 CONSTRAINT [PK_LichHen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViTri]    Script Date: 3/20/2024 5:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TinhThanhPho] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ViTri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231210090609_Init', N'7.0.13')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Admin', N'Admin', N'1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'Barber', N'Barber', N'1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3', N'User', N'User', N'1')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3', N'2')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1', N'IdentityUser', N'Admin', N'Admin', N'Admin@admin.com', N'Admin@admin.com', 1, N'AQAAAAIAAYagAAAAEPb2i0bOt0BT7vfmNJjLp3mGDaci4KJNpywxuNGwtqHk82f29BobabEraI4XpAhmpA==', N'', N'8946c167-5836-4707-9060-290b015b9a53', NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2', N'IdentityUser', N'Barber1', N'Barber1', N'Barber1@barber.com', N'Barber1@barber.com', 1, N'AQAAAAIAAYagAAAAEE0vInjc8sOArbjDr0M3KwrCRMIrNNsHgjF2vcFywTIXAf1RWc2mc8RuE6ZRkQEtgQ==', N'', N'ebdd9cce-bcac-4eeb-9513-7bfe80ae4092', NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3', N'IdentityUser', N'Barber2', N'Barber2', N'Barber2@barber.com', N'Barber2@barber.com', 1, N'AQAAAAIAAYagAAAAEAugHH5m6hBCCAeoIpZWpf/2hp/uCtrM3BCV8Sz9rpvUHEFosvGPulUO5D9RDC8dWg==', N'', N'8e939e45-da36-461b-8e23-c4c4dba7e76e', NULL, 0, 0, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Barber] ON 

INSERT [dbo].[Barber] ([Id], [NameBarber], [IdChiNhanhWork], [IdUserBarber]) VALUES (1, N'Barber 1', 1, N'2')
INSERT [dbo].[Barber] ([Id], [NameBarber], [IdChiNhanhWork], [IdUserBarber]) VALUES (2, N'Barber 2', 2, N'3')
SET IDENTITY_INSERT [dbo].[Barber] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiNhanh] ON 

INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (1, N'Barber Đỗ Xuân Hợp', N'502 Đỗ Xuân Hợp, Phước Long B, TP. Thủ Đức', 1)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (2, N'Barber Lê Văn Việt', N'302 Lê Văn Việt, Phường Hiệp Phú, TP. Thủ Đức', 1)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (3, N'Barber Lê Thị Riêng', N'113 Lê Thị Riêng, Bến Thành, Quận 1, TP.Hồ Chí Minh', 1)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (4, N'Barber Lê Văn Sỹ', N'339 Lê Văn Sỹ, Phường 13, Quận 3, TP. Hồ Chí Minh', 1)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (5, N'Barber Tuệ Tĩnh', N'Số 5 Tuệ Tĩnh, Hai Bà Trưng, Hà Nội', 2)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (6, N'Barber Triệu Việt Vương', N'Số 38A Triệu Việt Vương, Hai Bà Trưng, Hà Nội', 2)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (7, N'Barber Phạm Hồng Thái', N'Số 37 Phạm Hồng Thái, Trúc Bạch, Ba Đình, Hà Nội', 2)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (8, N'Barber Hạ Hồi', N'Số 30 Hạ Hồi, Hoàn Kiếm, Hà Nội', 2)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (9, N'Barber Đông Khê', N'Số 20 Đường Đông Khê 1, Ngô Quyền, Hải Phòng', 3)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (10, N'Barber Hải Triều', N'Số 86 Hải Triều, Quán Toan, Hải Phòng', 3)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (11, N'Barber Lê Đại Hành', N'24 Lê Đại Hành, Hồng Bàng, Hải Phòng', 3)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (12, N'Barber Lạch Tray', N'100 Lạch Tray, Ngô Quyền, Hải Phòng', 3)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (13, N'Barber Phú Riềng Đỏ', N'722 Phú Riềng Đỏ, P Tân Xuân, Tp Đồng Xoài, Bình Phước', 4)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (14, N'Barber Nguyễn Huệ', N'Đường Nguyễn Huệ, Kp3, P. Tân Đồng, TX. Đồng Xoài, Bình Phước', 4)
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [IdViTri]) VALUES (15, N'Barber Hùng Vương', N'87 Hùng Vương, Tân Bình, Đồng Xoài, Bình Phước', 4)
SET IDENTITY_INSERT [dbo].[ChiNhanh] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MoTaDanhMuc]) VALUES (1, N'Cắt Tóc', N'Bao gồm các dịch vụ cắt gội massage thư giản')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MoTaDanhMuc]) VALUES (2, N'Uốn Tóc', N'Các dịch vụ uốn tóc cao cấp')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MoTaDanhMuc]) VALUES (3, N'Duỗi Tóc', N'Duỗi thẳng tóc xoăn tóc gãy')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MoTaDanhMuc]) VALUES (4, N'Nhuộm Tóc', N'Các dịch vụ nhuộm tóc cao cấp')
INSERT [dbo].[DanhMuc] ([Id], [TenDanhMuc], [MoTaDanhMuc]) VALUES (5, N'Phục Hồi Tóc', N'Phục hồi tóc bị hư tổn')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DichVu] ON 

INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (1, N'Cắt tóc mái', N'Tạo kiểu mái phù hợp với khuôn mặt và phong cách cá nhân', CAST(60000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (2, N'Cắt tóc đều', N'Cắt tóc để tạo ra độ dài và kiểu dáng mong muốn trên toàn bộ tóc', CAST(120000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (3, N'Cắt tóc tạo kiểu', N'Sấy và làm tóc xoăn hoặc làm thẳng', CAST(150000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (4, N'Uốn tóc nhanh', N'Sấy tóc để tạo kiểu xoăn hoặc thẳng nhanh chóng', CAST(320000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (5, N'Uốn tóc lâu dài', N'Sử dụng hóa chất để tạo kiểu xoăn tóc kéo dài thời gian', CAST(700000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (6, N'Uốn tóc xù', N'Tạo kiểu tóc với những sóng tự nhiên giống như kiểu tóc sau khi đi biển', CAST(720000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (7, N'Duỗi tóc keratin', N'Sử dụng sản phẩm chứa keratin để giảm độ xoăn và tăng độ mềm mại cho tóc', CAST(500000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (8, N'Duỗi tóc máy laze', N'Sử dụng máy laze để làm thẳng tóc', CAST(500000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (9, N'Duỗi tóc ion hơi nước', N'Sử dụng hơi nước và thiết bị ion để làm thẳng tóc', CAST(500000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (10, N'Duỗi tóc ổn định', N'Sử dụng hóa chất để làm thẳng tóc và giữ độ thẳng lâu dài', CAST(500000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (11, N'Nhuộm toàn bộ tóc', N'Thay đổi màu sắc của toàn bộ bộ tóc', CAST(900000.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (12, N'Nhuộm phần tóc', N'Nhuộm chỉ một phần cụ thể của tóc, như mái, đuôi, hoặc mèo', CAST(500000.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (13, N'Highlight', N'Tạo những sợi tóc nhấn màu, thường là những sợi tóc màu sáng hơn so với màu tự nhiên của tóc', CAST(950000.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (14, N' Phục hồi bằng dầu nhiệt đới', N'Sử dụng dầu nhiệt đới để làm nóng tóc và tăng cường dưỡng chất cho tóc', CAST(800000.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MoTa], [Gia], [IdDanhMuc]) VALUES (15, N'Phục hồi màu tóc', N'Cho những người đã nhuộm tóc, dịch vụ này giúp bảo quản và tái tạo màu sắc của tóc', CAST(820000.00 AS Decimal(18, 2)), 5)
SET IDENTITY_INSERT [dbo].[DichVu] OFF
GO
SET IDENTITY_INSERT [dbo].[ViTri] ON 

INSERT [dbo].[ViTri] ([Id], [TinhThanhPho]) VALUES (1, N'Hồ Chí Minh')
INSERT [dbo].[ViTri] ([Id], [TinhThanhPho]) VALUES (2, N'Hà Nội')
INSERT [dbo].[ViTri] ([Id], [TinhThanhPho]) VALUES (3, N'Hải Phòng')
INSERT [dbo].[ViTri] ([Id], [TinhThanhPho]) VALUES (4, N'Bình Phước')
SET IDENTITY_INSERT [dbo].[ViTri] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Barber_IdChiNhanhWork]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_Barber_IdChiNhanhWork] ON [dbo].[Barber]
(
	[IdChiNhanhWork] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Barber_IdUserBarber]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Barber_IdUserBarber] ON [dbo].[Barber]
(
	[IdUserBarber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Booking_IdBarber]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_Booking_IdBarber] ON [dbo].[Booking]
(
	[IdBarber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Booking_IdChiNhanh]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_Booking_IdChiNhanh] ON [dbo].[Booking]
(
	[IdChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Booking_IdCustomer]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_Booking_IdCustomer] ON [dbo].[Booking]
(
	[IdCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Booking_IdDichVu]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_Booking_IdDichVu] ON [dbo].[Booking]
(
	[IdDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiNhanh_IdViTri]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiNhanh_IdViTri] ON [dbo].[ChiNhanh]
(
	[IdViTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Customer_IdUserCustomer]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Customer_IdUserCustomer] ON [dbo].[Customer]
(
	[IdUserCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DichVu_IdDanhMuc]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_DichVu_IdDanhMuc] ON [dbo].[DichVu]
(
	[IdDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HuyLichHen_IdBooking]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_HuyLichHen_IdBooking] ON [dbo].[HuyLichHen]
(
	[IdBooking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LichHen_IdBooking]    Script Date: 3/20/2024 5:13:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_LichHen_IdBooking] ON [dbo].[LichHen]
(
	[IdBooking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Barber]  WITH CHECK ADD  CONSTRAINT [FK_Barber_AspNetUsers_IdUserBarber] FOREIGN KEY([IdUserBarber])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Barber] CHECK CONSTRAINT [FK_Barber_AspNetUsers_IdUserBarber]
GO
ALTER TABLE [dbo].[Barber]  WITH CHECK ADD  CONSTRAINT [FK_Barber_ChiNhanh_IdChiNhanhWork] FOREIGN KEY([IdChiNhanhWork])
REFERENCES [dbo].[ChiNhanh] ([Id])
GO
ALTER TABLE [dbo].[Barber] CHECK CONSTRAINT [FK_Barber_ChiNhanh_IdChiNhanhWork]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Barber_IdBarber] FOREIGN KEY([IdBarber])
REFERENCES [dbo].[Barber] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Barber_IdBarber]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_ChiNhanh_IdChiNhanh] FOREIGN KEY([IdChiNhanh])
REFERENCES [dbo].[ChiNhanh] ([Id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_ChiNhanh_IdChiNhanh]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Customer_IdCustomer] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Customer_IdCustomer]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_DichVu_IdDichVu] FOREIGN KEY([IdDichVu])
REFERENCES [dbo].[DichVu] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_DichVu_IdDichVu]
GO
ALTER TABLE [dbo].[ChiNhanh]  WITH CHECK ADD  CONSTRAINT [FK_ChiNhanh_ViTri_IdViTri] FOREIGN KEY([IdViTri])
REFERENCES [dbo].[ViTri] ([Id])
GO
ALTER TABLE [dbo].[ChiNhanh] CHECK CONSTRAINT [FK_ChiNhanh_ViTri_IdViTri]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_AspNetUsers_IdUserCustomer] FOREIGN KEY([IdUserCustomer])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_AspNetUsers_IdUserCustomer]
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD  CONSTRAINT [FK_DichVu_DanhMuc_IdDanhMuc] FOREIGN KEY([IdDanhMuc])
REFERENCES [dbo].[DanhMuc] ([Id])
GO
ALTER TABLE [dbo].[DichVu] CHECK CONSTRAINT [FK_DichVu_DanhMuc_IdDanhMuc]
GO
ALTER TABLE [dbo].[HuyLichHen]  WITH CHECK ADD  CONSTRAINT [FK_HuyLichHen_Booking_IdBooking] FOREIGN KEY([IdBooking])
REFERENCES [dbo].[Booking] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HuyLichHen] CHECK CONSTRAINT [FK_HuyLichHen_Booking_IdBooking]
GO
ALTER TABLE [dbo].[LichHen]  WITH CHECK ADD  CONSTRAINT [FK_LichHen_Booking_IdBooking] FOREIGN KEY([IdBooking])
REFERENCES [dbo].[Booking] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichHen] CHECK CONSTRAINT [FK_LichHen_Booking_IdBooking]
GO
USE [master]
GO
ALTER DATABASE [HairSara] SET  READ_WRITE 
GO
