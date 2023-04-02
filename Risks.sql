USE [Risk]
GO

/****** Object:  Table [dbo].[Risks]    Script Date: 01/04/2023 10:45:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Risks](
	[RiskId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](2000) NULL,
	[Description] [nvarchar](1000) NULL,
	[Isadmin] [bit] NULL,
	[UserId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Risks] PRIMARY KEY CLUSTERED 
(
	[RiskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Risks]  WITH CHECK ADD  CONSTRAINT [FK_Risks_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO

ALTER TABLE [dbo].[Risks] CHECK CONSTRAINT [FK_Risks_Users]
GO


