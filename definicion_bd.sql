USE [CAR_CENTER]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 30/07/2021 3:26:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[id_doc] [int] NULL,
	[tipo_doc] [varchar](3) NULL,
	[num_doc] [varchar](15) NULL,
	[pri_nombre] [varchar](25) NULL,
	[seg_nombre] [varchar](25) NULL,
	[pri_apellido] [varchar](25) NULL,
	[seg_apellido] [varchar](25) NULL,
	[correo] [varchar](100) NULL,
	[celular] [varchar](15) NULL,
	[direccion] [varchar](100) NULL,
	[id_servicio] [int] NULL,
	[presupuesto] [decimal](18, 0) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[documento]    Script Date: 30/07/2021 3:26:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documento](
	[id_doc] [int] IDENTITY(1,1) NOT NULL,
	[tipo_doc] [varchar](3) NULL,
	[nom_doc] [varchar](30) NULL,
 CONSTRAINT [PK_documento] PRIMARY KEY CLUSTERED 
(
	[id_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 30/07/2021 3:26:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[id_factura] [int] IDENTITY(1,1) NOT NULL,
	[num_factura] [varchar](10) NULL,
	[total_factura] [decimal](18, 0) NULL,
	[descuento] [decimal](5, 2) NULL,
 CONSTRAINT [PK_factura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mantenimiento]    Script Date: 30/07/2021 3:26:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mantenimiento](
	[id_manten] [int] IDENTITY(1,1) NOT NULL,
	[num_unidades] [int] NULL,
	[precio_unidad] [decimal](8, 2) NULL,
	[descuento] [decimal](3, 2) NULL,
	[id_repuesto] [int] NOT NULL,
	[id_mecanico] [int] NOT NULL,
	[id_servicio] [int] NOT NULL,
	[id_cliente] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mecanico]    Script Date: 30/07/2021 3:26:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mecanico](
	[id_mecanico] [int] IDENTITY(1,1) NOT NULL,
	[id_doc] [int] NULL,
	[tipo_doc] [varchar](3) NULL,
	[num_doc] [varchar](15) NULL,
	[celular] [varchar](15) NULL,
	[direccion] [varchar](100) NULL,
	[correo] [varchar](100) NULL,
	[pri_nombre] [varchar](25) NULL,
	[seg_nombre] [varchar](25) NULL,
	[pri_apellido] [varchar](25) NULL,
	[seg_apellido] [varchar](25) NULL,
 CONSTRAINT [PK_mecanico] PRIMARY KEY CLUSTERED 
(
	[id_mecanico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[repuestos]    Script Date: 30/07/2021 3:26:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[repuestos](
	[id_repuesto] [int] IDENTITY(1,1) NOT NULL,
	[nom_repuesto] [varchar](60) NULL,
	[existencia] [int] NULL,
	[vr_repuesto] [decimal](15, 2) NULL,
 CONSTRAINT [PK_repuestos] PRIMARY KEY CLUSTERED 
(
	[id_repuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[servicios]    Script Date: 30/07/2021 3:26:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[servicios](
	[id_servicio] [int] IDENTITY(1,1) NOT NULL,
	[cod_servicio] [varchar](10) NULL,
	[desc_servicio] [varchar](100) NULL,
	[precio_mano] [decimal](18, 2) NULL,
	[descuento] [decimal](5, 3) NULL,
 CONSTRAINT [PK_servicios] PRIMARY KEY CLUSTERED 
(
	[id_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cliente] ON 

INSERT [dbo].[cliente] ([id_cliente], [id_doc], [tipo_doc], [num_doc], [pri_nombre], [seg_nombre], [pri_apellido], [seg_apellido], [correo], [celular], [direccion], [id_servicio], [presupuesto]) VALUES (1, 1, N'CC', N'123456789', N'Mario', N'Germán', N'Lopez', N'', N'mlopez@micorreo.com', N'3154150102', N'Call 10 # 45-55', 4, CAST(160000 AS Decimal(18, 0)))
INSERT [dbo].[cliente] ([id_cliente], [id_doc], [tipo_doc], [num_doc], [pri_nombre], [seg_nombre], [pri_apellido], [seg_apellido], [correo], [celular], [direccion], [id_servicio], [presupuesto]) VALUES (2, 1, N'CC', N'12344574', N'Luis', N'Alberto', N'Posada', N'', N'lposada@gmail.com', N'3214153331', N'Cra 10 # 80-00', 3, CAST(320000 AS Decimal(18, 0)))
INSERT [dbo].[cliente] ([id_cliente], [id_doc], [tipo_doc], [num_doc], [pri_nombre], [seg_nombre], [pri_apellido], [seg_apellido], [correo], [celular], [direccion], [id_servicio], [presupuesto]) VALUES (3, 2, N'CE', N'E-1787444', N'Carlos', N'', N'Fomeque', N'Perez', N'cfomeqye@yahoo.com', N'3164450101', N'Diag 2a # 5-31', 2, CAST(600000 AS Decimal(18, 0)))
INSERT [dbo].[cliente] ([id_cliente], [id_doc], [tipo_doc], [num_doc], [pri_nombre], [seg_nombre], [pri_apellido], [seg_apellido], [correo], [celular], [direccion], [id_servicio], [presupuesto]) VALUES (4, 5, N'NIT', N'900124548', N'Jhonhatan', N'Córdoba', N'Farfan', N'', N'cjhon@gmail.com', N'3218474412', N'Cra 28a # 45-12', 5, CAST(310000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[documento] ON 

INSERT [dbo].[documento] ([id_doc], [tipo_doc], [nom_doc]) VALUES (1, N'CC', N'Cedula de ciudadania')
INSERT [dbo].[documento] ([id_doc], [tipo_doc], [nom_doc]) VALUES (2, N'CE', N'Cedula de extranjeria')
INSERT [dbo].[documento] ([id_doc], [tipo_doc], [nom_doc]) VALUES (3, N'TI', N'Tarjeta de identidad')
INSERT [dbo].[documento] ([id_doc], [tipo_doc], [nom_doc]) VALUES (4, N'PAS', N'Pasaporte')
INSERT [dbo].[documento] ([id_doc], [tipo_doc], [nom_doc]) VALUES (5, N'NIT', N'Pasaporte')
SET IDENTITY_INSERT [dbo].[documento] OFF
GO
SET IDENTITY_INSERT [dbo].[mantenimiento] ON 

INSERT [dbo].[mantenimiento] ([id_manten], [num_unidades], [precio_unidad], [descuento], [id_repuesto], [id_mecanico], [id_servicio], [id_cliente]) VALUES (1, 1, CAST(138000.00 AS Decimal(8, 2)), CAST(2.50 AS Decimal(3, 2)), 1, 2, 1, 1)
INSERT [dbo].[mantenimiento] ([id_manten], [num_unidades], [precio_unidad], [descuento], [id_repuesto], [id_mecanico], [id_servicio], [id_cliente]) VALUES (2, 1, CAST(28500.00 AS Decimal(8, 2)), CAST(5.00 AS Decimal(3, 2)), 3, 2, 1, 1)
INSERT [dbo].[mantenimiento] ([id_manten], [num_unidades], [precio_unidad], [descuento], [id_repuesto], [id_mecanico], [id_servicio], [id_cliente]) VALUES (3, 1, CAST(260000.00 AS Decimal(8, 2)), CAST(4.50 AS Decimal(3, 2)), 4, 2, 1, 1)
INSERT [dbo].[mantenimiento] ([id_manten], [num_unidades], [precio_unidad], [descuento], [id_repuesto], [id_mecanico], [id_servicio], [id_cliente]) VALUES (4, 1, CAST(180000.00 AS Decimal(8, 2)), CAST(5.00 AS Decimal(3, 2)), 5, 2, 1, 3)
INSERT [dbo].[mantenimiento] ([id_manten], [num_unidades], [precio_unidad], [descuento], [id_repuesto], [id_mecanico], [id_servicio], [id_cliente]) VALUES (5, 1, CAST(35000.00 AS Decimal(8, 2)), CAST(3.00 AS Decimal(3, 2)), 2, 2, 1, 3)
SET IDENTITY_INSERT [dbo].[mantenimiento] OFF
GO
SET IDENTITY_INSERT [dbo].[mecanico] ON 

INSERT [dbo].[mecanico] ([id_mecanico], [id_doc], [tipo_doc], [num_doc], [celular], [direccion], [correo], [pri_nombre], [seg_nombre], [pri_apellido], [seg_apellido]) VALUES (1, 1, NULL, N'100145145', N'3151000001', N'Cra. 12 # 25-14', N'carlos457@gmail.com', N'Carlos', N'Argemiro', N'Sanchez', N'Perez')
INSERT [dbo].[mecanico] ([id_mecanico], [id_doc], [tipo_doc], [num_doc], [celular], [direccion], [correo], [pri_nombre], [seg_nombre], [pri_apellido], [seg_apellido]) VALUES (2, 1, NULL, N'248711000', N'2018900010', N'Cll. 10 # 78-00', N'orlandovanegas470@yahoo.com', N'Luis', N'Alejandro', N'Vanegas', N'')
INSERT [dbo].[mecanico] ([id_mecanico], [id_doc], [tipo_doc], [num_doc], [celular], [direccion], [correo], [pri_nombre], [seg_nombre], [pri_apellido], [seg_apellido]) VALUES (3, 1, NULL, N'4598888', N'2245055500', N'Diag. 18 # 27A-04 Sur', N'orlandodavila0577@gmail.com', N'Orlando', N'', N'Ortiz', N'Carvajal')
SET IDENTITY_INSERT [dbo].[mecanico] OFF
GO
SET IDENTITY_INSERT [dbo].[repuestos] ON 

INSERT [dbo].[repuestos] ([id_repuesto], [nom_repuesto], [existencia], [vr_repuesto]) VALUES (1, N'kit de reparticion', 10, CAST(138000.00 AS Decimal(15, 2)))
INSERT [dbo].[repuestos] ([id_repuesto], [nom_repuesto], [existencia], [vr_repuesto]) VALUES (2, N'correa de distrubucion', 20, CAST(35000.00 AS Decimal(15, 2)))
INSERT [dbo].[repuestos] ([id_repuesto], [nom_repuesto], [existencia], [vr_repuesto]) VALUES (3, N'termostato', 25, CAST(28500.00 AS Decimal(15, 2)))
INSERT [dbo].[repuestos] ([id_repuesto], [nom_repuesto], [existencia], [vr_repuesto]) VALUES (4, N'alternador', 5, CAST(260000.00 AS Decimal(15, 2)))
INSERT [dbo].[repuestos] ([id_repuesto], [nom_repuesto], [existencia], [vr_repuesto]) VALUES (5, N'bomba de agua', 10, CAST(180000.00 AS Decimal(15, 2)))
SET IDENTITY_INSERT [dbo].[repuestos] OFF
GO
SET IDENTITY_INSERT [dbo].[servicios] ON 

INSERT [dbo].[servicios] ([id_servicio], [cod_servicio], [desc_servicio], [precio_mano], [descuento]) VALUES (1, N'ALIST', N'Alistamiento', CAST(235000.00 AS Decimal(18, 2)), CAST(5.000 AS Decimal(5, 3)))
INSERT [dbo].[servicios] ([id_servicio], [cod_servicio], [desc_servicio], [precio_mano], [descuento]) VALUES (2, N'EMGAS', N'Emisión de contaminantes', CAST(235000.00 AS Decimal(18, 2)), CAST(5.000 AS Decimal(5, 3)))
INSERT [dbo].[servicios] ([id_servicio], [cod_servicio], [desc_servicio], [precio_mano], [descuento]) VALUES (3, N'MECAN', N'Mecánico', CAST(235000.00 AS Decimal(18, 2)), CAST(5.000 AS Decimal(5, 3)))
INSERT [dbo].[servicios] ([id_servicio], [cod_servicio], [desc_servicio], [precio_mano], [descuento]) VALUES (4, N'LIBRI', N'Lubricación', CAST(235000.00 AS Decimal(18, 2)), CAST(5.000 AS Decimal(5, 3)))
INSERT [dbo].[servicios] ([id_servicio], [cod_servicio], [desc_servicio], [precio_mano], [descuento]) VALUES (5, N'LAPIN', N'Hojalateria y pintura', CAST(235000.00 AS Decimal(18, 2)), CAST(5.000 AS Decimal(5, 3)))
INSERT [dbo].[servicios] ([id_servicio], [cod_servicio], [desc_servicio], [precio_mano], [descuento]) VALUES (6, N'RELLA', N'Reparación y llantas', CAST(235000.00 AS Decimal(18, 2)), CAST(5.000 AS Decimal(5, 3)))
INSERT [dbo].[servicios] ([id_servicio], [cod_servicio], [desc_servicio], [precio_mano], [descuento]) VALUES (7, N'VIDRI', N'De vidriería', CAST(235000.00 AS Decimal(18, 2)), CAST(5.000 AS Decimal(5, 3)))
INSERT [dbo].[servicios] ([id_servicio], [cod_servicio], [desc_servicio], [precio_mano], [descuento]) VALUES (8, N'VESTI', N'De vestiduras', CAST(235000.00 AS Decimal(18, 2)), CAST(5.000 AS Decimal(5, 3)))
INSERT [dbo].[servicios] ([id_servicio], [cod_servicio], [desc_servicio], [precio_mano], [descuento]) VALUES (9, N'MOFLE', N'De mofles', CAST(235000.00 AS Decimal(18, 2)), CAST(5.000 AS Decimal(5, 3)))
SET IDENTITY_INSERT [dbo].[servicios] OFF
GO
/****** Object:  Index [IX_documento]    Script Date: 30/07/2021 3:26:13 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_documento] ON [dbo].[documento]
(
	[id_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [FK_cliente_documento] FOREIGN KEY([id_doc])
REFERENCES [dbo].[documento] ([id_doc])
GO
ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [FK_cliente_documento]
GO
ALTER TABLE [dbo].[mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_mantenimiento_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[mantenimiento] CHECK CONSTRAINT [FK_mantenimiento_cliente]
GO
ALTER TABLE [dbo].[mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_mantenimiento_mecanico] FOREIGN KEY([id_servicio])
REFERENCES [dbo].[mecanico] ([id_mecanico])
GO
ALTER TABLE [dbo].[mantenimiento] CHECK CONSTRAINT [FK_mantenimiento_mecanico]
GO
ALTER TABLE [dbo].[mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_mantenimiento_repuestos] FOREIGN KEY([id_repuesto])
REFERENCES [dbo].[repuestos] ([id_repuesto])
GO
ALTER TABLE [dbo].[mantenimiento] CHECK CONSTRAINT [FK_mantenimiento_repuestos]
GO
ALTER TABLE [dbo].[mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_mantenimiento_servicios] FOREIGN KEY([id_servicio])
REFERENCES [dbo].[servicios] ([id_servicio])
GO
ALTER TABLE [dbo].[mantenimiento] CHECK CONSTRAINT [FK_mantenimiento_servicios]
GO
ALTER TABLE [dbo].[mecanico]  WITH CHECK ADD  CONSTRAINT [FK_mecanico_documento] FOREIGN KEY([id_doc])
REFERENCES [dbo].[documento] ([id_doc])
GO
ALTER TABLE [dbo].[mecanico] CHECK CONSTRAINT [FK_mecanico_documento]
GO
ALTER TABLE [dbo].[mecanico]  WITH CHECK ADD  CONSTRAINT [FK_mecanico_documento1] FOREIGN KEY([id_doc])
REFERENCES [dbo].[documento] ([id_doc])
GO
ALTER TABLE [dbo].[mecanico] CHECK CONSTRAINT [FK_mecanico_documento1]
GO
