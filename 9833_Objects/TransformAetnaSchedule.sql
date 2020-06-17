USE [BSA]
GO

ALTER TABLE [dbo].[TransformAetnaSchedule] DROP CONSTRAINT [DF__Transform__RowDa__398D8EEE]
GO

ALTER TABLE [dbo].[TransformAetnaSchedule] DROP CONSTRAINT [DF__Transform__Recor__38996AB5]
GO

/****** Object:  Table [dbo].[TransformAetnaSchedule]    Script Date: 6/17/2020 5:33:24 PM ******/
DROP TABLE [dbo].[TransformAetnaSchedule]
GO

/****** Object:  Table [dbo].[TransformAetnaSchedule]    Script Date: 6/17/2020 5:33:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TransformAetnaSchedule](
	[Area] [nvarchar](100) NULL,
	[RatingSystem] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Modifier] [nvarchar](100) NULL,
	[Description] [nvarchar](500) NULL,
	[Specialty] [nvarchar](100) NULL,
	[Product] [nvarchar](100) NULL,
	[PlaceOfService] [nvarchar](100) NULL,
	[Amount] [decimal](18, 2) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[RecordID] [uniqueidentifier] NOT NULL,
	[RowDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TransformAetnaSchedule] ADD  DEFAULT (newid()) FOR [RecordID]
GO

ALTER TABLE [dbo].[TransformAetnaSchedule] ADD  DEFAULT (getdate()) FOR [RowDate]
GO


