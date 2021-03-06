USE [RYNativeWebDB]
GO

/****** Object:  Table [dbo].[Activity]    Script Date: 2016/1/4 10:47:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Activity](
	[ActivityID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL CONSTRAINT [DF_Activity_Title]  DEFAULT (''),
	[SortID] [int] NOT NULL CONSTRAINT [DF_Activity_SortID]  DEFAULT ((0)),
	[ImageUrl] [nvarchar](100) NOT NULL CONSTRAINT [DF_Activity_ImageUrl]  DEFAULT (''),
	[Time] [nvarchar](50) NOT NULL CONSTRAINT [DF_Activity_Time]  DEFAULT (''),
	[Describe] [text] NOT NULL CONSTRAINT [DF_Activity_Describe]  DEFAULT (''),
	[IsRecommend] [bit] NOT NULL CONSTRAINT [DF_Activity_IsRecommend]  DEFAULT ((0)),
	[InputDate] [datetime] NOT NULL CONSTRAINT [DF_Activity_InputDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[ActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Activity', @level2type=N'COLUMN',@level2name=N'Title'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Activity', @level2type=N'COLUMN',@level2name=N'SortID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Activity', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Activity', @level2type=N'COLUMN',@level2name=N'Time'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Activity', @level2type=N'COLUMN',@level2name=N'Describe'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐至首页' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Activity', @level2type=N'COLUMN',@level2name=N'IsRecommend'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Activity', @level2type=N'COLUMN',@level2name=N'InputDate'
GO

/****** Object:  Table [dbo].[Ads]    Script Date: 2016/1/4 10:48:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ads](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](200) NOT NULL CONSTRAINT [DF_AdImage_Title]  DEFAULT (''),
	[ResourceURL] [nvarchar](500) NOT NULL CONSTRAINT [DF_Table_1_ImageUrl]  DEFAULT (''),
	[LinkURL] [nvarchar](500) NOT NULL CONSTRAINT [DF_AdImage_LinkURL]  DEFAULT (''),
	[Type] [tinyint] NOT NULL CONSTRAINT [DF_AdImage_Type]  DEFAULT ((0)),
	[SortID] [int] NOT NULL,
	[Remark] [nvarchar](500) NOT NULL CONSTRAINT [DF_AdImage_Remark]  DEFAULT (''),
 CONSTRAINT [PK_Ads] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'广告标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ads', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ads', @level2type=N'COLUMN',@level2name=N'Title'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ads', @level2type=N'COLUMN',@level2name=N'ResourceURL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ads', @level2type=N'COLUMN',@level2name=N'LinkURL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'广告图片类型 0:网站首页轮换广告 1:大厅广告 2:手机首页banner广告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ads', @level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ads', @level2type=N'COLUMN',@level2name=N'SortID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ads', @level2type=N'COLUMN',@level2name=N'Remark'
GO

/****** Object:  Table [dbo].[AwardInfo]    Script Date: 2016/1/4 10:48:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AwardInfo](
	[AwardID] [int] IDENTITY(1,1) NOT NULL,
	[AwardName] [nvarchar](32) NOT NULL,
	[TypeID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Inventory] [int] NOT NULL,
	[BuyCount] [int] NOT NULL CONSTRAINT [DF_AwardInfo_BuyCount]  DEFAULT ((0)),
	[SmallImage] [nvarchar](200) NOT NULL,
	[BigImage] [nvarchar](200) NOT NULL,
	[NeedInfo] [int] NOT NULL,
	[IsMember] [bit] NOT NULL CONSTRAINT [DF_AwardInfo_MemberKind]  DEFAULT ((0)),
	[IsReturn] [bit] NOT NULL CONSTRAINT [DF_AwardInfo_IsReturn]  DEFAULT ((0)),
	[SortID] [int] NOT NULL CONSTRAINT [DF_GameAward_SortID]  DEFAULT ((0)),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GameAward_Nullity]  DEFAULT ((0)),
	[Description] [ntext] NOT NULL CONSTRAINT [DF_GameAward_Description]  DEFAULT (''),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_GameAward_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_GameAward] PRIMARY KEY CLUSTERED 
(
	[AwardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'AwardID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'AwardName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'TypeID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'Price'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'Inventory'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已售数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'BuyCount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展示小图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'SmallImage'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展示大图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'BigImage'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买是需要填写的信息(用2进制的位来配置，0为不需要，1为需要。位从右至左配置的项分别为真实姓名，手机号，QQ号，收货地址及邮编)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'NeedInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否需要蓝钻' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'IsMember'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许退货(0:不允许,1允许)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'IsReturn'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'SortID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'Nullity'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardInfo', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO

/****** Object:  Table [dbo].[AwardOrder]    Script Date: 2016/1/4 10:48:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AwardOrder](
	[OrderID] [int] IDENTITY(100000,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[AwardID] [int] NOT NULL,
	[AwardPrice] [int] NOT NULL,
	[AwardCount] [int] NOT NULL,
	[TotalAmount] [int] NOT NULL,
	[Compellation] [nvarchar](16) NULL,
	[MobilePhone] [nvarchar](16) NULL,
	[QQ] [nvarchar](32) NULL,
	[Province] [int] NULL,
	[City] [int] NULL,
	[Area] [int] NULL,
	[DwellingPlace] [nvarchar](128) NULL,
	[PostalCode] [nvarchar](8) NULL,
	[OrderStatus] [int] NOT NULL CONSTRAINT [DF_AwardOrder_OrderStatus]  DEFAULT ((0)),
	[BuyIP] [nvarchar](15) NOT NULL,
	[BuyDate] [datetime] NOT NULL CONSTRAINT [DF_AwardOrder_BuyDate]  DEFAULT (getdate()),
	[SolveNote] [text] NOT NULL CONSTRAINT [DF_GameAwardRecord_SolveNote]  DEFAULT (''),
	[SolveDate] [datetime] NULL,
 CONSTRAINT [PK_AwardOrder] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'OrderID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'UserID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'AwardID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'AwardPrice'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'AwardCount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'花费金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'TotalAmount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'Compellation'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'QQ'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'Province'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'City'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'Area'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'DwellingPlace'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'PostalCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态(0:新订单,1:已发货,2:已收货,3:申请退货,4:同意退货等待客户发货,5:拒绝退货,6:退货成功)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'OrderStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'BuyIP'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'BuyDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'SolveNote'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardOrder', @level2type=N'COLUMN',@level2name=N'SolveDate'
GO

/****** Object:  Table [dbo].[AwardType]    Script Date: 2016/1/4 10:49:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AwardType](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL CONSTRAINT [DF_AwardType_ParentID]  DEFAULT ((0)),
	[TypeName] [nvarchar](32) NOT NULL,
	[SortID] [int] NOT NULL CONSTRAINT [DF_GameAwardType_SortID]  DEFAULT ((0)),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GameAwardType_Nullity]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_GameAwardType_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_GameAwardType] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardType', @level2type=N'COLUMN',@level2name=N'TypeID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardType', @level2type=N'COLUMN',@level2name=N'ParentID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardType', @level2type=N'COLUMN',@level2name=N'TypeName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardType', @level2type=N'COLUMN',@level2name=N'SortID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'禁用标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardType', @level2type=N'COLUMN',@level2name=N'Nullity'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AwardType', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO

/****** Object:  Table [dbo].[ConfigInfo]    Script Date: 2016/1/4 10:49:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConfigInfo](
	[ConfigID] [int] IDENTITY(1,1) NOT NULL,
	[ConfigKey] [nvarchar](32) NOT NULL CONSTRAINT [DF_PublicConfig_ConfigName]  DEFAULT (''),
	[ConfigName] [nvarchar](64) NOT NULL CONSTRAINT [DF_PublicConfig_ConfigName_1]  DEFAULT (''),
	[ConfigString] [nvarchar](512) NOT NULL CONSTRAINT [DF_PublicConfig_Description]  DEFAULT (''),
	[Field1] [nvarchar](128) NOT NULL CONSTRAINT [DF_PublicConfig_Field1]  DEFAULT (''),
	[Field2] [nvarchar](128) NOT NULL CONSTRAINT [DF_PublicConfig_Field2]  DEFAULT (''),
	[Field3] [nvarchar](128) NOT NULL CONSTRAINT [DF_PublicConfig_Field3]  DEFAULT (''),
	[Field4] [nvarchar](128) NOT NULL CONSTRAINT [DF_PublicConfig_Field4]  DEFAULT (''),
	[Field5] [nvarchar](128) NOT NULL CONSTRAINT [DF_PublicConfig_Field5]  DEFAULT (''),
	[Field6] [nvarchar](128) NOT NULL CONSTRAINT [DF_PublicConfig_Field6]  DEFAULT (''),
	[Field7] [nvarchar](128) NOT NULL CONSTRAINT [DF_PublicConfig_Field7]  DEFAULT (''),
	[Field8] [text] NOT NULL CONSTRAINT [DF_PublicConfig_Field8]  DEFAULT (''),
	[SortID] [int] NOT NULL CONSTRAINT [DF_ConfigInfo_SortID]  DEFAULT ((0)),
 CONSTRAINT [PK_SytemConfigInfo] PRIMARY KEY CLUSTERED 
(
	[ConfigID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigInfo', @level2type=N'COLUMN',@level2name=N'ConfigID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置KEY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigInfo', @level2type=N'COLUMN',@level2name=N'ConfigKey'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigInfo', @level2type=N'COLUMN',@level2name=N'ConfigName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigInfo', @level2type=N'COLUMN',@level2name=N'ConfigString'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigInfo', @level2type=N'COLUMN',@level2name=N'SortID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公共配置表，此系统的配置信息基本保存在此表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigInfo'
GO

/****** Object:  Table [dbo].[GameFeedbackInfo]    Script Date: 2016/1/4 10:49:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GameFeedbackInfo](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[FeedbackTitle] [nvarchar](512) NOT NULL,
	[FeedbackContent] [nvarchar](4000) NOT NULL,
	[FeedbackDate] [datetime] NOT NULL CONSTRAINT [DF_GameFeedbackInfo_FeedbackDate]  DEFAULT (getdate()),
	[UserID] [int] NOT NULL CONSTRAINT [DF_GameFeedbackInfo_UserID]  DEFAULT ((0)),
	[ClientIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_GameFeedbackInfo_ClientIP]  DEFAULT (N'0.0.0.0'),
	[ViewCount] [int] NOT NULL CONSTRAINT [DF_GameFeedbackInfo_ViewCount]  DEFAULT ((0)),
	[RevertUserID] [int] NOT NULL CONSTRAINT [DF_GameFeedbackInfo_RevertUserID]  DEFAULT ((0)),
	[RevertContent] [nvarchar](4000) NOT NULL CONSTRAINT [DF_GameFeedbackInfo_RevertContent]  DEFAULT (''),
	[RevertDate] [datetime] NULL,
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GameFeedbackInfo_Nullity]  DEFAULT ((0)),
	[IsProcessed] [tinyint] NOT NULL CONSTRAINT [DF_GameFeedbackInfo_IsProcessed]  DEFAULT ((0)),
 CONSTRAINT [PK_GameFeedbackInfo] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反馈标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameFeedbackInfo', @level2type=N'COLUMN',@level2name=N'FeedbackID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反馈标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameFeedbackInfo', @level2type=N'COLUMN',@level2name=N'FeedbackTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反馈内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameFeedbackInfo', @level2type=N'COLUMN',@level2name=N'FeedbackContent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提交时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameFeedbackInfo', @level2type=N'COLUMN',@level2name=N'FeedbackDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameFeedbackInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameFeedbackInfo', @level2type=N'COLUMN',@level2name=N'ViewCount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameFeedbackInfo', @level2type=N'COLUMN',@level2name=N'RevertUserID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameFeedbackInfo', @level2type=N'COLUMN',@level2name=N'RevertContent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameFeedbackInfo', @level2type=N'COLUMN',@level2name=N'RevertDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'禁用标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameFeedbackInfo', @level2type=N'COLUMN',@level2name=N'Nullity'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员是否处理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameFeedbackInfo', @level2type=N'COLUMN',@level2name=N'IsProcessed'
GO

/****** Object:  Table [dbo].[GameIssueInfo]    Script Date: 2016/1/4 10:49:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GameIssueInfo](
	[IssueID] [int] IDENTITY(1,1) NOT NULL,
	[IssueTitle] [nvarchar](512) NOT NULL,
	[IssueContent] [ntext] NOT NULL,
	[TypeID] [int] NOT NULL CONSTRAINT [DF_GameIssueInfo_TypeID]  DEFAULT ((0)),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GameIssueInfo_Nullity]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_GameIssueInfo_CollectDate]  DEFAULT (getdate()),
	[ModifyDate] [datetime] NOT NULL CONSTRAINT [DF_GameIssueInfo_ModifyDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_GameIssueInfo] PRIMARY KEY CLUSTERED 
(
	[IssueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameIssueInfo', @level2type=N'COLUMN',@level2name=N'IssueID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameIssueInfo', @level2type=N'COLUMN',@level2name=N'IssueTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameIssueInfo', @level2type=N'COLUMN',@level2name=N'IssueContent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题类型(1:常见问题 2:充值问题 3:高级教程 4:功能说明)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameIssueInfo', @level2type=N'COLUMN',@level2name=N'TypeID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁止' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameIssueInfo', @level2type=N'COLUMN',@level2name=N'Nullity'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新增日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameIssueInfo', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameIssueInfo', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO

/****** Object:  Table [dbo].[GameRulesInfo]    Script Date: 2016/8/11 15:10:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GameRulesInfo](
	[KindID] [int] NOT NULL,
	[KindName] [nvarchar](32) NOT NULL,
	[ThumbnailUrl] [nvarchar](512) NOT NULL CONSTRAINT [DF_GameRulesInfo_ThumbnailUrl]  DEFAULT (''),
	[ImgRuleUrl] [nvarchar](512) NOT NULL,
	[MobileImgUrl] [nvarchar](512) NOT NULL CONSTRAINT [DF_GameRulesInfo_MobileImgUrl]  DEFAULT (''),
	[MobileSize] [nvarchar](20) NOT NULL CONSTRAINT [DF_GameRulesInfo_MobileSize]  DEFAULT (''),
	[MobileDate] [nchar](10) NOT NULL CONSTRAINT [DF_GameRulesInfo_MobileDate]  DEFAULT (''),
	[MobileVersion] [nvarchar](20) NOT NULL CONSTRAINT [DF_GameRulesInfo_MobileVersion]  DEFAULT (''),
	[MobileGameType] [tinyint] NOT NULL CONSTRAINT [DF_GameRulesInfo_MobileGameType]  DEFAULT ((0)),
	[AndroidDownloadUrl] [nvarchar](512) NOT NULL CONSTRAINT [DF_GameRulesInfo_AndroidDownloadUrl]  DEFAULT (''),
	[IOSDownloadUrl] [nvarchar](512) NOT NULL CONSTRAINT [DF_GameRulesInfo_IOSDownloadUrl]  DEFAULT (''),
	[HelpIntro] [text] NOT NULL,
	[HelpRule] [text] NOT NULL,
	[HelpGrade] [text] NOT NULL,
	[JoinIntro] [tinyint] NOT NULL CONSTRAINT [DF_GameRulesInfo_JoinIntro]  DEFAULT ((0)),
	[Nullity] [tinyint] NOT NULL CONSTRAINT [DF_GameRulesInfo_Nullity]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_GameRulesInfo_CollectDate]  DEFAULT (getdate()),
	[ModifyDate] [datetime] NOT NULL CONSTRAINT [DF_GameRulesInfo_ModifyDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_GameRulesInfo_1] PRIMARY KEY CLUSTERED 
(
	[KindID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'KindID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'KindName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'ThumbnailUrl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏截图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'ImgRuleUrl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'MobileImgUrl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动端大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'MobileSize'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动端更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'MobileDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机版本号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'MobileVersion'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动手机类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'MobileGameType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安卓下载地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'AndroidDownloadUrl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IOS版下载地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'IOSDownloadUrl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'HelpIntro'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规则介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'HelpRule'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'等级介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'HelpGrade'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加入推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'JoinIntro'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'冻结' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'Nullity'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新增日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRulesInfo', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO


/****** Object:  Table [dbo].[LossReport]    Script Date: 2016/1/4 10:50:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LossReport](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[ReportNo] [nvarchar](32) NOT NULL,
	[UserID] [int] NOT NULL CONSTRAINT [DF_AccountsLossReport_UserID]  DEFAULT ((0)),
	[GameID] [int] NOT NULL CONSTRAINT [DF_AccountsLossReport_GameID]  DEFAULT ((0)),
	[Accounts] [nvarchar](31) NOT NULL CONSTRAINT [DF_AccountsLossReport_Account]  DEFAULT (N''),
	[ReportEmail] [nvarchar](32) NOT NULL,
	[Compellation] [nvarchar](31) NOT NULL CONSTRAINT [DF_AccountsLossReport_RealName]  DEFAULT (N''),
	[PassportID] [nvarchar](32) NOT NULL CONSTRAINT [DF_AccountsLossReport_PassportID]  DEFAULT (''),
	[MobilePhone] [nvarchar](16) NOT NULL CONSTRAINT [DF_AccountsLossReport_Tel]  DEFAULT (N''),
	[FixedPhone] [nvarchar](16) NOT NULL CONSTRAINT [DF_LossReport_FixedPhone]  DEFAULT (''),
	[RegisterDate] [nvarchar](12) NOT NULL CONSTRAINT [DF_LossReport_RegisterDate]  DEFAULT (''),
	[OldNickName1] [nvarchar](31) NOT NULL CONSTRAINT [DF_AccountsLossReport_OldAccounts1]  DEFAULT (''),
	[OldNickName2] [nvarchar](31) NOT NULL CONSTRAINT [DF_AccountsLossReport_OldAccounts2]  DEFAULT (''),
	[OldNickName3] [nvarchar](31) NOT NULL CONSTRAINT [DF_AccountsLossReport_OldNickName3]  DEFAULT (''),
	[OldLogonPass1] [nchar](32) NOT NULL CONSTRAINT [DF_AccountsLossReport_OldLogonPass1]  DEFAULT (''),
	[OldLogonPass2] [nchar](32) NOT NULL CONSTRAINT [DF_AccountsLossReport_OldLogonPass2]  DEFAULT (''),
	[OldLogonPass3] [nchar](32) NOT NULL CONSTRAINT [DF_AccountsLossReport_OldLogonPass3]  DEFAULT (''),
	[OldQuestion1] [nvarchar](32) NOT NULL CONSTRAINT [DF_AccountsLossReport_OldQuestion]  DEFAULT (N''),
	[OldResponse1] [nvarchar](32) NOT NULL CONSTRAINT [DF_AccountsLossReport_OldAnswer]  DEFAULT (N''),
	[OldQuestion2] [nvarchar](32) NOT NULL CONSTRAINT [DF_LossReport_OldQuestion2]  DEFAULT (''),
	[OldResponse2] [nvarchar](32) NOT NULL CONSTRAINT [DF_LossReport_OldResponse2]  DEFAULT (''),
	[OldQuestion3] [nvarchar](32) NOT NULL CONSTRAINT [DF_LossReport_OldQuestion3]  DEFAULT (''),
	[OldResponse3] [nvarchar](32) NOT NULL CONSTRAINT [DF_LossReport_OldResponse3]  DEFAULT (''),
	[SuppInfo] [nvarchar](512) NOT NULL CONSTRAINT [DF_AccountsLossReport_Other]  DEFAULT (N''),
	[ProcessStatus] [tinyint] NOT NULL CONSTRAINT [DF_AccountsLossReport_ProcessStatus]  DEFAULT ((0)),
	[SendCount] [int] NOT NULL CONSTRAINT [DF_AccountsLossReport_SendCount]  DEFAULT ((0)),
	[Random] [nvarchar](4) NOT NULL CONSTRAINT [DF_AccountsLossReport_Random]  DEFAULT (''),
	[SolveDate] [datetime] NULL,
	[OverDate] [datetime] NULL,
	[ReportIP] [nvarchar](50) NOT NULL CONSTRAINT [DF_AccountsLossReport_ClientIP]  DEFAULT ('000.000.000.000'),
	[ReportDate] [datetime] NOT NULL CONSTRAINT [DF_AccountsLossReport_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_AccountsLossReport] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'挂失标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'ReportID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申述单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'ReportNo'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'UserID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'GameID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录帐号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'Accounts'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申述邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'ReportEmail'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'Compellation'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证件号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'PassportID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定电话号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'FixedPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'RegisterDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史昵称1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OldNickName1'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史昵称2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OldNickName2'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史昵称3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OldNickName3'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史密码1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OldLogonPass1'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史密码2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OldLogonPass2'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史密码3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OldLogonPass3'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密保问题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OldQuestion1'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密保答案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OldResponse1'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密保问题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OldQuestion2'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密保答案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OldResponse2'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密保问题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OldQuestion3'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密保答案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OldResponse3'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'补充材料' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'SuppInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理状态(0:未处理,1:发送成功邮件,2:发送失败邮件,3:更新密码成功)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'ProcessStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'SendCount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名随机数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'Random'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'解决日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'SolveDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户处理时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'OverDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申述地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'ReportIP'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申述日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LossReport', @level2type=N'COLUMN',@level2name=N'ReportDate'
GO

/****** Object:  Table [dbo].[MobileInfo]    Script Date: 2016/1/4 10:50:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MobileInfo](
	[MobileID] [int] IDENTITY(1,1) NOT NULL,
	[MobileType] [nvarchar](20) NOT NULL,
	[MobileSerial] [nvarchar](15) NULL,
	[MobileModel] [nvarchar](30) NOT NULL,
	[Size] [nvarchar](15) NOT NULL,
	[Resolution] [nchar](20) NOT NULL,
	[Screen] [nchar](10) NOT NULL,
	[OperatingSystem] [nvarchar](20) NOT NULL,
	[IsHorizontal] [tinyint] NOT NULL,
	[Remark] [nvarchar](250) NOT NULL,
	[DownloadUrl] [nvarchar](200) NULL,
 CONSTRAINT [PK_MobileInfo] PRIMARY KEY CLUSTERED 
(
	[MobileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[MobileInfo] ADD  CONSTRAINT [DF_MobileInfo_Size]  DEFAULT (N'5.2英寸') FOR [Size]
GO

ALTER TABLE [dbo].[MobileInfo] ADD  CONSTRAINT [DF_MobileInfo_OperatingSystem]  DEFAULT (N'Android') FOR [OperatingSystem]
GO

ALTER TABLE [dbo].[MobileInfo] ADD  CONSTRAINT [DF_MobileInfo_IsHorizontal]  DEFAULT ((0)) FOR [IsHorizontal]
GO

ALTER TABLE [dbo].[MobileInfo] ADD  CONSTRAINT [DF_MobileInfo_Remark]  DEFAULT ('') FOR [Remark]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileInfo', @level2type=N'COLUMN',@level2name=N'MobileID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileInfo', @level2type=N'COLUMN',@level2name=N'MobileType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileInfo', @level2type=N'COLUMN',@level2name=N'MobileModel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'尺寸' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileInfo', @level2type=N'COLUMN',@level2name=N'Size'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分辨率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileInfo', @level2type=N'COLUMN',@level2name=N'Resolution'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屏幕比例' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileInfo', @level2type=N'COLUMN',@level2name=N'Screen'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作系统' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileInfo', @level2type=N'COLUMN',@level2name=N'OperatingSystem'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否横屏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileInfo', @level2type=N'COLUMN',@level2name=N'IsHorizontal'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileInfo', @level2type=N'COLUMN',@level2name=N'Remark'
GO

/****** Object:  Table [dbo].[News]    Script Date: 2016/6/23 16:51:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[News](
	[NewsID] [int] IDENTITY(1,1) NOT NULL,
	[PopID] [int] NOT NULL CONSTRAINT [DF_News_PopID]  DEFAULT ((0)),
	[Subject] [nvarchar](64) NOT NULL CONSTRAINT [DF_News_Subject]  DEFAULT (N''),
	[Subject1] [nvarchar](64) NOT NULL CONSTRAINT [DF_News_Subject1]  DEFAULT (N''),
	[OnTop] [tinyint] NOT NULL CONSTRAINT [DF_News_IsTop]  DEFAULT ((0)),
	[OnTopAll] [tinyint] NOT NULL CONSTRAINT [DF_News_IsTopAll]  DEFAULT ((0)),
	[IsElite] [tinyint] NOT NULL CONSTRAINT [DF_News_Elite]  DEFAULT ((0)),
	[IsHot] [tinyint] NOT NULL CONSTRAINT [DF_News_IsHot]  DEFAULT ((0)),
	[IsLock] [tinyint] NOT NULL CONSTRAINT [DF_News_IsLock]  DEFAULT ((1)),
	[IsDelete] [tinyint] NOT NULL CONSTRAINT [DF_News_IsDelete]  DEFAULT ((0)),
	[IsLinks] [tinyint] NOT NULL CONSTRAINT [DF_News_IsLinks]  DEFAULT ((0)),
	[LinkUrl] [nvarchar](256) NOT NULL CONSTRAINT [DF_News_LinkUrl]  DEFAULT (N''),
	[Body] [ntext] NOT NULL CONSTRAINT [DF_News_Body]  DEFAULT (''),
	[FormattedBody] [ntext] NOT NULL CONSTRAINT [DF_News_FormattedBody]  DEFAULT (N''),
	[HighLight] [varchar](512) NOT NULL CONSTRAINT [DF_News_SubjectColor]  DEFAULT (N''),
	[ClassID] [tinyint] NOT NULL CONSTRAINT [DF_News_Type]  DEFAULT ((1)),
	[GameRange] [nvarchar](1000) NOT NULL CONSTRAINT [DF_News_GameRange]  DEFAULT (''),
	[ImageUrl] [nvarchar](100) NOT NULL CONSTRAINT [DF_News_ImageUrl]  DEFAULT (''),
	[UserID] [int] NOT NULL,
	[IssueIP] [nchar](15) NOT NULL CONSTRAINT [DF_News_IPAddress]  DEFAULT (N'000.000.000.000'),
	[LastModifyIP] [nchar](15) NOT NULL CONSTRAINT [DF_News_LastUpdateIP]  DEFAULT ('000.000.000.000'),
	[IssueDate] [datetime] NOT NULL CONSTRAINT [DF_News_IssueDate]  DEFAULT (getdate()),
	[LastModifyDate] [datetime] NOT NULL CONSTRAINT [DF_News_BullentinDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'NewsID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'弹出窗口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'PopID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新闻主标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'Subject'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新闻副标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'Subject1'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'置顶标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'OnTop'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总置顶标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'OnTopAll'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'精华标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'IsElite'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'热点标识 (0, 1　热点)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'IsHot'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'锁定标识(0 锁定 1 发布)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'IsLock'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部链接标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'IsLinks'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'LinkUrl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'Body'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'带格式公告内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'FormattedBody'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题颜色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'HighLight'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新闻类别 (新闻 1; 公告 2;手机公告 3)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'ClassID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机公告 显示范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'GameRange'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'UserID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'IssueIP'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后更新地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'LastModifyIP'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'IssueDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'LastModifyDate'
GO

/****** Object:  Table [dbo].[SinglePage]    Script Date: 2016/1/4 10:51:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SinglePage](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[KeyValue] [varchar](50) NOT NULL,
	[PageName] [nvarchar](200) NOT NULL CONSTRAINT [DF_SinglePage_PageName]  DEFAULT (''),
	[KeyWords] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Contents] [text] NOT NULL,
 CONSTRAINT [PK_SinglePage] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_PADDING ON

GO

/****** Object:  Index [IX_Table_KeyValue]    Script Date: 2016/1/4 10:51:55 ******/
CREATE NONCLUSTERED INDEX [IX_Table_KeyValue] ON [dbo].[SinglePage]
(
	[KeyValue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SinglePage', @level2type=N'COLUMN',@level2name=N'PageID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SinglePage', @level2type=N'COLUMN',@level2name=N'KeyValue'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SinglePage', @level2type=N'COLUMN',@level2name=N'PageName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页关键字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SinglePage', @level2type=N'COLUMN',@level2name=N'KeyWords'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SinglePage', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SinglePage', @level2type=N'COLUMN',@level2name=N'Contents'
GO


