use master
go
--if exists (select * from sys.databases where name = 'Coolntern')
--begin
--	drop database [Coolntern]
--end
DROP DATABASE IF EXISTS [Coolntern]
go
create database [Coolntern]
go
USE [Coolntern]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NULL,
	[Avatar] [nvarchar](max) NULL DEFAULT 'avatar_default.png',
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[GPA] [float] NULL DEFAULT 0,
	[TrainingPoint] [int] NULL DEFAULT 0,
	[Major] [nvarchar](max) NULL DEFAULT 'None',
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[message] [varchar](max) NULL,
	[image] [varchar](max) NULL,
	[link] [varchar](max) NULL,
	[meta] [varchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[image] [varchar](max) NULL,
	[numJob] [int] NULL,
	[link] [varchar](max) NULL,
	[meta] [varchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailJob]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailJob](
	[id_user] [nvarchar](128) NOT NULL,
	[id_job] [int] NOT NULL,
	[dateApply] [datetime] NULL,
	[approval] [smallint] NULL,
	[message] [ntext]
PRIMARY KEY CLUSTERED 
(
	[id_user] ASC,
	[id_job] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[desciption] [ntext] NULL,
	[link] [varchar](max) NULL,
	[meta] [varchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[nameCompany] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[salary] [int] NULL,
	[location] [varchar](100) NULL,
	[vacancy] [int] NULL,
	[image] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[requirement] [varchar](max) NULL,
	[link] [varchar](max) NULL,
	[meta] [varchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[dateapply] [datetime] NULL,
	[datebegin] [datetime] NULL,
	[categoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logo]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[image] [varchar](50) NULL,
	[link] [varchar](max) NULL,
	[meta] [varchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[link] [varchar](max) NULL,
	[meta] [varchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCategory]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[desciption] [varchar](max) NULL,
	[link] [varchar](max) NULL,
	[meta] [varchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[desciption] [nvarchar](max) NULL,
	[content] [ntext] NULL,
	[image] [varchar](max) NULL,
	[link] [varchar](max) NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [datetime] NULL,
	[categoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[link] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slogan]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slogan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[job] [varchar](50) NULL,
	[message] [varchar](max) NULL,
	[image] [varchar](max) NULL,
	[link] [varchar](max) NULL,
	[meta] [varchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/25/2023 5:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER ADD_JOB_UPDATE_CATEGORY
ON [Job]
FOR INSERT
AS
	UPDATE [Category] SET [numJob] = [numJob] + 1 WHERE id = (SELECT categoryId FROM INSERTED)
GO
CREATE TRIGGER DELETE_JOB_UPDATE_CATEGORY
ON [Job]
FOR DELETE
AS
	UPDATE [Category] SET [numJob] = [numJob] - 1 WHERE id = (SELECT categoryId FROM INSERTED) AND [numJob] > 0
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'd2ef86d3-b539-416b-bfec-c3995a1a39d6', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'29e8977a-72c1-421c-97b7-daf0fa645092', N'User')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ba110704-43d4-4456-ac2c-2e788b9a50a2', N'29e8977a-72c1-421c-97b7-daf0fa645092')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f74ddd77-ecb9-40ee-a952-a42e20afd190', N'd2ef86d3-b539-416b-bfec-c3995a1a39d6')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Address], [Phone], [GPA], [TrainingPoint], [Major], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ba110704-43d4-4456-ac2c-2e788b9a50a2', N'10, abc', NULL, NULL, NULL, NULL, N'trantanhung@gmail.com', 0, N'ANgwfV+yKOmeMmc5e5UnNLry/+oIa9QURrAoqpsfNCc76BlhTO6ijcgHmPhOcPrPgA==', N'33185190-1c7a-4ba1-b316-80e4eea5b987', N'0808123654', 0, 0, NULL, 0, 0, N'tanhung2312')
INSERT [dbo].[AspNetUsers] ([Id], [Address], [Phone], [GPA], [TrainingPoint], [Major], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f74ddd77-ecb9-40ee-a952-a42e20afd190', NULL, NULL, NULL, NULL, NULL, N'admin@gmail.com', 0, N'AIwOPi3NLZ3xTjCn4U8j/tAPuZg7lguqXDltqQTkpazgJ2f/i+/NR1nJwI849TJxJA==', N'68bd9e1a-fe9b-4d87-8ea8-87f1bf89a4b9', NULL, 0, 0, NULL, 0, 0, N'admin')
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([id], [name], [message], [image], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'Banner 1', N'Find the most exciting startup jobs', N'25-04-23-11-55-04-h1_hero.jpg', NULL, N'Banner-1', 1, 2, NULL)
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name], [image], [numJob], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'Design & Creative', N'flaticon-tour', 0, N'', N'design-creative', 1, 1, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([id], [name], [image], [numJob], [link], [meta], [hide], [order], [datebegin]) VALUES (2, N'Design & Development', N'flaticon-cms', 0, N'', N'design-development', 1, 1, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([id], [name], [image], [numJob], [link], [meta], [hide], [order], [datebegin]) VALUES (3, N'Sales & Marketing', N'flaticon-report', 0, N'', N'sales-marketing', 1, 1, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([id], [name], [image], [numJob], [link], [meta], [hide], [order], [datebegin]) VALUES (4, N'Mobile Application', N'flaticon-app', 0, N'', N'mobile-application', 1, 1, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([id], [name], [image], [numJob], [link], [meta], [hide], [order], [datebegin]) VALUES (5, N'Construction', N'flaticon-helmet', 0, N'', N'contruction', 1, 1, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([id], [name], [image], [numJob], [link], [meta], [hide], [order], [datebegin]) VALUES (6, N'Information Technology', N'flaticon-high-tech', 0, N'', N'information-technology', 1, 1, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([id], [name], [image], [numJob], [link], [meta], [hide], [order], [datebegin]) VALUES (7, N'Real Estate', N'flaticon-real-estate', 0, N'', N'real-estate', 1, 1, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([id], [name], [image], [numJob], [link], [meta], [hide], [order], [datebegin]) VALUES (8, N'Content Writer', N'flaticon-content', 0, N'', N'content-writer', 1, 1, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Footer] ON 

INSERT [dbo].[Footer] ([id], [name], [desciption], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'ABOUT US', N'Heaven frucvitful doesnt cover lesser dvsays appear creeping seasons so behold.', N'', N'', 1, 1, CAST(N'2022-02-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Footer] ([id], [name], [desciption], [link], [meta], [hide], [order], [datebegin]) VALUES (2, N'CONTACT INFO', N'Address :Your address goes here, your demo address. <br>
											Phone : +8880 44338899 <br>
											Email : info@colorlib.com', N'', N'', 1, 1, CAST(N'2022-02-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Footer] ([id], [name], [desciption], [link], [meta], [hide], [order], [datebegin]) VALUES (3, N'IMPORTANT LINK', N'  View Project <br>
											  Contact Us <br>
											  Testimonial <br>
											  Support <br>', N'', N'', 1, 1, CAST(N'2022-02-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Footer] ([id], [name], [desciption], [link], [meta], [hide], [order], [datebegin]) VALUES (4, N'NEWSLETTER', N'Heaven fruitful doesnt over lesser in days. Appear creeping.', N'', N'', 1, 1, CAST(N'2022-02-23T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Footer] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([id], [name], [nameCompany], [email], [salary], [location], [vacancy], [image], [description], [requirement], [link], [meta], [hide], [order], [dateapply], [datebegin], [categoryId]) VALUES (1, N'Digital Maketer ', N'Colorlib', N'carrier.colorlib@gmail.com', 3500, N'Athens, Greece', 2, N'job-list1.png', N'<p>It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.</p>
', N'
System Software Development-
Mobile Applicationin iOS/Android/Tizen or other platform-
Research and code , libraries, APIs and frameworks-
Strong knowledge on software development life cycle-
Strong problem solving and debugging skills-
3 or more years of professional design experience-
Direct response email experience-
Ecommerce website design experience-
Familiarity with mobile and web apps preferred-
Experience using Invision a plus', N'', N'Digital-Maketer-', 1, 1, NULL, NULL, 3)
INSERT [dbo].[Job] ([id], [name], [nameCompany], [email], [salary], [location], [vacancy], [image], [description], [requirement], [link], [meta], [hide], [order], [dateapply], [datebegin], [categoryId]) VALUES (2, N'Developer', N'Mademoiselle', N'mademoiselle.aa@gmail.com', 3000, N'London, England', 2, N'job-list2.png', N'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', N'
System Software Development-
Mobile Applicationin iOS/Android/Tizen or other platform-
Research and code , libraries, APIs and frameworks-
Strong knowledge on software development life cycle-
Strong problem solving and debugging skills-
3 or more years of professional design experience-
Direct response email experience-
Ecommerce website design experience-
Familiarity with mobile and web apps preferred-
Experience using Invision a plus', N'', N'developer', 1, 1, CAST(N'2023-08-11T00:00:00.000' AS DateTime), CAST(N'2023-02-24T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Job] ([id], [name], [nameCompany], [email], [salary], [location], [vacancy], [image], [description], [requirement], [link], [meta], [hide], [order], [dateapply], [datebegin], [categoryId]) VALUES (3, N'Accounter', N'Count On Me', N'countcompany.count@gmail.com', 4000, N'HCMC, Vietnam', 3, N'job-list3.png', N'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', N'
System Software Development-
Mobile Applicationin iOS/Android/Tizen or other platform-
Research and code , libraries, APIs and frameworks-
Strong knowledge on software development life cycle-
Strong problem solving and debugging skills-
3 or more years of professional design experience-
Direct response email experience-
Ecommerce website design experience-
Familiarity with mobile and web apps preferred-
Experience using Invision a plus', N'', N'accounter', 1, 1, CAST(N'2023-05-12T00:00:00.000' AS DateTime), CAST(N'2023-02-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Job] ([id], [name], [nameCompany], [email], [salary], [location], [vacancy], [image], [description], [requirement], [link], [meta], [hide], [order], [dateapply], [datebegin], [categoryId]) VALUES (4, N'Sale', N'Axon', N'axon.colorlib@gmail.com', 4200, N'New York, USA', 2, N'job-list4.png', N'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', N'
System Software Development-
Mobile Applicationin iOS/Android/Tizen or other platform-
Research and code , libraries, APIs and frameworks-
Strong knowledge on software development life cycle-
Strong problem solving and debugging skills-
3 or more years of professional design experience-
Direct response email experience-
Ecommerce website design experience-
Familiarity with mobile and web apps preferred-
Experience using Invision a plus', N'', N'sale', 1, 1, CAST(N'2023-09-12T00:00:00.000' AS DateTime), CAST(N'2023-02-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Job] ([id], [name], [nameCompany], [email], [salary], [location], [vacancy], [image], [description], [requirement], [link], [meta], [hide], [order], [dateapply], [datebegin], [categoryId]) VALUES (5, N'Tester', N'La nuit', N'lanuit.colorlib@gmail.com', 3600, N'Paris, France', 2, N'job-list2.png', N'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', N'
System Software Development-
Mobile Applicationin iOS/Android/Tizen or other platform-
Research and code , libraries, APIs and frameworks-
Strong knowledge on software development life cycle-
Strong problem solving and debugging skills-
3 or more years of professional design experience-
Direct response email experience-
Ecommerce website design experience-
Familiarity with mobile and web apps preferred-
Experience using Invision a plus', N'', N'tester', 1, 1, CAST(N'2023-09-12T00:00:00.000' AS DateTime), CAST(N'2023-02-23T00:00:00.000' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
SET IDENTITY_INSERT [dbo].[Logo] ON 

INSERT [dbo].[Logo] ([id], [name], [image], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'lo m?i', N'25-04-23-11-54-42-25-04-23-10-11-32-logo.png', N'lo-m?i', N'lo-mi', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Logo] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'Home', N'', N'', 1, 1, CAST(N'2022-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (2, N'Find a Job', N'/cong-viec', N'cong-viec', 1, 1, CAST(N'2022-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (3, N'About', N'/about', N'about', 1, 1, CAST(N'2022-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (4, N'Blog', N'/thong-bao', N'thong-bao', 1, 1, CAST(N'2022-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (5, N'Contact', N'/contact', N'contact', 1, 1, CAST(N'2022-12-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[NCategory] ON 

INSERT [dbo].[NCategory] ([id], [name], [desciption], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'Tuyen dung', N'', N'', N'tuyen-dung', 1, 1, CAST(N'2023-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[NCategory] ([id], [name], [desciption], [link], [meta], [hide], [order], [datebegin]) VALUES (2, N'Suc khoe', N'', N'', N'suc-khoe', 1, 1, CAST(N'2023-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[NCategory] ([id], [name], [desciption], [link], [meta], [hide], [order], [datebegin]) VALUES (3, N'Tai chinh', N'', N'', N'tai-chinh', 1, 1, CAST(N'2023-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[NCategory] ([id], [name], [desciption], [link], [meta], [hide], [order], [datebegin]) VALUES (4, N'Sang tao', N'', N'', N'sang-tao', 1, 1, CAST(N'2023-02-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[NCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([id], [name], [desciption], [content], [image], [link], [meta], [hide], [order], [datebegin], [categoryId]) VALUES (1, N'Footprints in Time is perfect House in Kurashiki', N'Second divided from form fish beast made every of seas all gathered us saying he our', N'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower

						MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually', N'single_blog_2.png', N'', N'footprint-time-perfect', 1, 1, CAST(N'2023-01-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([id], [name], [desciption], [content], [image], [link], [meta], [hide], [order], [datebegin], [categoryId]) VALUES (2, N'Footprints in Time is perfect House in Kurashiki', N'Second divided from form fish beast made every of seas all gathered us saying he our', N'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower

						MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually', N'single_blog_2.png', N'', N'first-blog', 1, 1, CAST(N'2023-01-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([id], [name], [desciption], [content], [image], [link], [meta], [hide], [order], [datebegin], [categoryId]) VALUES (3, N'Footprints in Time is perfect House in Kurashiki', N'Second divided from form fish beast made every of seas all gathered us saying he our', N'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower

						MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually', N'single_blog_2.png', N'', N'second-blog', 1, 1, CAST(N'2023-01-20T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[News] ([id], [name], [desciption], [content], [image], [link], [meta], [hide], [order], [datebegin], [categoryId]) VALUES (4, N'Footprints in Time is perfect House in Kurashiki', N'Second divided from form fish beast made every of seas all gathered us saying he our', N'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower

						MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually', N'single_blog_2.png', N'', N'5-blog', 1, 1, CAST(N'2023-01-20T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[News] ([id], [name], [desciption], [content], [image], [link], [meta], [hide], [order], [datebegin], [categoryId]) VALUES (5, N'Cao tốc Phan Thiết - Vĩnh Hảo trước 20 ngày thông xe', N'BÌNH THUẬNCao tốc Phan Thiết - Vĩnh Hảo dài hơn 100 km đang được các nhà thầu thi công gấp rút để kịp hoàn thành, đưa vào sử dụng dịp 30/4.', N'<p>C&aacute;c xe cơ giới đang thi c&ocirc;ng đường dẫn cầu vượt qua n&uacute;t giao Ma L&acirc;m. Những ng&agrave;y đầu th&aacute;ng 4, xe chở đất đắp từ mỏ H&agrave;m Tr&iacute; c&aacute;ch vị tr&iacute; n&agrave;y chừng 5 km li&ecirc;n tục đến c&ocirc;ng trường để c&aacute;c xe thi c&ocirc;ng lu l&egrave;n, l&agrave;m đường dẫn l&ecirc;n cầu.</p>

<p>Đ&acirc;y l&agrave; cầu vượt qua cao tốc Phan Thiết - Vĩnh Hảo kh&aacute; quan trọng tr&ecirc;n quốc lộ 28 nối Phan Thiết (B&igrave;nh Thuận) l&ecirc;n Di Linh (L&acirc;m Đồng).</p>

<p><img alt="" src="https://i1-vnexpress.vnecdn.net/2023/04/10/Cao-toc-34-JPG-1681119423.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=vGIuRsXU-TDW2RVRCjbRUA" /></p>

<p>Nh&acirc;n c&ocirc;ng, xe cẩu, xe m&uacute;c, xe ben cấp tập thi c&ocirc;ng tại khu vực cầu vượt n&uacute;i Xả Th&ocirc;, x&atilde; H&agrave;m Tr&iacute;, huyện H&agrave;m Thuận Bắc. C&aacute;c tổ l&agrave;m suốt ng&agrave;y đ&ecirc;m, bởi thời gian h&agrave;nh tuyến ch&iacute;nh c&ograve;n chưa đầy 20 ng&agrave;y.</p>

<p><img alt="" src="https://i1-vnexpress.vnecdn.net/2023/04/10/12-JPG-1681126701.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=6LD0VN9KwjdqtARZ7FR-LA" /></p>

<p>C&ugrave;ng đ&oacute;, hệ thống r&atilde;nh tho&aacute;t nước dọc tuyến đang được ho&agrave;n thiện, để đảm bảo cho cao tốc kh&ocirc;ng bị ngập nước v&agrave;o m&ugrave;a mưa.</p>

<p><img alt="" src="https://i1-vnexpress.vnecdn.net/2023/04/10/VnE-a-8-JPG-1681126702.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=eN1xJDXeS7P7WV2FhXT2vg" /></p>

<p>Đường gom d&acirc;n sinh chạy song song cao tốc qua khu rẫy thanh long x&atilde; Mương M&aacute;n, huyện H&agrave;m Thuận Nam đang được đẩy nhanh tiến độ.</p>

<p>Do hơn 3 th&aacute;ng thiếu đất đắp, việc l&agrave;m đường gom d&acirc;n sinh v&agrave; đường dẫn l&ecirc;n c&aacute;c cầu vượt bị chậm trễ. &quot;Ch&uacute;ng t&ocirc;i tập trung mọi nguồn lực, tăng ca k&iacute;p, l&agrave;m cả ng&agrave;y v&agrave; đ&ecirc;m mới mong ho&agrave;n th&agrave;nh như kế hoạch&quot;, &ocirc;ng Nguyễn Quang Tu&acirc;n, Chỉ huy trưởng g&oacute;i thầu số 4 cho hay.</p>
', N'52000052.png', NULL, N'cao-toc-phan-thiết---vinh-hao-truoc-20-ngay-thong-xe', 1, 10, CAST(N'2023-04-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([id], [name], [desciption], [content], [image], [link], [meta], [hide], [order], [datebegin], [categoryId]) VALUES (7, N'Nguyễn Võ Quỳnh Trang xin rút đơn kháng cáo giảm án tử hình vì cho rằng mệt mỏi', N'Nguyễn Võ Quỳnh Trang bạo hành bé V.A (8 tuổi) dẫn đến tử vong, cho rằng bị áp lực, mệt mỏi nên xin rút đơn kháng cáo xin giảm án hình phạt tử hình.', N'<p>S&aacute;ng 25.4, nguồn tin ri&ecirc;ng của PV B&aacute;o&nbsp;<em>Thanh Ni&ecirc;n</em>&nbsp;cho biết TAND cấp cao tại TP.HCM đ&atilde; nhận được đơn xin r&uacute;t đơn kh&aacute;ng c&aacute;o xin giảm nhẹ h&igrave;nh phạt tử h&igrave;nh của&nbsp;<a href="https://thanhnien.vn/nguyen-vo-quynh-trang.html" target="_blank" title=" Nguyễn Võ Quỳnh Trang">Nguyễn V&otilde; Quỳnh Trang</a>, 28 tuổi. Trang bị t&ograve;a sơ thẩm phạt về tội&nbsp;<a href="https://thanhnien.vn/giet-nguoi.html" target="_blank" title="Giết người">giết người</a>&nbsp;v&agrave; h&agrave;nh hạ người kh&aacute;c.</p>

<p>Trong đơn viết tay, Trang viết ngắn gọn, chưa đầy một trang giấy: &quot;Nhận thấy đến giai đoạn x&eacute;t xử ph&uacute;c thẩm t&ocirc;i thấy &aacute;p lực, mệt mỏi, kh&ocirc;ng muốn dư luận x&atilde; hội l&agrave;m ảnh hưởng đến cuộc sống của người th&acirc;n n&ecirc;n t&ocirc;i tự nguyện viết đơn n&agrave;y xin r&uacute;t kh&aacute;ng c&aacute;o&quot;. Đơn đ&atilde; c&oacute; x&aacute;c nhận của trại tạm giam.</p>

<p>Được biết, d&ugrave; Trang r&uacute;t kh&aacute;ng c&aacute;o nhưng t&ograve;a ph&uacute;c thẩm vẫn triệu tập bị c&aacute;o n&agrave;y đến t&ograve;a.</p>

<p>Trước đ&oacute;, sau khi bị TAND TP.HCM phạt &aacute;n tử h&igrave;nh, Trang kh&aacute;ng c&aacute;o xin giảm nhẹ h&igrave;nh phạt với l&yacute; do: &quot;T&ocirc;i nhận thấy mức &aacute;n tr&ecirc;n l&agrave; qu&aacute; nặng so với h&agrave;nh vi phạm tội của t&ocirc;i&quot;.</p>

<p>Theo dự kiến, ng&agrave;y 28.4, TAND cấp cao tại TP.HCM sẽ đưa vụ &aacute;n ra x&eacute;t xử ph&uacute;c thẩm do c&oacute; kh&aacute;ng c&aacute;o của luật sư bảo vệ cho bị hại đề nghị x&aacute;c định Th&aacute;i đồng phạm với Trang về tội &quot;giết người&quot;. Bởi theo luật sư, mức h&igrave;nh phạt 8 năm t&ugrave; đối với Th&aacute;i l&agrave; qu&aacute; nhẹ, chưa thể hiện sự nghi&ecirc;m minh của ph&aacute;p luật v&agrave; kh&ocirc;ng đ&uacute;ng với h&agrave;nh vi phạm tội của Th&aacute;i.</p>

<p><a href="https://images2.thanhnien.vn/528068263637045248/2023/4/25/nguyen-vo-quynh-trang-1682393489166634557818.jpg" target="_blank" title="Bị cáo Nguyễn Võ Quỳnh Trang và Nguyễn Kim Trung Thái ở phiên tòa sơ thẩm"><img alt="Nguyễn Võ Quỳnh Trang rút đơn kháng cáo xin giảm án tử hình vì thấy mệt mỏi - Ảnh 1." id="img_575162853193871360" src="https://images2.thanhnien.vn/528068263637045248/2023/4/25/nguyen-vo-quynh-trang-1682393489166634557818.jpg" title="Nguyễn Võ Quỳnh Trang rút đơn kháng cáo xin giảm án tử hình vì thấy mệt mỏi - Ảnh 1." /></a></p>

<p>Bị c&aacute;o&nbsp;<a href="https://thanhnien.vn/toa-chua-nhan-duoc-don-rut-khang-cao-cua-nguyen-vo-quynh-trang-185230424172248364.htm" title="Tòa chưa nhận được đơn rút kháng cáo của Nguyễn Võ Quỳnh Trang">Nguyễn V&otilde; Quỳnh Trang</a>&nbsp;v&agrave;&nbsp;<a href="https://thanhnien.vn/nguyen-kim-trung-thai.html" title=" Nguyễn Kim Trung Thái">Nguyễn Kim Trung Th&aacute;i</a>&nbsp;ở phi&ecirc;n t&ograve;a sơ thẩm</p>

<p>NGỌC DƯƠNG</p>

<p>Hồi th&aacute;ng 11.2022, TAND TP.HCM x&eacute;t xử sơ thẩm, tuy&ecirc;n phạt bị c&aacute;o Nguyễn V&otilde; Quỳnh Trang (27 tuổi, ngụ Gia Lai, sống chung như vợ chồng với Nguyễn Kim Trung Th&aacute;i, l&agrave; cha ruột b&eacute; V.A) &aacute;n tử h&igrave;nh về tội &quot;giết người&quot;, 3 năm t&ugrave; về tội &quot;h&agrave;nh hạ người kh&aacute;c&quot;. Tổng hợp h&igrave;nh phạt l&agrave; tử h&igrave;nh.</p>

<p>Bị c&aacute;o&nbsp;<a href="https://thanhnien.vn/loi-khai-nguyen-kim-trung-thai-xoa-du-lieu-camera-vi-ban-loan-1851525391.htm" target="_blank" title="Lời khai Nguyễn Kim Trung Thái: Xóa dữ liệu camera vì “bấn loạn”">Nguyễn Kim Trung Th&aacute;i</a>&nbsp;(37 tuổi) bị phạt mức &aacute;n 3 năm t&ugrave; về tội &quot;h&agrave;nh hạ người kh&aacute;c&quot;, 5 năm t&ugrave; về tội &quot;che giấu tội phạm&quot;. Tổng hợp h&igrave;nh phạt chung l&agrave; 8 năm t&ugrave;.</p>

<p>Theo bản &aacute;n sơ thẩm, từ ng&agrave;y 7 - 22.12.2021, bằng nhiều h&igrave;nh thức kh&aacute;c nhau, Nguyễn V&otilde; Quỳnh Trang đ&atilde; h&agrave;nh hạ, đ&aacute;nh đập b&eacute; V.A trong nhiều ng&agrave;y, nhiều giờ. Trang đ&aacute;nh b&eacute; V.A trong t&igrave;nh trạng b&eacute; kh&ocirc;ng mặc quần &aacute;o, quỳ gối v&agrave; giơ 2 tay l&ecirc;n cao, bắt b&eacute; chui v&agrave;o chuồng ch&oacute;, nhốt c&ugrave;ng với ch&oacute; v&agrave; quỳ gối trong chuồng ch&oacute;...</p>

<p>Bị c&aacute;o Th&aacute;i nhiều lần chứng kiến con g&aacute;i m&igrave;nh bị Nguyễn V&otilde; Quỳnh Trang đ&aacute;nh đập nhưng kh&ocirc;ng can ngăn, thậm ch&iacute; c&ograve;n nhiều lần cầm c&acirc;y c&ugrave;ng Trang la mắng, đ&aacute;nh đập v&agrave; h&agrave;nh hạ b&eacute; V.A.</p>

<p>Theo kết luận gi&aacute;m định ph&aacute;p y tử thi của C&ocirc;ng an TP.HCM, nguy&ecirc;n nh&acirc;n tử vong của b&eacute; V.A l&agrave; ph&ugrave; phổi cấp do sốc chấn thương. Đồng thời, cơ quan n&agrave;y đ&atilde; phục hồi v&agrave; tr&iacute;ch xuất được c&aacute;c dữ liệu camera m&agrave; Th&aacute;i đ&atilde; cố t&igrave;nh x&oacute;a nhằm che giấu h&agrave;nh vi phạm tội của Trang&hellip;</p>
', N'dog.png', NULL, N'nguyễn-vo-quỳnh-trang-xin-rut-đon-khang-cao-giam-an-tu-hinh-vi-cho-rằng-mệt-moi', 1, 10, CAST(N'2023-04-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([id], [name], [desciption], [content], [image], [link], [meta], [hide], [order], [datebegin], [categoryId]) VALUES (8, N'TP.HCM: 59 điểm tiêm vắc xin Covid-19 ''hoạt động xuyên lễ''', N'Sở Y tế TP.HCM vừa ban hành kế hoạch tiêm vắc xin phòng Covid-19 xuyên lễ cho người dân thành phố từ 18 tuổi trở lên với 59 điểm tiêm vắc xin tại 22 quận, huyện và thành phố Thủ Đức.', N'<p>Theo Sở Y tế, t&igrave;nh h&igrave;nh diễn biến dịch bệnh COVID-19 vẫn c&ograve;n phức tạp với sự xuất hiện của c&aacute;c biến thể phụ mới của biến chủng Omicron tr&ecirc;n địa b&agrave;n TP.HCM như XBB.1.5, XBB.1.9.1, XBB.1.16 v&agrave; XBB.1.16.1.</p>

<p>C&ugrave;ng với đ&oacute;, miễn dịch cộng đồng bắt đầu c&oacute; chiều hướng giảm dẫn đến số ca mắc mới tăng nhanh trong c&aacute;c ng&agrave;y gần đ&acirc;y. Theo đ&oacute;, số ca nhập viện bắt đầu tăng cao trở lại, trong đ&oacute;, hầu hết l&agrave; người thuộc nh&oacute;m nguy cơ v&agrave; những người chưa ti&ecirc;m đủ vắc xin ph&ograve;ng Covid-19 theo quy định của Bộ Y tế.</p>

<p>Trung t&acirc;m Kiểm so&aacute;t Bệnh tật TP.HCM ghi nhận từ 16 giờ ng&agrave;y 23.4 đến 16 giờ ng&agrave;y 24.4, TP.HCM c&oacute; 81 ca mắc mới, 77 ca nhập viện, 233 ca đang điều trị, 62 trường hợp cần hỗ trợ h&ocirc; hấp, 19 ca xuất viện.</p>

<p>Từ c&aacute;c mẫu bệnh phẩm gi&aacute;m s&aacute;t dịch tễ trong cộng đồng của HCDC, Viện Pasteur TP.HCM đ&atilde; ph&aacute;t hiện c&aacute;c biến thể phụ mới của Omicron bao gồm XBB.1.5, XBB.1.9.1, XBB.1.16 v&agrave; XBB.1.16.1.</p>

<p>Những biến thể phụ mới ph&aacute;t hiện tại th&agrave;nh phố cũng l&agrave; những biến thể phụ đ&atilde; c&oacute; mặt tại nhiều quốc gia tr&ecirc;n thế giới v&agrave; được Tổ chức Y tế thế giới (WHO) xếp v&agrave;o nh&oacute;m c&aacute;c biến thể đ&aacute;ng quan t&acirc;m (VOI) hoặc biến thể cần được theo d&otilde;i (VUMs).</p>

<p><a href="https://images2.thanhnien.vn/528068263637045248/2023/4/25/tiem-vacxin-1682388942015538816602.jpg" target="_blank" title="Trẻ được tư vấn trước tiêm vắc xin Covid-19 tại một điểm tiêm TP.HCM"><img alt="TP.HCM: 59 điểm tiêm vắc-xin Covid-19 hoạt động xuyên lễ - Ảnh 1." id="img_575143200025776128" src="https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2023/4/25/tiem-vacxin-1682388942015538816602.jpg" title="TP.HCM: 59 điểm tiêm vắc-xin Covid-19 hoạt động xuyên lễ - Ảnh 1." /></a></p>

<p>Trẻ được tư vấn trước ti&ecirc;m vắc xin Covid-19 tại một điểm ti&ecirc;m TP.HCM</p>

<p>L&Ecirc; CẦM</p>

<p>Hiện nay, chưa c&oacute; b&aacute;o c&aacute;o từ c&aacute;c nước tr&ecirc;n thế giới cho thấy mối li&ecirc;n quan giữa c&aacute;c biến thể đ&aacute;ng quan t&acirc;m (VOI) hoặc biến thể cần được theo d&otilde;i (VUMs) với t&igrave;nh trạng mắc Covid-19 nặng hơn tr&ecirc;n to&agrave;n cầu.</p>

<p>Tuy nhi&ecirc;n, t&igrave;nh h&igrave;nh thực tế cho thấy số ca mắc mới tăng n&ecirc;n sẽ dẫn đến số ca nhập viện tăng l&agrave; kh&oacute; tr&aacute;nh. Mặt kh&aacute;c, hầu hết những ca nhập viện đều l&agrave; người thuộc nh&oacute;m nguy cơ, trong đ&oacute; c&oacute; những người chưa ti&ecirc;m đủ vắc xin ph&ograve;ng Covid-19 theo quy định của Bộ Y tế.</p>

<p>Theo Sở Y tế TP.HCM, việc tu&acirc;n thủ v&agrave; triển khai hiệu quả &ldquo;Chiến dịch bảo vệ thuộc nh&oacute;m nguy cơ&rdquo; vừa được UBND TP ban h&agrave;nh mang &yacute; nghĩa quyết định, trong đ&oacute;, việc ti&ecirc;m chủng đầy đủ c&aacute;c mũi vắc xin ph&ograve;ng Covid-19 theo khuyến c&aacute;o của Bộ Y tế vẫn lu&ocirc;n l&agrave; biện ph&aacute;p tốt nhất gi&uacute;p bảo vệ bản th&acirc;n, gia đ&igrave;nh v&agrave; cộng đồng trước dịch bệnh Covid-19.</p>

<p>Nhằm gi&uacute;p người d&acirc;n c&oacute; những ng&agrave;y nghỉ an to&agrave;n trong những ng&agrave;y lễ sắp đến bao gồm Giỗ Tổ H&ugrave;ng Vương (m&ugrave;ng 10.3 &acirc;m lịch), Ng&agrave;y Chiến thắng (30.4), Ng&agrave;y Quốc tế Lao Động (1.5), ng&agrave;nh Y tế Th&agrave;nh phố triển khai 59 điểm ti&ecirc;m vắc xin ph&ograve;ng Covid-19 xuy&ecirc;n suốt trong những ng&agrave;y nghỉ lễ tại 22 quận, huyện v&agrave; th&agrave;nh phố Thủ Đức cho người từ 18 tuổi trở l&ecirc;n.</p>

<p>Để bảo vệ sức khỏe của ch&iacute;nh bản th&acirc;n v&agrave; những người xung quanh, HCDC khuyến c&aacute;o h&atilde;y chủ động thực hiện 4 &quot;ch&igrave;a kh&oacute;a&quot; ph&ograve;ng, chống Covid-19 gồm 2K + khử khuẩn, vắc xin, miễn dịch, tu&acirc;n thủ.</p>
', N'minhhoa.png', NULL, N'TPHCM-59-diem-tiem-vac-xin-Covid19-hoat-dong-xuyen-le', 1, 12, CAST(N'2023-04-25T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Process] ON 

INSERT [dbo].[Process] ([id], [image], [name], [description], [hide], [order], [link]) VALUES (1, N'flaticon-search', N'Search a job', N'This is the first step', 1, 1, N'')
INSERT [dbo].[Process] ([id], [image], [name], [description], [hide], [order], [link]) VALUES (2, N'flaticon-curriculum-vitae', N'Apply for job', N'This is the second step', 1, 2, N'')
INSERT [dbo].[Process] ([id], [image], [name], [description], [hide], [order], [link]) VALUES (3, N'flaticon-tour', N'Get your job', N'This is the third step', 1, 3, N'')
SET IDENTITY_INSERT [dbo].[Process] OFF
GO
SET IDENTITY_INSERT [dbo].[Slogan] ON 

INSERT [dbo].[Slogan] ([id], [name], [job], [message], [image], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'Margaret Lawson', N'Creative Director', N'“I am at an age where I just want to be fit and healthy our bodies are our responsibility! So start caring for your body and it will care for you. Eat clean it will care for you and workout hard.”', N'testimonial-founder.png', N'', N'', 1, 2, CAST(N'2023-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Slogan] ([id], [name], [job], [message], [image], [link], [meta], [hide], [order], [datebegin]) VALUES (2, N'Margaret Lawson', N'Creative Director', N'“I am at an age where I just want to be fit and healthy our bodies are our responsibility! So start caring for your body and it will care for you. Eat clean it will care for you and workout hard.”', N'testimonial-founder.png', N'', N'', 1, 2, CAST(N'2023-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Slogan] ([id], [name], [job], [message], [image], [link], [meta], [hide], [order], [datebegin]) VALUES (3, N'Margaret Lawson', N'Creative Director', N'“I am at an age where I just want to be fit and healthy our bodies are our responsibility! So start caring for your body and it will care for you. Eat clean it will care for you and workout hard.”', N'testimonial-founder.png', N'', N'', 1, 2, CAST(N'2023-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Slogan] ([id], [name], [job], [message], [image], [link], [meta], [hide], [order], [datebegin]) VALUES (4, N'Margaret Lawson', N'Creative Director', N'“I am at an age where I just want to be fit and healthy our bodies are our responsibility! So start caring for your body and it will care for you. Eat clean it will care for you and workout hard.”', N'testimonial-founder.png', N'', N'', 1, 2, CAST(N'2023-02-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Slogan] OFF
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[DetailJob]  WITH CHECK ADD  CONSTRAINT [fk_job_id_detail_job] FOREIGN KEY([id_job])
REFERENCES [dbo].[Job] ([id])
GO
ALTER TABLE [dbo].[DetailJob] CHECK CONSTRAINT [fk_job_id_detail_job]
GO
ALTER TABLE [dbo].[DetailJob]  WITH CHECK ADD  CONSTRAINT [fk_user_id_detail_job] FOREIGN KEY([id_user])
REFERENCES [dbo].[AspNetUsers] ([id])
GO
ALTER TABLE [dbo].[DetailJob] CHECK CONSTRAINT [fk_user_id_detail_job]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [fk_job_category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [fk_job_category]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [fk_news_category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[NCategory] ([id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [fk_news_category]
GO
