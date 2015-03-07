USE [ProjectH]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 02/05/2015 16:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Tieude] [nvarchar](max) NULL,
	[Noidung] [ntext] NULL,
	[userid] [nvarchar](128) NULL,
	[Ngaydang] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Questions_AspNetUsers]    Script Date: 02/05/2015 16:49:25 ******/
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_AspNetUsers] FOREIGN KEY([userid])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_AspNetUsers]
GO
