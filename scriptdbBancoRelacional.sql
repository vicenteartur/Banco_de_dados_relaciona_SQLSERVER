USE [master]
GO
/****** Object:  Database [dbAcompanhamentoDocente]    Script Date: 20/10/2021 11:37:00 ******/
CREATE DATABASE [dbAcompanhamentoDocente]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbAcompanhamentoDocente', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbAcompanhamentoDocente.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbAcompanhamentoDocente_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbAcompanhamentoDocente_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbAcompanhamentoDocente].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET RECOVERY FULL 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET  MULTI_USER 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbAcompanhamentoDocente', N'ON'
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET QUERY_STORE = OFF
GO
USE [dbAcompanhamentoDocente]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/10/2021 11:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 20/10/2021 11:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 20/10/2021 11:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 20/10/2021 11:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 20/10/2021 11:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbAno]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbAno](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Ano] [char](1) NOT NULL,
	[Turma] [char](1) NOT NULL,
	[CodigoModalidade] [int] NOT NULL,
	[Periodo] [nvarchar](50) NOT NULL,
 CONSTRAINT [pkAno] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbAtribuicaoColaboradorEscola]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbAtribuicaoColaboradorEscola](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoEscola] [int] NOT NULL,
	[CodigoColaborador] [int] NOT NULL,
	[Ativa] [tinyint] NOT NULL,
 CONSTRAINT [pkAtribuicaoColaboradorEscola] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbAtribuicaoComponenteCurricularAnoColaboradorEscola]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbAtribuicaoComponenteCurricularAnoColaboradorEscola](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoAtribuicaoColaboradorEscola] [int] NOT NULL,
	[CodigoComponenteCurricular] [int] NOT NULL,
	[CodigoAno] [int] NOT NULL,
	[Ativa] [tinyint] NOT NULL,
 CONSTRAINT [pkAtribuicaoComponenteCurricularAnoColaboradorEscola] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbAvaliacao]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbAvaliacao](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[datarealizacao] [date] NOT NULL,
	[CodigoColaboradorAvaliador] [int] NOT NULL,
	[CodigoAtribuicaoComponenteCurricularAnoColaboradorEscola] [int] NOT NULL,
	[Finalizada] [tinyint] NOT NULL,
 CONSTRAINT [pkAvaliacao] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCargo]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCargo](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Cargo] [nvarchar](50) NOT NULL,
	[NiveldeAcesso] [int] NOT NULL,
 CONSTRAINT [pkCargo] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCidade]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCidade](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Cidade] [nvarchar](50) NOT NULL,
	[CodigoEstado] [int] NOT NULL,
 CONSTRAINT [pkCidade] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbClassificacaoCriterio]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbClassificacaoCriterio](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Classificacao] [nvarchar](50) NULL,
 CONSTRAINT [pkClassificacaoCriterio] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbColaborador]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbColaborador](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nchar](80) NOT NULL,
	[Email] [nchar](80) NOT NULL,
	[Senha] [nchar](20) NOT NULL,
	[CodigoCargo] [int] NULL,
	[Ativo] [tinyint] NOT NULL,
 CONSTRAINT [pkColaborador] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbComponenteCurricular]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbComponenteCurricular](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[ComponenteCurricular] [nchar](25) NOT NULL,
	[SubArea] [nchar](50) NOT NULL,
	[CodigoModalidade] [int] NOT NULL,
	[Ativa] [tinyint] NOT NULL,
 CONSTRAINT [pkComponenteCurricular] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCriterioAvaliacao]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCriterioAvaliacao](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Criterio] [nvarchar](500) NOT NULL,
	[CodigoClassificacaoCriterio] [int] NOT NULL,
	[Ativa] [tinyint] NOT NULL,
 CONSTRAINT [pkCriterioAvaliacao] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCriterioAvaliado]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCriterioAvaliado](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCriterioAvaliacao] [int] NOT NULL,
	[Conceito] [tinyint] NOT NULL,
	[Comentario] [text] NULL,
	[CodigoAvaliacao] [int] NOT NULL,
 CONSTRAINT [pkCriterioAvaliado] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCriterioComponenteCurricular]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCriterioComponenteCurricular](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCriterioAvaliacao] [int] NOT NULL,
	[CodigoComponenteCurricular] [int] NOT NULL,
	[Ativa] [int] NOT NULL,
 CONSTRAINT [PK_tbCriterioComponenteCurricular] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbEscola]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbEscola](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Escola] [nvarchar](50) NOT NULL,
	[Rua] [nvarchar](50) NOT NULL,
	[Bairro] [nvarchar](50) NOT NULL,
	[CodigoCidade] [int] NOT NULL,
	[INEP] [int] NOT NULL,
	[Ativa] [tinyint] NOT NULL,
 CONSTRAINT [pkEscola] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbEstado]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbEstado](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [nvarchar](50) NOT NULL,
	[Sigla] [char](2) NOT NULL,
 CONSTRAINT [pkEstado] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbModalidade]    Script Date: 20/10/2021 11:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbModalidade](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Modalidade] [nchar](50) NOT NULL,
 CONSTRAINT [PK_tbModalidade] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 20/10/2021 11:37:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 20/10/2021 11:37:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbAno_CodigoModalidade]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_tbAno_CodigoModalidade] ON [dbo].[tbAno]
(
	[CodigoModalidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodigoColaborador]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_CodigoColaborador] ON [dbo].[tbAtribuicaoColaboradorEscola]
(
	[CodigoColaborador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodigoEscola]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_CodigoEscola] ON [dbo].[tbAtribuicaoColaboradorEscola]
(
	[CodigoEscola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodigoAno]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_CodigoAno] ON [dbo].[tbAtribuicaoComponenteCurricularAnoColaboradorEscola]
(
	[CodigoAno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodigoAtribuicaoColaboradorEscola]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_CodigoAtribuicaoColaboradorEscola] ON [dbo].[tbAtribuicaoComponenteCurricularAnoColaboradorEscola]
(
	[CodigoAtribuicaoColaboradorEscola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodigoComponenteCurricular]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_CodigoComponenteCurricular] ON [dbo].[tbAtribuicaoComponenteCurricularAnoColaboradorEscola]
(
	[CodigoComponenteCurricular] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodigoColaboradorAvaliador]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_CodigoColaboradorAvaliador] ON [dbo].[tbAvaliacao]
(
	[CodigoColaboradorAvaliador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbAvaliacao_CodigoAtribuicaoComponenteCurricularAnoColaboradorEscola]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_tbAvaliacao_CodigoAtribuicaoComponenteCurricularAnoColaboradorEscola] ON [dbo].[tbAvaliacao]
(
	[CodigoAtribuicaoComponenteCurricularAnoColaboradorEscola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodigoEstado]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_CodigoEstado] ON [dbo].[tbCidade]
(
	[CodigoEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodigoCargo]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_CodigoCargo] ON [dbo].[tbColaborador]
(
	[CodigoCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbComponenteCurricular_CodigoModalidade]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_tbComponenteCurricular_CodigoModalidade] ON [dbo].[tbComponenteCurricular]
(
	[CodigoModalidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodigoClassificacaoCriterio]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_CodigoClassificacaoCriterio] ON [dbo].[tbCriterioAvaliacao]
(
	[CodigoClassificacaoCriterio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodigoAvaliacao]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_CodigoAvaliacao] ON [dbo].[tbCriterioAvaliado]
(
	[CodigoAvaliacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodigoCriterioAvaliacao]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_CodigoCriterioAvaliacao] ON [dbo].[tbCriterioAvaliado]
(
	[CodigoCriterioAvaliacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbCriterioComponenteCurricular_CodigoComponenteCurricular]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_tbCriterioComponenteCurricular_CodigoComponenteCurricular] ON [dbo].[tbCriterioComponenteCurricular]
(
	[CodigoComponenteCurricular] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbCriterioComponenteCurricular_CodigoCriterioAvaliacao]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_tbCriterioComponenteCurricular_CodigoCriterioAvaliacao] ON [dbo].[tbCriterioComponenteCurricular]
(
	[CodigoCriterioAvaliacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CodigoCidade]    Script Date: 20/10/2021 11:37:02 ******/
CREATE NONCLUSTERED INDEX [IX_CodigoCidade] ON [dbo].[tbEscola]
(
	[CodigoCidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[tbAno]  WITH CHECK ADD  CONSTRAINT [FK_tbAno_tbModalidade] FOREIGN KEY([CodigoModalidade])
REFERENCES [dbo].[tbModalidade] ([Codigo])
GO
ALTER TABLE [dbo].[tbAno] CHECK CONSTRAINT [FK_tbAno_tbModalidade]
GO
ALTER TABLE [dbo].[tbAtribuicaoColaboradorEscola]  WITH CHECK ADD  CONSTRAINT [fkCodigoColaborador] FOREIGN KEY([CodigoColaborador])
REFERENCES [dbo].[tbColaborador] ([Codigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbAtribuicaoColaboradorEscola] CHECK CONSTRAINT [fkCodigoColaborador]
GO
ALTER TABLE [dbo].[tbAtribuicaoColaboradorEscola]  WITH CHECK ADD  CONSTRAINT [fkCodigoEscola] FOREIGN KEY([CodigoEscola])
REFERENCES [dbo].[tbEscola] ([Codigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbAtribuicaoColaboradorEscola] CHECK CONSTRAINT [fkCodigoEscola]
GO
ALTER TABLE [dbo].[tbAtribuicaoComponenteCurricularAnoColaboradorEscola]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tbAtribuicaoComponenteCurricularAnoColaboradorEscola_dbo.tbAtribuicaoColaboradorEscola_CodigoAtribuicaoColaboradorEscola] FOREIGN KEY([CodigoAtribuicaoColaboradorEscola])
REFERENCES [dbo].[tbAtribuicaoColaboradorEscola] ([Codigo])
GO
ALTER TABLE [dbo].[tbAtribuicaoComponenteCurricularAnoColaboradorEscola] CHECK CONSTRAINT [FK_dbo.tbAtribuicaoComponenteCurricularAnoColaboradorEscola_dbo.tbAtribuicaoColaboradorEscola_CodigoAtribuicaoColaboradorEscola]
GO
ALTER TABLE [dbo].[tbAtribuicaoComponenteCurricularAnoColaboradorEscola]  WITH CHECK ADD  CONSTRAINT [fkCodigoAno] FOREIGN KEY([CodigoAno])
REFERENCES [dbo].[tbAno] ([Codigo])
GO
ALTER TABLE [dbo].[tbAtribuicaoComponenteCurricularAnoColaboradorEscola] CHECK CONSTRAINT [fkCodigoAno]
GO
ALTER TABLE [dbo].[tbAtribuicaoComponenteCurricularAnoColaboradorEscola]  WITH CHECK ADD  CONSTRAINT [fkCodigoComponenteCurricular] FOREIGN KEY([CodigoComponenteCurricular])
REFERENCES [dbo].[tbComponenteCurricular] ([Codigo])
GO
ALTER TABLE [dbo].[tbAtribuicaoComponenteCurricularAnoColaboradorEscola] CHECK CONSTRAINT [fkCodigoComponenteCurricular]
GO
ALTER TABLE [dbo].[tbAvaliacao]  WITH CHECK ADD  CONSTRAINT [fkAtribuicaoComponenteCurricularAnoColaboradorEscola] FOREIGN KEY([CodigoAtribuicaoComponenteCurricularAnoColaboradorEscola])
REFERENCES [dbo].[tbAtribuicaoComponenteCurricularAnoColaboradorEscola] ([Codigo])
GO
ALTER TABLE [dbo].[tbAvaliacao] CHECK CONSTRAINT [fkAtribuicaoComponenteCurricularAnoColaboradorEscola]
GO
ALTER TABLE [dbo].[tbAvaliacao]  WITH CHECK ADD  CONSTRAINT [fkCodigoColaboradorAvaliador] FOREIGN KEY([CodigoColaboradorAvaliador])
REFERENCES [dbo].[tbColaborador] ([Codigo])
GO
ALTER TABLE [dbo].[tbAvaliacao] CHECK CONSTRAINT [fkCodigoColaboradorAvaliador]
GO
ALTER TABLE [dbo].[tbCidade]  WITH CHECK ADD  CONSTRAINT [fkCodigoEstado] FOREIGN KEY([CodigoEstado])
REFERENCES [dbo].[tbEstado] ([Codigo])
GO
ALTER TABLE [dbo].[tbCidade] CHECK CONSTRAINT [fkCodigoEstado]
GO
ALTER TABLE [dbo].[tbColaborador]  WITH CHECK ADD  CONSTRAINT [fkCodigoCargo] FOREIGN KEY([CodigoCargo])
REFERENCES [dbo].[tbCargo] ([Codigo])
GO
ALTER TABLE [dbo].[tbColaborador] CHECK CONSTRAINT [fkCodigoCargo]
GO
ALTER TABLE [dbo].[tbComponenteCurricular]  WITH CHECK ADD  CONSTRAINT [fkCodigoModalidade] FOREIGN KEY([CodigoModalidade])
REFERENCES [dbo].[tbModalidade] ([Codigo])
GO
ALTER TABLE [dbo].[tbComponenteCurricular] CHECK CONSTRAINT [fkCodigoModalidade]
GO
ALTER TABLE [dbo].[tbCriterioAvaliacao]  WITH CHECK ADD  CONSTRAINT [fkCodigoClassificacaoCriterio] FOREIGN KEY([CodigoClassificacaoCriterio])
REFERENCES [dbo].[tbClassificacaoCriterio] ([Codigo])
GO
ALTER TABLE [dbo].[tbCriterioAvaliacao] CHECK CONSTRAINT [fkCodigoClassificacaoCriterio]
GO
ALTER TABLE [dbo].[tbCriterioAvaliado]  WITH NOCHECK ADD  CONSTRAINT [fkCodigoAvaliacao] FOREIGN KEY([CodigoAvaliacao])
REFERENCES [dbo].[tbAvaliacao] ([Codigo])
GO
ALTER TABLE [dbo].[tbCriterioAvaliado] CHECK CONSTRAINT [fkCodigoAvaliacao]
GO
ALTER TABLE [dbo].[tbCriterioAvaliado]  WITH NOCHECK ADD  CONSTRAINT [fkCodigoCriterioAvaliacao] FOREIGN KEY([CodigoCriterioAvaliacao])
REFERENCES [dbo].[tbCriterioAvaliacao] ([Codigo])
GO
ALTER TABLE [dbo].[tbCriterioAvaliado] CHECK CONSTRAINT [fkCodigoCriterioAvaliacao]
GO
ALTER TABLE [dbo].[tbCriterioComponenteCurricular]  WITH NOCHECK ADD  CONSTRAINT [fkCodigoCAvaliacao] FOREIGN KEY([CodigoCriterioAvaliacao])
REFERENCES [dbo].[tbCriterioAvaliacao] ([Codigo])
GO
ALTER TABLE [dbo].[tbCriterioComponenteCurricular] CHECK CONSTRAINT [fkCodigoCAvaliacao]
GO
ALTER TABLE [dbo].[tbCriterioComponenteCurricular]  WITH NOCHECK ADD  CONSTRAINT [fkCodigoCCurricular] FOREIGN KEY([CodigoComponenteCurricular])
REFERENCES [dbo].[tbComponenteCurricular] ([Codigo])
GO
ALTER TABLE [dbo].[tbCriterioComponenteCurricular] CHECK CONSTRAINT [fkCodigoCCurricular]
GO
ALTER TABLE [dbo].[tbEscola]  WITH CHECK ADD  CONSTRAINT [fkCodigoCidade] FOREIGN KEY([CodigoCidade])
REFERENCES [dbo].[tbCidade] ([Codigo])
GO
ALTER TABLE [dbo].[tbEscola] CHECK CONSTRAINT [fkCodigoCidade]
GO
USE [master]
GO
ALTER DATABASE [dbAcompanhamentoDocente] SET  READ_WRITE 
GO
