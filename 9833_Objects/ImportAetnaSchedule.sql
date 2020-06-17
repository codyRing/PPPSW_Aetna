USE [BSA]
GO

/****** Object:  Table [dbo].[ImportAetnaSchedule]    Script Date: 6/17/2020 5:32:20 PM ******/
DROP TABLE [dbo].[ImportAetnaSchedule]
GO

/****** Object:  Table [dbo].[ImportAetnaSchedule]    Script Date: 6/17/2020 5:32:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ImportAetnaSchedule](
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
	[EndDate] [date] NOT NULL
) ON [PRIMARY]
GO





--BULK INSERT dbo.ImportAetnaSchedule
----FROM 'C:\Users\crissler.SSD-DB6\Documents\Aetna_9833_Fixed.csv' WITH (
--FROM 'C:\Users\crissler\Documents\Aetna_9833_Fixed.csv' WITH (
----FROM 'C:\Documents\Aetna_9833_Fixed.csv' WITH (
--  FIRSTROW = 2
--  ,FIELDTERMINATOR = ','
--  ,ROWTERMINATOR = '\n'
--  ,TABLOCK
--  )