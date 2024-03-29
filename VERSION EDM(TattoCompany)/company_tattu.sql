USE [master]
GO
/****** Object:  Database [tatu_company]    Script Date: 09/10/2019 17:21:12 ******/
CREATE DATABASE [tatu_company]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tatu_company', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\tatu_company.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tatu_company_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\tatu_company_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tatu_company] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tatu_company].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tatu_company] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tatu_company] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tatu_company] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tatu_company] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tatu_company] SET ARITHABORT OFF 
GO
ALTER DATABASE [tatu_company] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tatu_company] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [tatu_company] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tatu_company] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tatu_company] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tatu_company] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tatu_company] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tatu_company] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tatu_company] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tatu_company] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tatu_company] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tatu_company] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tatu_company] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tatu_company] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tatu_company] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tatu_company] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tatu_company] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tatu_company] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tatu_company] SET RECOVERY FULL 
GO
ALTER DATABASE [tatu_company] SET  MULTI_USER 
GO
ALTER DATABASE [tatu_company] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tatu_company] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tatu_company] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tatu_company] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'tatu_company', N'ON'
GO
USE [tatu_company]
GO
/****** Object:  Table [dbo].[boleta]    Script Date: 09/10/2019 17:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boleta](
	[id_boleta] [int] NOT NULL,
	[fecha_hora] [date] NOT NULL,
	[id_venta] [int] NOT NULL,
 CONSTRAINT [PK_boleta] PRIMARY KEY CLUSTERED 
(
	[id_boleta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cliente]    Script Date: 09/10/2019 17:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[id_cliente] [int] NOT NULL,
	[nombre] [varchar](60) NOT NULL,
	[edad] [int] NOT NULL,
	[telefono] [varchar](20) NULL,
	[correo] [varchar](50) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comuna]    Script Date: 09/10/2019 17:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comuna](
	[id_comuna] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_comuna] PRIMARY KEY CLUSTERED 
(
	[id_comuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 09/10/2019 17:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sucursal](
	[id_sucursal] [int] IDENTITY(1,1) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[id_comuna] [int] NOT NULL,
 CONSTRAINT [PK_sucursal] PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tatuador]    Script Date: 09/10/2019 17:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tatuador](
	[id_tatuador] [int] NOT NULL,
	[rut] [varchar](14) NOT NULL,
	[nombres] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[fec_nac] [date] NULL,
	[direccion] [varchar](50) NULL,
	[telefono] [varchar](200) NULL,
	[genero] [char](1) NULL,
 CONSTRAINT [PK_tatuador] PRIMARY KEY CLUSTERED 
(
	[id_tatuador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tatuaje]    Script Date: 09/10/2019 17:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tatuaje](
	[id_tatuaje] [int] NOT NULL,
	[tamano] [varchar](30) NOT NULL,
	[cant_color] [varchar](30) NOT NULL,
	[sesiones] [int] NOT NULL,
 CONSTRAINT [PK_tatuaje] PRIMARY KEY CLUSTERED 
(
	[id_tatuaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[venta]    Script Date: 09/10/2019 17:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[id_venta] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[id_tatuador] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[fecha_hora] [date] NOT NULL,
	[id_tatuaje] [int] NOT NULL,
	[valor_total] [int] NOT NULL,
 CONSTRAINT [PK_venta] PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[boleta]  WITH CHECK ADD  CONSTRAINT [FK_boleta_venta] FOREIGN KEY([id_venta])
REFERENCES [dbo].[venta] ([id_venta])
GO
ALTER TABLE [dbo].[boleta] CHECK CONSTRAINT [FK_boleta_venta]
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD  CONSTRAINT [FK_sucursal_comuna] FOREIGN KEY([id_comuna])
REFERENCES [dbo].[comuna] ([id_comuna])
GO
ALTER TABLE [dbo].[sucursal] CHECK CONSTRAINT [FK_sucursal_comuna]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_cliente]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_sucursal] FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id_sucursal])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_sucursal]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_tatuador] FOREIGN KEY([id_tatuador])
REFERENCES [dbo].[tatuador] ([id_tatuador])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_tatuador]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_tatuaje] FOREIGN KEY([id_tatuaje])
REFERENCES [dbo].[tatuaje] ([id_tatuaje])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_tatuaje]
GO
USE [master]
GO
ALTER DATABASE [tatu_company] SET  READ_WRITE 
GO
