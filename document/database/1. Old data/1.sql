USE [ProjectH]
GO
/****** Object:  Table [dbo].[KhoiThi]    Script Date: 09/19/2014 17:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoiThi](
	[Ten] [nchar](10) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MoTa] [text] NULL,
 CONSTRAINT [PK_KhoiThi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhPho]    Script Date: 09/19/2014 17:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhPho](
	[Ten] [nvarchar](50) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MoTa] [text] NULL,
 CONSTRAINT [PK_ThanhPho] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nganh]    Script Date: 09/19/2014 17:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
	[MaNganh] [nchar](10) NULL,
 CONSTRAINT [PK_Nganh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongNganh]    Script Date: 09/19/2014 17:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongNganh](
	[IDTruong] [int] NOT NULL,
	[IDNganh] [int] NOT NULL,
	[KhoiThi] [int] NOT NULL,
	[Diem1] [int] NULL,
	[Diem2] [int] NULL,
	[Diem3] [int] NULL,
	[NgayCapNhat] [datetime] NOT NULL,
 CONSTRAINT [PK_TruongNganh] PRIMARY KEY CLUSTERED 
(
	[IDTruong] ASC,
	[IDNganh] ASC,
	[KhoiThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Truong]    Script Date: 09/19/2014 17:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Truong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
	[Website] [text] NULL,
	[IDThanhPho] [int] NOT NULL,
	[MaTruong] [nchar](10) NULL,
 CONSTRAINT [PK_Truong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Truong_ThanhPho]    Script Date: 09/19/2014 17:53:00 ******/
ALTER TABLE [dbo].[Truong]  WITH CHECK ADD  CONSTRAINT [FK_Truong_ThanhPho] FOREIGN KEY([IDThanhPho])
REFERENCES [dbo].[ThanhPho] ([ID])
GO
ALTER TABLE [dbo].[Truong] CHECK CONSTRAINT [FK_Truong_ThanhPho]
GO
/****** Object:  ForeignKey [FK_TruongNganh_KhoiThi]    Script Date: 09/19/2014 17:53:01 ******/
ALTER TABLE [dbo].[TruongNganh]  WITH CHECK ADD  CONSTRAINT [FK_TruongNganh_KhoiThi] FOREIGN KEY([KhoiThi])
REFERENCES [dbo].[KhoiThi] ([ID])
GO
ALTER TABLE [dbo].[TruongNganh] CHECK CONSTRAINT [FK_TruongNganh_KhoiThi]
GO
/****** Object:  ForeignKey [FK_TruongNganh_Nganh]    Script Date: 09/19/2014 17:53:01 ******/
ALTER TABLE [dbo].[TruongNganh]  WITH CHECK ADD  CONSTRAINT [FK_TruongNganh_Nganh] FOREIGN KEY([IDNganh])
REFERENCES [dbo].[Nganh] ([ID])
GO
ALTER TABLE [dbo].[TruongNganh] CHECK CONSTRAINT [FK_TruongNganh_Nganh]
GO
/****** Object:  ForeignKey [FK_TruongNganh_Truong]    Script Date: 09/19/2014 17:53:01 ******/
ALTER TABLE [dbo].[TruongNganh]  WITH CHECK ADD  CONSTRAINT [FK_TruongNganh_Truong] FOREIGN KEY([IDTruong])
REFERENCES [dbo].[Truong] ([ID])
GO
ALTER TABLE [dbo].[TruongNganh] CHECK CONSTRAINT [FK_TruongNganh_Truong]
GO
