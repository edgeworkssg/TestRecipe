/****** Object:  Table [dbo].[Item]    Script Date: 2020-08-19 12:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ItemNo] [varchar](50) NOT NULL,
	[ItemName] [nvarchar](160) NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
	[RetailPrice] [money] NOT NULL,
	[FactoryPrice] [money] NOT NULL,
	[UOM] [nvarchar](50) NULL,
 CONSTRAINT [PK_Item_1] PRIMARY KEY CLUSTERED 
(
	[ItemNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[RecipeHeader]    Script Date: 2020-08-19 12:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeHeader](
	[RecipeHeaderID] [varchar](64) NOT NULL,
	[RecipeName] [varchar](150) NOT NULL,
	[ItemNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RecipeHeader] PRIMARY KEY CLUSTERED 
(
	[RecipeHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'10001', N'Vegetables', N'Weight', 3.00, 1.0600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'10002', N'Meat', N'Weight', 5.50, 1.0600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'888881234567', N'Pepsi Cola', N'Product', 2.00, 1.3, N'pcs')
GO
