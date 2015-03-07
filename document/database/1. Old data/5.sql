-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/03/2014 09:33:08
-- Generated from EDMX file: E:\6. My Project\2. mvc\trunk\WebApplication1\Models\DBModel.edmx
-- --------------------------------------------------

create database ProjectH
go
SET QUOTED_IDENTIFIER OFF;
GO
USE [ProjectH];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetRoles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetUsers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[FK_BaiViet_AspNetUsers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BaiViets] DROP CONSTRAINT [FK_BaiViet_AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_Truong_ThanhPho]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Truongs] DROP CONSTRAINT [FK_Truong_ThanhPho];
GO
IF OBJECT_ID(N'[dbo].[FK_TruongNganh_KhoiThi]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TruongNganhs] DROP CONSTRAINT [FK_TruongNganh_KhoiThi];
GO
IF OBJECT_ID(N'[dbo].[FK_TruongNganh_Nganh]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TruongNganhs] DROP CONSTRAINT [FK_TruongNganh_Nganh];
GO
IF OBJECT_ID(N'[dbo].[FK_TruongNganh_Truong]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TruongNganhs] DROP CONSTRAINT [FK_TruongNganh_Truong];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AspNetRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserClaims]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserClaims];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserLogins]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserLogins];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[BaiViets]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BaiViets];
GO
IF OBJECT_ID(N'[dbo].[C__MigrationHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[C__MigrationHistory];
GO
IF OBJECT_ID(N'[dbo].[KhoiThis]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KhoiThis];
GO
IF OBJECT_ID(N'[dbo].[Nganhs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Nganhs];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[ThanhPhoes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ThanhPhoes];
GO
IF OBJECT_ID(N'[dbo].[TruongNganhs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TruongNganhs];
GO
IF OBJECT_ID(N'[dbo].[Truongs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Truongs];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

USE [ProjectH]
GO
/****** Object:  Table [dbo].[C__MigrationHistory]    Script Date: 10/03/2014 17:30:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[C__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_C__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/03/2014 17:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/03/2014 17:30:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/03/2014 17:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[AspNetRoles_Id] [nvarchar](128) NOT NULL,
	[AspNetUsers_Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[AspNetRoles_Id] ASC,
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/03/2014 17:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[User_Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/03/2014 17:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[UserId] [nvarchar](128) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id]    Script Date: 10/03/2014 17:30:34 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id]
GO
/****** Object:  ForeignKey [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]    Script Date: 10/03/2014 17:30:35 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserRoles_AspNetRole]    Script Date: 10/03/2014 17:30:35 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRole] FOREIGN KEY([AspNetRoles_Id])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRole]
GO
/****** Object:  ForeignKey [FK_AspNetUserRoles_AspNetUser]    Script Date: 10/03/2014 17:30:36 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUser] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUser]
GO

GO

-- Creating table 'BaiViets'
CREATE TABLE [dbo].[BaiViets] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [TieuDe] nvarchar(max)  NOT NULL,
    [NoiDung] nvarchar(max)  NOT NULL,
    [NguoiDang] nvarchar(128)  NOT NULL,
    [NgayCapNhat] datetime  NOT NULL,
    [Trangthai] int  NOT NULL
);
GO


-- Creating table 'KhoiThis'
CREATE TABLE [dbo].[KhoiThis] (
    [Ten] nchar(10)  NOT NULL,
    [ID] int IDENTITY(1,1) NOT NULL,
    [MoTa] nvarchar(max)  NULL
);
GO

-- Creating table 'Nganhs'
CREATE TABLE [dbo].[Nganhs] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Ten] nvarchar(max)  NOT NULL,
    [MaNganh] nchar(10)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'ThanhPhoes'
CREATE TABLE [dbo].[ThanhPhoes] (
    [Ten] nvarchar(50)  NOT NULL,
    [ID] int IDENTITY(1,1) NOT NULL,
    [MoTa] nvarchar(max)  NULL
);
GO

-- Creating table 'TruongNganhs'
CREATE TABLE [dbo].[TruongNganhs] (
    [IDTruong] int  NOT NULL,
    [IDNganh] int  NOT NULL,
    [KhoiThi] int  NOT NULL,
    [Diem1] float  NULL,
    [Diem2] float  NULL,
    [Diem3] float  NULL,
    [NgayCapNhat] datetime  NOT NULL
);
GO

-- Creating table 'Truongs'
CREATE TABLE [dbo].[Truongs] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Ten] nvarchar(max)  NOT NULL,
    [Website] nvarchar(max)  NULL,
    [IDThanhPho] int  NOT NULL,
    [MaTruong] nchar(10)  NULL,
    [LoaiTruong] char(2)  NULL,
    [linkLogo] nvarchar(max)  NULL
);
GO


-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'BaiViets'
ALTER TABLE [dbo].[BaiViets]
ADD CONSTRAINT [PK_BaiViets]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'KhoiThis'
ALTER TABLE [dbo].[KhoiThis]
ADD CONSTRAINT [PK_KhoiThis]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Nganhs'
ALTER TABLE [dbo].[Nganhs]
ADD CONSTRAINT [PK_Nganhs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [ID] in table 'ThanhPhoes'
ALTER TABLE [dbo].[ThanhPhoes]
ADD CONSTRAINT [PK_ThanhPhoes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [IDTruong], [IDNganh], [KhoiThi] in table 'TruongNganhs'
ALTER TABLE [dbo].[TruongNganhs]
ADD CONSTRAINT [PK_TruongNganhs]
    PRIMARY KEY CLUSTERED ([IDTruong], [IDNganh], [KhoiThi] ASC);
GO

-- Creating primary key on [ID] in table 'Truongs'
ALTER TABLE [dbo].[Truongs]
ADD CONSTRAINT [PK_Truongs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO


-- Creating foreign key on [NguoiDang] in table 'BaiViets'
ALTER TABLE [dbo].[BaiViets]
ADD CONSTRAINT [FK_BaiViet_AspNetUsers]
    FOREIGN KEY ([NguoiDang])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_BaiViet_AspNetUsers'
CREATE INDEX [IX_FK_BaiViet_AspNetUsers]
ON [dbo].[BaiViets]
    ([NguoiDang]);
GO

-- Creating foreign key on [KhoiThi] in table 'TruongNganhs'
ALTER TABLE [dbo].[TruongNganhs]
ADD CONSTRAINT [FK_TruongNganh_KhoiThi]
    FOREIGN KEY ([KhoiThi])
    REFERENCES [dbo].[KhoiThis]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TruongNganh_KhoiThi'
CREATE INDEX [IX_FK_TruongNganh_KhoiThi]
ON [dbo].[TruongNganhs]
    ([KhoiThi]);
GO

-- Creating foreign key on [IDNganh] in table 'TruongNganhs'
ALTER TABLE [dbo].[TruongNganhs]
ADD CONSTRAINT [FK_TruongNganh_Nganh]
    FOREIGN KEY ([IDNganh])
    REFERENCES [dbo].[Nganhs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TruongNganh_Nganh'
CREATE INDEX [IX_FK_TruongNganh_Nganh]
ON [dbo].[TruongNganhs]
    ([IDNganh]);
GO

-- Creating foreign key on [IDThanhPho] in table 'Truongs'
ALTER TABLE [dbo].[Truongs]
ADD CONSTRAINT [FK_Truong_ThanhPho]
    FOREIGN KEY ([IDThanhPho])
    REFERENCES [dbo].[ThanhPhoes]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Truong_ThanhPho'
CREATE INDEX [IX_FK_Truong_ThanhPho]
ON [dbo].[Truongs]
    ([IDThanhPho]);
GO

-- Creating foreign key on [IDTruong] in table 'TruongNganhs'
ALTER TABLE [dbo].[TruongNganhs]
ADD CONSTRAINT [FK_TruongNganh_Truong]
    FOREIGN KEY ([IDTruong])
    REFERENCES [dbo].[Truongs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
