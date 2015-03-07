
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/28/2014 09:59:56
-- Generated from EDMX file: F:\5. Project\2.Admin\trunk\WebApplication1\Models\DBModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE db60febe4327a04b528600a3b400308405;
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_Truong_ThanhPho]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Truong] DROP CONSTRAINT [FK_Truong_ThanhPho];
GO
IF OBJECT_ID(N'[dbo].[FK_TruongNganh_KhoiThi]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TruongNganh] DROP CONSTRAINT [FK_TruongNganh_KhoiThi];
GO
IF OBJECT_ID(N'[dbo].[FK_TruongNganh_Nganh]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TruongNganh] DROP CONSTRAINT [FK_TruongNganh_Nganh];
GO
IF OBJECT_ID(N'[dbo].[FK_TruongNganh_Truong]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TruongNganh] DROP CONSTRAINT [FK_TruongNganh_Truong];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[__MigrationHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[__MigrationHistory];
GO
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
IF OBJECT_ID(N'[dbo].[KhoiThi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KhoiThi];
GO
IF OBJECT_ID(N'[dbo].[Nganh]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Nganh];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[ThanhPho]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ThanhPho];
GO
IF OBJECT_ID(N'[dbo].[Truong]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Truong];
GO
IF OBJECT_ID(N'[dbo].[TruongNganh]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TruongNganh];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'KhoiThis'
CREATE TABLE [dbo].[KhoiThis] (
    [Ten] nchar(10)  NOT NULL,
    [ID] int IDENTITY(1,1) NOT NULL,
    [MoTa] varchar(max)  NULL
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
    [MoTa] varchar(max)  NULL
);
GO

-- Creating table 'Truongs'
CREATE TABLE [dbo].[Truongs] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Ten] nvarchar(max)  NOT NULL,
    [Website] varchar(max)  NULL,
    [IDThanhPho] int  NOT NULL,
    [MaTruong] nchar(10)  NULL,
    [LoaiTruong] char(2)  NULL
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

-- Creating table 'C__MigrationHistory'
CREATE TABLE [dbo].[C__MigrationHistory] (
    [MigrationId] nvarchar(150)  NOT NULL,
    [ContextKey] nvarchar(300)  NOT NULL,
    [Model] varbinary(max)  NOT NULL,
    [ProductVersion] nvarchar(32)  NOT NULL
);
GO

-- Creating table 'AspNetRoles'
CREATE TABLE [dbo].[AspNetRoles] (
    [Id] nvarchar(128)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AspNetUserClaims'
CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ClaimType] nvarchar(max)  NULL,
    [ClaimValue] nvarchar(max)  NULL,
    [User_Id] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUserLogins'
CREATE TABLE [dbo].[AspNetUserLogins] (
    [UserId] nvarchar(128)  NOT NULL,
    [LoginProvider] nvarchar(128)  NOT NULL,
    [ProviderKey] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUsers'
CREATE TABLE [dbo].[AspNetUsers] (
    [Id] nvarchar(128)  NOT NULL,
    [UserName] nvarchar(max)  NULL,
    [PasswordHash] nvarchar(max)  NULL,
    [SecurityStamp] nvarchar(max)  NULL,
    [Discriminator] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUserRoles'
CREATE TABLE [dbo].[AspNetUserRoles] (
    [AspNetRoles_Id] nvarchar(128)  NOT NULL,
    [AspNetUsers_Id] nvarchar(128)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

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

-- Creating primary key on [ID] in table 'Truongs'
ALTER TABLE [dbo].[Truongs]
ADD CONSTRAINT [PK_Truongs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [IDTruong], [IDNganh], [KhoiThi] in table 'TruongNganhs'
ALTER TABLE [dbo].[TruongNganhs]
ADD CONSTRAINT [PK_TruongNganhs]
    PRIMARY KEY CLUSTERED ([IDTruong], [IDNganh], [KhoiThi] ASC);
GO

-- Creating primary key on [MigrationId], [ContextKey] in table 'C__MigrationHistory'
ALTER TABLE [dbo].[C__MigrationHistory]
ADD CONSTRAINT [PK_C__MigrationHistory]
    PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetRoles'
ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_AspNetRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_AspNetUserClaims]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [UserId], [LoginProvider], [ProviderKey] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_AspNetUserLogins]
    PRIMARY KEY CLUSTERED ([UserId], [LoginProvider], [ProviderKey] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [AspNetRoles_Id], [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [PK_AspNetUserRoles]
    PRIMARY KEY CLUSTERED ([AspNetRoles_Id], [AspNetUsers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [KhoiThi] in table 'TruongNganhs'
ALTER TABLE [dbo].[TruongNganhs]
ADD CONSTRAINT [FK_TruongNganh_KhoiThi]
    FOREIGN KEY ([KhoiThi])
    REFERENCES [dbo].[KhoiThis]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

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
GO

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
GO

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

-- Creating foreign key on [User_Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id'
CREATE INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id]
ON [dbo].[AspNetUserClaims]
    ([User_Id]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetRoles_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRole]
    FOREIGN KEY ([AspNetRoles_Id])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUser]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUserRoles_AspNetUser'
CREATE INDEX [IX_FK_AspNetUserRoles_AspNetUser]
ON [dbo].[AspNetUserRoles]
    ([AspNetUsers_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------