
USE ProjectH
GO
/****** Object:  Table [dbo].[Nganh]    Script Date: 09/18/2014 17:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganh](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
	[MaNganh] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Nganh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoiThi]    Script Date: 09/18/2014 17:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoiThi](
	[Ten] [nchar](10) NOT NULL,
 CONSTRAINT [PK_KhoiThi] PRIMARY KEY CLUSTERED 
(
	[Ten] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhPho]    Script Date: 09/18/2014 17:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhPho](
	[Ten] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ThanhPho] PRIMARY KEY CLUSTERED 
(
	[Ten] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongNganh]    Script Date: 09/18/2014 17:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongNganh](
	[IDTruong] [int] NOT NULL,
	[IDNganh] [int] NOT NULL,
	[KhoiThi] [nchar](10) NOT NULL,
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
/****** Object:  Table [dbo].[Truong]    Script Date: 09/18/2014 17:29:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Truong](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[Website] [text] NULL,
	[ThanhPho] [nvarchar](50) NULL,
 CONSTRAINT [PK_Truong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Truong_ThanhPho]    Script Date: 09/18/2014 17:29:21 ******/
ALTER TABLE [dbo].[Truong]  WITH CHECK ADD  CONSTRAINT [FK_Truong_ThanhPho] FOREIGN KEY([ThanhPho])
REFERENCES [dbo].[ThanhPho] ([Ten])
GO
ALTER TABLE [dbo].[Truong] CHECK CONSTRAINT [FK_Truong_ThanhPho]
GO
/****** Object:  ForeignKey [FK_TruongNganh_KhoiThi]    Script Date: 09/18/2014 17:29:22 ******/
ALTER TABLE [dbo].[TruongNganh]  WITH CHECK ADD  CONSTRAINT [FK_TruongNganh_KhoiThi] FOREIGN KEY([KhoiThi])
REFERENCES [dbo].[KhoiThi] ([Ten])
GO
ALTER TABLE [dbo].[TruongNganh] CHECK CONSTRAINT [FK_TruongNganh_KhoiThi]
GO
/****** Object:  ForeignKey [FK_TruongNganh_Nganh]    Script Date: 09/18/2014 17:29:22 ******/
ALTER TABLE [dbo].[TruongNganh]  WITH CHECK ADD  CONSTRAINT [FK_TruongNganh_Nganh] FOREIGN KEY([IDNganh])
REFERENCES [dbo].[Nganh] ([ID])
GO
ALTER TABLE [dbo].[TruongNganh] CHECK CONSTRAINT [FK_TruongNganh_Nganh]
GO
/****** Object:  ForeignKey [FK_TruongNganh_Truong]    Script Date: 09/18/2014 17:29:22 ******/
ALTER TABLE [dbo].[TruongNganh]  WITH CHECK ADD  CONSTRAINT [FK_TruongNganh_Truong] FOREIGN KEY([IDTruong])
REFERENCES [dbo].[Truong] ([ID])
GO
ALTER TABLE [dbo].[TruongNganh] CHECK CONSTRAINT [FK_TruongNganh_Truong]
GO
