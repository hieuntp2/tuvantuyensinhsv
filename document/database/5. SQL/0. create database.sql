USE [ProjectH]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/21/2014 17:02:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/21/2014 17:02:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/21/2014 17:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](128) NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nganhs]    Script Date: 10/21/2014 17:02:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganhs](
	[Ten] [nvarchar](max) NOT NULL,
	[MaNganh] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Nganhs_1] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoiThis]    Script Date: 10/21/2014 17:02:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoiThis](
	[Ten] [nchar](10) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_KhoiThis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhPhoes]    Script Date: 10/21/2014 17:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhPhoes](
	[Ten] [nvarchar](50) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThanhPhoes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/21/2014 17:02:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RatePost]    Script Date: 10/21/2014 17:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatePost](
	[IDBaiViet] [int] NOT NULL,
	[IDUsername] [nvarchar](128) NOT NULL,
	[Like] [bit] NOT NULL,
 CONSTRAINT [PK_RatePost] PRIMARY KEY CLUSTERED 
(
	[IDBaiViet] ASC,
	[IDUsername] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/21/2014 17:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[UserId] [nvarchar](128) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/21/2014 17:02:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[User_Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiViets]    Script Date: 10/21/2014 17:02:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViets](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NguoiDang] [nvarchar](128) NOT NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[Trangthai] [int] NOT NULL,
 CONSTRAINT [PK_BaiViets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternalMessage]    Script Date: 10/21/2014 17:02:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalMessage](
	[From] [nvarchar](128) NOT NULL,
	[To] [nvarchar](128) NOT NULL,
	[Mesage] [ntext] NULL,
	[DateCreate] [datetime] NOT NULL,
 CONSTRAINT [PK_InternalMessage] PRIMARY KEY CLUSTERED 
(
	[From] ASC,
	[To] ASC,
	[DateCreate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongNganhs]    Script Date: 10/21/2014 17:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongNganhs](
	[MaTruong] [nvarchar](10) NOT NULL,
	[MaNganh] [nvarchar](10) NOT NULL,
	[KhoiThi] [nvarchar](128) NOT NULL,
	[Diem1] [float] NULL,
	[Diem2] [float] NULL,
	[Diem3] [float] NULL,
	[NgayCapNhat] [datetime] NOT NULL,
 CONSTRAINT [PK_TruongNganhs] PRIMARY KEY CLUSTERED 
(
	[MaTruong] ASC,
	[MaNganh] ASC,
	[KhoiThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Truongs]    Script Date: 10/21/2014 17:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Truongs](
	[Ten] [nvarchar](max) NOT NULL,
	[Website] [nvarchar](max) NULL,
	[IDThanhPho] [int] NOT NULL,
	[MaTruong] [nvarchar](10) NOT NULL,
	[LoaiTruong] [char](2) NULL,
	[linkLogo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Truongs_1] PRIMARY KEY CLUSTERED 
(
	[MaTruong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id]    Script Date: 10/21/2014 17:02:14 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 10/21/2014 17:02:14 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 10/21/2014 17:02:15 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 10/21/2014 17:02:15 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_BaiViets_AspNetUsers]    Script Date: 10/21/2014 17:02:17 ******/
ALTER TABLE [dbo].[BaiViets]  WITH CHECK ADD  CONSTRAINT [FK_BaiViets_AspNetUsers] FOREIGN KEY([NguoiDang])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BaiViets] CHECK CONSTRAINT [FK_BaiViets_AspNetUsers]
GO
/****** Object:  ForeignKey [FK_InternalMessage_AspNetUsers]    Script Date: 10/21/2014 17:02:17 ******/
ALTER TABLE [dbo].[InternalMessage]  WITH CHECK ADD  CONSTRAINT [FK_InternalMessage_AspNetUsers] FOREIGN KEY([From])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[InternalMessage] CHECK CONSTRAINT [FK_InternalMessage_AspNetUsers]
GO
/****** Object:  ForeignKey [FK_InternalMessage_AspNetUsers1]    Script Date: 10/21/2014 17:02:17 ******/
ALTER TABLE [dbo].[InternalMessage]  WITH CHECK ADD  CONSTRAINT [FK_InternalMessage_AspNetUsers1] FOREIGN KEY([To])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[InternalMessage] CHECK CONSTRAINT [FK_InternalMessage_AspNetUsers1]
GO
/****** Object:  ForeignKey [FK_RatePost_AspNetUsers]    Script Date: 10/21/2014 17:02:19 ******/
ALTER TABLE [dbo].[RatePost]  WITH CHECK ADD  CONSTRAINT [FK_RatePost_AspNetUsers] FOREIGN KEY([IDUsername])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RatePost] CHECK CONSTRAINT [FK_RatePost_AspNetUsers]
GO
/****** Object:  ForeignKey [FK_RatePost_BaiViets]    Script Date: 10/21/2014 17:02:19 ******/
ALTER TABLE [dbo].[RatePost]  WITH CHECK ADD  CONSTRAINT [FK_RatePost_BaiViets] FOREIGN KEY([IDBaiViet])
REFERENCES [dbo].[BaiViets] ([ID])
GO
ALTER TABLE [dbo].[RatePost] CHECK CONSTRAINT [FK_RatePost_BaiViets]
GO
/****** Object:  ForeignKey [FK_TruongNganhs_Nganhs]    Script Date: 10/21/2014 17:02:21 ******/
ALTER TABLE [dbo].[TruongNganhs]  WITH CHECK ADD  CONSTRAINT [FK_TruongNganhs_Nganhs] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[Nganhs] ([MaNganh])
GO
ALTER TABLE [dbo].[TruongNganhs] CHECK CONSTRAINT [FK_TruongNganhs_Nganhs]
GO
/****** Object:  ForeignKey [FK_TruongNganhs_Truongs]    Script Date: 10/21/2014 17:02:21 ******/
ALTER TABLE [dbo].[TruongNganhs]  WITH CHECK ADD  CONSTRAINT [FK_TruongNganhs_Truongs] FOREIGN KEY([MaTruong])
REFERENCES [dbo].[Truongs] ([MaTruong])
GO
ALTER TABLE [dbo].[TruongNganhs] CHECK CONSTRAINT [FK_TruongNganhs_Truongs]
GO
/****** Object:  ForeignKey [FK_Truong_ThanhPho]    Script Date: 10/21/2014 17:02:21 ******/
ALTER TABLE [dbo].[Truongs]  WITH CHECK ADD  CONSTRAINT [FK_Truong_ThanhPho] FOREIGN KEY([IDThanhPho])
REFERENCES [dbo].[ThanhPhoes] ([ID])
GO
ALTER TABLE [dbo].[Truongs] CHECK CONSTRAINT [FK_Truong_ThanhPho]
GO
