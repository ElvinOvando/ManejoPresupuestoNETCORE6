USE [ManejoPresupuesto]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 15/05/2022 21:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[TipoOperacionId] [int] NOT NULL,
	[UsuarioId] [int] NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuentas]    Script Date: 15/05/2022 21:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuentas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[TipoCuentaId] [int] NOT NULL,
	[Balance] [decimal](18, 2) NOT NULL,
	[Descripcion] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Cuentas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCuentas]    Script Date: 15/05/2022 21:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCuentas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[Orden] [int] NOT NULL,
 CONSTRAINT [PK_TiposCuentas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposOperaciones]    Script Date: 15/05/2022 21:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposOperaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TiposOperaciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transacciones]    Script Date: 15/05/2022 21:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transacciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[FechaTransaccion] [datetime] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[Nota] [nvarchar](1000) NULL,
	[CuentaId] [int] NOT NULL,
	[CategoriaId] [int] NOT NULL,
 CONSTRAINT [PK_Transacciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 15/05/2022 21:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[EmailNormalizado] [nvarchar](256) NOT NULL,
	[PasswordHash] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([Id], [Nombre], [TipoOperacionId], [UsuarioId]) VALUES (1002, N'Salario', 1, 1)
INSERT [dbo].[Categorias] ([Id], [Nombre], [TipoOperacionId], [UsuarioId]) VALUES (1003, N'Libros', 2, 1)
INSERT [dbo].[Categorias] ([Id], [Nombre], [TipoOperacionId], [UsuarioId]) VALUES (1004, N'Dividendos', 2, 1)
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Cuentas] ON 

INSERT [dbo].[Cuentas] ([Id], [Nombre], [TipoCuentaId], [Balance], [Descripcion]) VALUES (2010, N'Efectivo ', 13, CAST(900351600.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Cuentas] ([Id], [Nombre], [TipoCuentaId], [Balance], [Descripcion]) VALUES (2011, N'Tarjeta Banco ', 6, CAST(45000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Cuentas] ([Id], [Nombre], [TipoCuentaId], [Balance], [Descripcion]) VALUES (2012, N'Prestamos auto', 7, CAST(-50000.00 AS Decimal(18, 2)), NULL)
SET IDENTITY_INSERT [dbo].[Cuentas] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposCuentas] ON 

INSERT [dbo].[TiposCuentas] ([Id], [Nombre], [UsuarioId], [Orden]) VALUES (6, N'Tarjetas', 1, 2)
INSERT [dbo].[TiposCuentas] ([Id], [Nombre], [UsuarioId], [Orden]) VALUES (7, N'Prestamos', 1, 3)
INSERT [dbo].[TiposCuentas] ([Id], [Nombre], [UsuarioId], [Orden]) VALUES (13, N'Efectivo', 1, 1)
SET IDENTITY_INSERT [dbo].[TiposCuentas] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposOperaciones] ON 

INSERT [dbo].[TiposOperaciones] ([Id], [Descripcion]) VALUES (1, N'Ingresos')
INSERT [dbo].[TiposOperaciones] ([Id], [Descripcion]) VALUES (2, N'Gastos')
SET IDENTITY_INSERT [dbo].[TiposOperaciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Transacciones] ON 

INSERT [dbo].[Transacciones] ([Id], [UsuarioId], [FechaTransaccion], [Monto], [Nota], [CuentaId], [CategoriaId]) VALUES (1006, 1, CAST(N'2022-05-04T00:00:00.000' AS DateTime), CAST(1200.00 AS Decimal(18, 2)), NULL, 2010, 1003)
INSERT [dbo].[Transacciones] ([Id], [UsuarioId], [FechaTransaccion], [Monto], [Nota], [CuentaId], [CategoriaId]) VALUES (1007, 1, CAST(N'2022-05-04T00:00:00.000' AS DateTime), CAST(80000.00 AS Decimal(18, 2)), NULL, 2010, 1002)
INSERT [dbo].[Transacciones] ([Id], [UsuarioId], [FechaTransaccion], [Monto], [Nota], [CuentaId], [CategoriaId]) VALUES (2002, 1, CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(100000.00 AS Decimal(18, 2)), NULL, 2010, 1002)
INSERT [dbo].[Transacciones] ([Id], [UsuarioId], [FechaTransaccion], [Monto], [Nota], [CuentaId], [CategoriaId]) VALUES (2003, 1, CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(50000.00 AS Decimal(18, 2)), NULL, 2010, 1004)
INSERT [dbo].[Transacciones] ([Id], [UsuarioId], [FechaTransaccion], [Monto], [Nota], [CuentaId], [CategoriaId]) VALUES (2004, 1, CAST(N'2022-05-30T00:00:00.000' AS DateTime), CAST(30000.00 AS Decimal(18, 2)), NULL, 2010, 1002)
INSERT [dbo].[Transacciones] ([Id], [UsuarioId], [FechaTransaccion], [Monto], [Nota], [CuentaId], [CategoriaId]) VALUES (2005, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(15000.00 AS Decimal(18, 2)), N'ejemplo', 2010, 1002)
INSERT [dbo].[Transacciones] ([Id], [UsuarioId], [FechaTransaccion], [Monto], [Nota], [CuentaId], [CategoriaId]) VALUES (2006, 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(7000.00 AS Decimal(18, 2)), NULL, 2010, 1003)
INSERT [dbo].[Transacciones] ([Id], [UsuarioId], [FechaTransaccion], [Monto], [Nota], [CuentaId], [CategoriaId]) VALUES (3002, 1, CAST(N'2022-04-09T00:00:00.000' AS DateTime), CAST(75000.00 AS Decimal(18, 2)), NULL, 2010, 1002)
INSERT [dbo].[Transacciones] ([Id], [UsuarioId], [FechaTransaccion], [Monto], [Nota], [CuentaId], [CategoriaId]) VALUES (3003, 1, CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(100000.00 AS Decimal(18, 2)), NULL, 2010, 1002)
INSERT [dbo].[Transacciones] ([Id], [UsuarioId], [FechaTransaccion], [Monto], [Nota], [CuentaId], [CategoriaId]) VALUES (3004, 1, CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(900000000.00 AS Decimal(18, 2)), NULL, 2010, 1002)
SET IDENTITY_INSERT [dbo].[Transacciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id], [Email], [EmailNormalizado], [PasswordHash]) VALUES (1, N'prueba@hotmail.com', N'PRUEBA@hotmail.com', N'abc')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Categorias]  WITH CHECK ADD  CONSTRAINT [FK_Categorias_TiposOperaciones] FOREIGN KEY([TipoOperacionId])
REFERENCES [dbo].[TiposOperaciones] ([Id])
GO
ALTER TABLE [dbo].[Categorias] CHECK CONSTRAINT [FK_Categorias_TiposOperaciones]
GO
ALTER TABLE [dbo].[Categorias]  WITH CHECK ADD  CONSTRAINT [FK_Categorias_Usuarios] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Categorias] CHECK CONSTRAINT [FK_Categorias_Usuarios]
GO
ALTER TABLE [dbo].[Cuentas]  WITH CHECK ADD  CONSTRAINT [FK_Cuentas_TiposCuentas] FOREIGN KEY([TipoCuentaId])
REFERENCES [dbo].[TiposCuentas] ([Id])
GO
ALTER TABLE [dbo].[Cuentas] CHECK CONSTRAINT [FK_Cuentas_TiposCuentas]
GO
ALTER TABLE [dbo].[TiposCuentas]  WITH CHECK ADD  CONSTRAINT [FK_TiposCuentas_Usuarios] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[TiposCuentas] CHECK CONSTRAINT [FK_TiposCuentas_Usuarios]
GO
ALTER TABLE [dbo].[Transacciones]  WITH CHECK ADD  CONSTRAINT [FK_Transacciones_Categorias] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categorias] ([Id])
GO
ALTER TABLE [dbo].[Transacciones] CHECK CONSTRAINT [FK_Transacciones_Categorias]
GO
ALTER TABLE [dbo].[Transacciones]  WITH CHECK ADD  CONSTRAINT [FK_Transacciones_Cuentas] FOREIGN KEY([CuentaId])
REFERENCES [dbo].[Cuentas] ([Id])
GO
ALTER TABLE [dbo].[Transacciones] CHECK CONSTRAINT [FK_Transacciones_Cuentas]
GO
ALTER TABLE [dbo].[Transacciones]  WITH CHECK ADD  CONSTRAINT [FK_Transacciones_Usuarios] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Transacciones] CHECK CONSTRAINT [FK_Transacciones_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[TiposCuentas_Insertar]    Script Date: 15/05/2022 21:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TiposCuentas_Insertar]
	-- Add the parameters for the stored procedure here
	@Nombre  nvarchar(50),
	@UsuarioId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @Orden int;
	SELECT @Orden = COALESCE(MAX(Orden),0)+1
	FROM TiposCuentas
	WHERE UsuarioId = @UsuarioId

	INSERT INTO TiposCuentas(Nombre, UsuarioId, Orden)
	VALUES (@Nombre, @UsuarioId, @Orden);

	SELECT SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Transacciones_Actualizar]    Script Date: 15/05/2022 21:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Transacciones_Actualizar]
-- Add the parameters for the stored procedure here
	@Id int,
	@FechaTransaccion datetime,
	@Monto int,
	@MontoAnterior int,
	@CuentaId int,
	@CuentaAnteriorId int,
	@CategoriaId int,
	@Nota nvarchar(1000) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Revertir transacción anterior
	UPDATE Cuentas
	SET Balance -= @MontoAnterior
	WHERE Id = @CuentaAnteriorId;

	-- Realizar transacción anterior
	UPDATE Cuentas
	SET Balance += @Monto
	WHERE Id = @CuentaId;

	UPDATE Transacciones
	SET Monto = ABS(@Monto), FechaTransaccion = @FechaTransaccion, 
	CategoriaId = @CategoriaId, CuentaId = @CuentaId, Nota = @Nota
	WHERE Id= @Id;

END
GO
/****** Object:  StoredProcedure [dbo].[Transacciones_Borrar]    Script Date: 15/05/2022 21:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Transacciones_Borrar]
	-- Add the parameters for the stored procedure here
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  DECLARE @Monto int;
  DECLARE @CuentaId int;
  DECLARE @TipoOperacionId int;

  SELECT @Monto = Monto, @CuentaId = CuentaId, @TipoOperacionId = cat.TipoOperacionId
  FROM Transacciones
  INNER JOIN Categorias cat
  ON cat.Id = Transacciones.CategoriaId
  WHERE Transacciones.Id = @Id;

  DECLARE @FactorMultiplicativo int = 1;

  IF (@TipoOperacionId = 2)
	SET @FactorMultiplicativo = -1;
  
  SET @Monto = @Monto * @FactorMultiplicativo;

  UPDATE Cuentas
  SET Balance -= @Monto
  WHERE Id = @CuentaId;

  DELETE Transacciones
  WHERE Id = @Id;
  
END
GO
/****** Object:  StoredProcedure [dbo].[Transacciones_Insertar]    Script Date: 15/05/2022 21:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Transacciones_Insertar]
	@UsuarioId int,
	@FechaTransaccion date,
	@Monto int,
	@CategoriaId int,
	@CuentaId int,
	@Nota nvarchar(1000) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Transacciones(UsuarioId, FechaTransaccion, Monto, CategoriaId, CuentaId, Nota)
	VALUES (@UsuarioId, @FechaTransaccion, ABS(@Monto), @CategoriaId, @CuentaId, @Nota)
	
	UPDATE Cuentas
	SET Balance += @Monto
	WHERE Id = @CuentaId;

	SELECT SCOPE_IDENTITY();
END
GO
