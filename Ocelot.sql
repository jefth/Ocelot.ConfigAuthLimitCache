USE [Ocelot]
GO
/****** Object:  Table [dbo].[OcelotGlobalConfiguration]    Script Date: 2018/10/25 22:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OcelotGlobalConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GatewayName] [nvarchar](200) NOT NULL,
	[RequestIdKey] [nvarchar](100) NULL,
	[BaseUrl] [nvarchar](100) NULL,
	[DownstreamScheme] [nvarchar](50) NULL,
	[ServiceDiscoveryProvider] [nvarchar](300) NULL,
	[QoSOptions] [nvarchar](300) NULL,
	[LoadBalancerOptions] [nvarchar](300) NULL,
	[HttpHandlerOptions] [nvarchar](300) NULL,
	[LastUpdateTime] [datetime] NULL,
	[AddTime] [datetime] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_OcelotGlobalConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OcelotReRoutes]    Script Date: 2018/10/25 22:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OcelotReRoutes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OcelotGlobalConfigurationId] [int] NOT NULL,
	[UpstreamPathTemplate] [nvarchar](150) NOT NULL,
	[UpstreamHttpMethod] [nvarchar](50) NOT NULL,
	[UpstreamHost] [nvarchar](100) NOT NULL,
	[DownstreamScheme] [nvarchar](50) NULL,
	[DownstreamPathTemplate] [nvarchar](200) NULL,
	[DownstreamHostAndPorts] [nvarchar](500) NULL,
	[AuthenticationOptions] [nvarchar](300) NULL,
	[RequestIdKey] [nvarchar](100) NULL,
	[CacheOptions] [nvarchar](200) NULL,
	[ServiceName] [nvarchar](100) NULL,
	[QoSOptions] [nvarchar](200) NULL,
	[LoadBalancerOptions] [nvarchar](200) NULL,
	[Key] [nvarchar](100) NULL,
	[DelegatingHandlers] [nvarchar](200) NULL,
	[Priority] [int] NULL,
	[Timeout] [int] NULL,
	[IsStatus] [int] NOT NULL,
	[AddTime] [date] NOT NULL,
 CONSTRAINT [PK_OcelotReRoutes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[OcelotGlobalConfiguration] ON 

INSERT [dbo].[OcelotGlobalConfiguration] ([Id], [GatewayName], [RequestIdKey], [BaseUrl], [DownstreamScheme], [ServiceDiscoveryProvider], [QoSOptions], [LoadBalancerOptions], [HttpHandlerOptions], [LastUpdateTime], [AddTime], [IsDefault]) VALUES (1, N'第一个网关', N'FirstGateway', N'', N'', N'', N'', N'', N'', CAST(0x0000000000000000 AS DateTime), CAST(0x0000A981012A618D AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[OcelotGlobalConfiguration] OFF
SET IDENTITY_INSERT [dbo].[OcelotReRoutes] ON 

INSERT [dbo].[OcelotReRoutes] ([Id], [OcelotGlobalConfigurationId], [UpstreamPathTemplate], [UpstreamHttpMethod], [UpstreamHost], [DownstreamScheme], [DownstreamPathTemplate], [DownstreamHostAndPorts], [AuthenticationOptions], [RequestIdKey], [CacheOptions], [ServiceName], [QoSOptions], [LoadBalancerOptions], [Key], [DelegatingHandlers], [Priority], [Timeout], [IsStatus], [AddTime]) VALUES (1, 1, N'/connect/token', N'[ "POST" ]', N'', N'http', N'/connect/token', N'[{"Host": "localhost","Port": 5003 }]', N'', N'', N'', N'', N'', N'', N'', N'', 0, NULL, 1, CAST(0xDC3E0B00 AS Date))
INSERT [dbo].[OcelotReRoutes] ([Id], [OcelotGlobalConfigurationId], [UpstreamPathTemplate], [UpstreamHttpMethod], [UpstreamHost], [DownstreamScheme], [DownstreamPathTemplate], [DownstreamHostAndPorts], [AuthenticationOptions], [RequestIdKey], [CacheOptions], [ServiceName], [QoSOptions], [LoadBalancerOptions], [Key], [DelegatingHandlers], [Priority], [Timeout], [IsStatus], [AddTime]) VALUES (2, 1, N'/connect/authorize', N'[ "POST","GET" ]', N'', N'http', N'/connect/authorize', N'[{"Host": "localhost","Port": 5003 }]', N'', N'', N'', N'', N'', N'', N'', N'', 0, NULL, 1, CAST(0xDC3E0B00 AS Date))
INSERT [dbo].[OcelotReRoutes] ([Id], [OcelotGlobalConfigurationId], [UpstreamPathTemplate], [UpstreamHttpMethod], [UpstreamHost], [DownstreamScheme], [DownstreamPathTemplate], [DownstreamHostAndPorts], [AuthenticationOptions], [RequestIdKey], [CacheOptions], [ServiceName], [QoSOptions], [LoadBalancerOptions], [Key], [DelegatingHandlers], [Priority], [Timeout], [IsStatus], [AddTime]) VALUES (3, 1, N'/.well-known/openid-configuration', N'[ "GET" ]', N'', N'http', N'/.well-known/openid-configuration', N'[{"Host": "localhost","Port": 5003 }]', N'', N'', N'', N'', N'', N'', N'', N'', 0, NULL, 1, CAST(0xDC3E0B00 AS Date))
INSERT [dbo].[OcelotReRoutes] ([Id], [OcelotGlobalConfigurationId], [UpstreamPathTemplate], [UpstreamHttpMethod], [UpstreamHost], [DownstreamScheme], [DownstreamPathTemplate], [DownstreamHostAndPorts], [AuthenticationOptions], [RequestIdKey], [CacheOptions], [ServiceName], [QoSOptions], [LoadBalancerOptions], [Key], [DelegatingHandlers], [Priority], [Timeout], [IsStatus], [AddTime]) VALUES (4, 1, N'/.well-known/openid-configuration/jwks', N'[  "POST","GET" ]', N'', N'http', N'/.well-known/openid-configuration', N'[{"Host": "localhost","Port": 5003 }]', N'', N'', N'', N'', N'', N'', N'', N'', 0, NULL, 1, CAST(0xDC3E0B00 AS Date))
INSERT [dbo].[OcelotReRoutes] ([Id], [OcelotGlobalConfigurationId], [UpstreamPathTemplate], [UpstreamHttpMethod], [UpstreamHost], [DownstreamScheme], [DownstreamPathTemplate], [DownstreamHostAndPorts], [AuthenticationOptions], [RequestIdKey], [CacheOptions], [ServiceName], [QoSOptions], [LoadBalancerOptions], [Key], [DelegatingHandlers], [Priority], [Timeout], [IsStatus], [AddTime]) VALUES (5, 1, N'/connect/userinfo', N'[  "POST","GET" ]', N'', N'http', N'/connect/userinfo', N'[{"Host": "localhost","Port": 5003 }]', N'', N'', N'', N'', N'', N'', N'', N'', 0, NULL, 1, CAST(0xDC3E0B00 AS Date))
INSERT [dbo].[OcelotReRoutes] ([Id], [OcelotGlobalConfigurationId], [UpstreamPathTemplate], [UpstreamHttpMethod], [UpstreamHost], [DownstreamScheme], [DownstreamPathTemplate], [DownstreamHostAndPorts], [AuthenticationOptions], [RequestIdKey], [CacheOptions], [ServiceName], [QoSOptions], [LoadBalancerOptions], [Key], [DelegatingHandlers], [Priority], [Timeout], [IsStatus], [AddTime]) VALUES (6, 1, N'/connect/endsession', N'[  "POST","GET" ]', N'', N'http', N'/connect/endsession', N'[{"Host": "localhost","Port": 5003 }]', N'', N'', N'', N'', N'', N'', N'', N'', 0, NULL, 1, CAST(0xDC3E0B00 AS Date))
INSERT [dbo].[OcelotReRoutes] ([Id], [OcelotGlobalConfigurationId], [UpstreamPathTemplate], [UpstreamHttpMethod], [UpstreamHost], [DownstreamScheme], [DownstreamPathTemplate], [DownstreamHostAndPorts], [AuthenticationOptions], [RequestIdKey], [CacheOptions], [ServiceName], [QoSOptions], [LoadBalancerOptions], [Key], [DelegatingHandlers], [Priority], [Timeout], [IsStatus], [AddTime]) VALUES (7, 1, N'/connect/checksession', N'[  "POST","GET" ]', N'', N'http', N'/connect/checksession', N'[{"Host": "localhost","Port": 5003 }]', N'', N'', N'', N'', N'', N'', N'', N'', 0, NULL, 1, CAST(0xDC3E0B00 AS Date))
INSERT [dbo].[OcelotReRoutes] ([Id], [OcelotGlobalConfigurationId], [UpstreamPathTemplate], [UpstreamHttpMethod], [UpstreamHost], [DownstreamScheme], [DownstreamPathTemplate], [DownstreamHostAndPorts], [AuthenticationOptions], [RequestIdKey], [CacheOptions], [ServiceName], [QoSOptions], [LoadBalancerOptions], [Key], [DelegatingHandlers], [Priority], [Timeout], [IsStatus], [AddTime]) VALUES (8, 1, N'/connect/revocation', N'[  "POST","GET" ]', N'', N'http', N'/connect/revocation', N'[{"Host": "localhost","Port": 5003 }]', N'', N'', N'', N'', N'', N'', N'', N'', 0, NULL, 1, CAST(0xDC3E0B00 AS Date))
INSERT [dbo].[OcelotReRoutes] ([Id], [OcelotGlobalConfigurationId], [UpstreamPathTemplate], [UpstreamHttpMethod], [UpstreamHost], [DownstreamScheme], [DownstreamPathTemplate], [DownstreamHostAndPorts], [AuthenticationOptions], [RequestIdKey], [CacheOptions], [ServiceName], [QoSOptions], [LoadBalancerOptions], [Key], [DelegatingHandlers], [Priority], [Timeout], [IsStatus], [AddTime]) VALUES (9, 1, N'/connect/introspect', N'[  "POST","GET" ]', N'', N'http', N'/connect/introspect', N'[{"Host": "localhost","Port": 5003 }]', N'', N'', N'', N'', N'', N'', N'', N'', 0, NULL, 1, CAST(0xDC3E0B00 AS Date))
INSERT [dbo].[OcelotReRoutes] ([Id], [OcelotGlobalConfigurationId], [UpstreamPathTemplate], [UpstreamHttpMethod], [UpstreamHost], [DownstreamScheme], [DownstreamPathTemplate], [DownstreamHostAndPorts], [AuthenticationOptions], [RequestIdKey], [CacheOptions], [ServiceName], [QoSOptions], [LoadBalancerOptions], [Key], [DelegatingHandlers], [Priority], [Timeout], [IsStatus], [AddTime]) VALUES (10, 1, N'/connect/authorize/callback', N'[  "POST","GET" ]', N'', N'http', N'/connect/authorize/callback', N'[{"Host": "localhost","Port": 5003 }]', N'', N'', N'', N'', N'', N'', N'', N'', 0, NULL, 1, CAST(0xDC3E0B00 AS Date))
INSERT [dbo].[OcelotReRoutes] ([Id], [OcelotGlobalConfigurationId], [UpstreamPathTemplate], [UpstreamHttpMethod], [UpstreamHost], [DownstreamScheme], [DownstreamPathTemplate], [DownstreamHostAndPorts], [AuthenticationOptions], [RequestIdKey], [CacheOptions], [ServiceName], [QoSOptions], [LoadBalancerOptions], [Key], [DelegatingHandlers], [Priority], [Timeout], [IsStatus], [AddTime]) VALUES (11, 1, N'/connect/endsession/callback', N'[  "POST","GET" ]', N'', N'http', N'/connect/endsession/callback', N'[{"Host": "localhost","Port": 5003 }]', N'', N'', N'', N'', N'', N'', N'', N'', 0, NULL, 1, CAST(0xDC3E0B00 AS Date))
INSERT [dbo].[OcelotReRoutes] ([Id], [OcelotGlobalConfigurationId], [UpstreamPathTemplate], [UpstreamHttpMethod], [UpstreamHost], [DownstreamScheme], [DownstreamPathTemplate], [DownstreamHostAndPorts], [AuthenticationOptions], [RequestIdKey], [CacheOptions], [ServiceName], [QoSOptions], [LoadBalancerOptions], [Key], [DelegatingHandlers], [Priority], [Timeout], [IsStatus], [AddTime]) VALUES (12, 1, N'/ss1/{everything}', N'[  "POST","GET" ]', N'', N'http', N'/api/{everything}', N' [{"Host": "localhost", "Port": 1001},{"Host": "localhost","Port": 1002}]', N'', N'', N'', N'', N'', N'', N'', N'', 0, NULL, 1, CAST(0xDC3E0B00 AS Date))
SET IDENTITY_INSERT [dbo].[OcelotReRoutes] OFF
ALTER TABLE [dbo].[OcelotGlobalConfiguration] ADD  CONSTRAINT [DF_OcelotGlobalConfiguration_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
ALTER TABLE [dbo].[OcelotGlobalConfiguration] ADD  CONSTRAINT [DF_OcelotGlobalConfiguration_IsDefault]  DEFAULT ((1)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[OcelotReRoutes] ADD  CONSTRAINT [DF_OcelotReRoutes_IsStatus]  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[OcelotReRoutes] ADD  CONSTRAINT [DF_OcelotReRoutes_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OcelotGlobalConfiguration', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网关名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OcelotGlobalConfiguration', @level2type=N'COLUMN',@level2name=N'GatewayName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OcelotGlobalConfiguration', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OcelotGlobalConfiguration', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OcelotReRoutes', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全局配置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OcelotReRoutes', @level2type=N'COLUMN',@level2name=N'OcelotGlobalConfigurationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OcelotReRoutes', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
