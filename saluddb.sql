USE [Salud]
GO
/****** Object:  Table [dbo].[ServiciosNO]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServiciosNO](
	[sidservicio] [int] IDENTITY(1,1) NOT NULL,
	[sdescripcion] [varchar](100) NULL,
	[sobservacion] [varchar](200) NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[sidservicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ServiciosNO] ON
INSERT [dbo].[ServiciosNO] ([sidservicio], [sdescripcion], [sobservacion]) VALUES (1, N'Emergencias', N'La terapia intensiva está preparada con shock room con 6 camas, respirador, monitor, multiparamétrico, bomba de infusión, y cardiodesfribrilador ')
INSERT [dbo].[ServiciosNO] ([sidservicio], [sdescripcion], [sobservacion]) VALUES (2, N'Consultas Médicas', N'la UPA cuenta con consultorios y un sistema de internaciones breves ')
INSERT [dbo].[ServiciosNO] ([sidservicio], [sdescripcion], [sobservacion]) VALUES (3, N'Diagnóstico', N'La UPA cuenta con sala de radiología digital y laboratorio')
INSERT [dbo].[ServiciosNO] ([sidservicio], [sdescripcion], [sobservacion]) VALUES (4, N'Medicamentos', N'En la UPA hay farmacia con entrega de medicación ambulatoria y de internación')
INSERT [dbo].[ServiciosNO] ([sidservicio], [sdescripcion], [sobservacion]) VALUES (5, N'Otros Servicios', N'Sala de observaciones pediátrica con dos camas, control policial, confort médico y vestuarios con duchas y sanitarios')
INSERT [dbo].[ServiciosNO] ([sidservicio], [sdescripcion], [sobservacion]) VALUES (6, N'Ecografías', NULL)
INSERT [dbo].[ServiciosNO] ([sidservicio], [sdescripcion], [sobservacion]) VALUES (7, N'Radiografías', NULL)
INSERT [dbo].[ServiciosNO] ([sidservicio], [sdescripcion], [sobservacion]) VALUES (8, N'Laboratorio', NULL)
SET IDENTITY_INSERT [dbo].[ServiciosNO] OFF
/****** Object:  Table [dbo].[ServiciosCentrosNO]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosCentrosNO](
	[idcentro] [int] NOT NULL,
	[idservicio] [int] NOT NULL,
 CONSTRAINT [PK_ServiciosCentros] PRIMARY KEY CLUSTERED 
(
	[idcentro] ASC,
	[idservicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planes]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Planes](
	[idplan] [int] IDENTITY(1,1) NOT NULL,
	[codplan] [int] NULL,
	[pnombre] [varchar](50) NULL,
	[pdescripcion] [varchar](200) NULL,
 CONSTRAINT [PK_Planes] PRIMARY KEY CLUSTERED 
(
	[idplan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Planes] ON
INSERT [dbo].[Planes] ([idplan], [codplan], [pnombre], [pdescripcion]) VALUES (1, NULL, N'Plan Nacer', N'Plan para recien nacidas')
INSERT [dbo].[Planes] ([idplan], [codplan], [pnombre], [pdescripcion]) VALUES (2, NULL, N'Perinatal', N'Atencion a embarazadas durante el nacimiento')
INSERT [dbo].[Planes] ([idplan], [codplan], [pnombre], [pdescripcion]) VALUES (3, NULL, N'Salud Integral del Niño', NULL)
INSERT [dbo].[Planes] ([idplan], [codplan], [pnombre], [pdescripcion]) VALUES (4, NULL, N'Nutrición', N'Preservar y mejorar el correcto estado de nutrición de madres, niñas y niños')
SET IDENTITY_INSERT [dbo].[Planes] OFF
/****** Object:  Table [dbo].[Usuarios]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[idusuario] [int] IDENTITY(1,1) NOT NULL,
	[utipo] [int] NOT NULL,
	[nombreusuario] [varchar](15) NOT NULL,
	[contrasenausuario] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tutores]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tutores](
	[tidtutor] [int] IDENTITY(1,1) NOT NULL,
	[tdni] [varchar](10) NOT NULL,
	[tobservacion] [varchar](250) NULL,
 CONSTRAINT [PK_Tutores] PRIMARY KEY CLUSTERED 
(
	[tdni] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tutores] ON
INSERT [dbo].[Tutores] ([tidtutor], [tdni], [tobservacion]) VALUES (3, N'310000', N'Ninguna')
INSERT [dbo].[Tutores] ([tidtutor], [tdni], [tobservacion]) VALUES (1, N'33092538', N'')
SET IDENTITY_INSERT [dbo].[Tutores] OFF
/****** Object:  Table [dbo].[TurnosGenerados]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TurnosGenerados](
	[codcentro] [int] NOT NULL,
	[dniespecialista] [int] NOT NULL,
	[codespecialidad] [int] NOT NULL,
	[dia] [int] NOT NULL,
	[mes] [int] NOT NULL,
	[anio] [int] NOT NULL,
	[disponibilidad] [binary](1) NULL,
	[canturnos] [int] NULL,
 CONSTRAINT [PK_TurnosGenerados] PRIMARY KEY CLUSTERED 
(
	[codcentro] ASC,
	[dniespecialista] ASC,
	[codespecialidad] ASC,
	[dia] ASC,
	[mes] ASC,
	[anio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TurnoServiciosNO]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TurnoServiciosNO](
	[idturnoservicio] [int] NOT NULL,
	[idservicio] [int] NOT NULL,
	[idcentro] [int] NOT NULL,
	[idespecialista] [int] NOT NULL,
	[idpaciente] [int] NOT NULL,
	[observacion] [varchar](250) NULL,
 CONSTRAINT [PK_TurnoServicios] PRIMARY KEY CLUSTERED 
(
	[idturnoservicio] ASC,
	[idservicio] ASC,
	[idcentro] ASC,
	[idespecialista] ASC,
	[idpaciente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TurnoEspecialistasNO]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TurnoEspecialistasNO](
	[idturnoespecialista] [int] NOT NULL,
	[idespecialista] [int] NOT NULL,
	[idespecialidad] [int] NOT NULL,
	[idcentro] [int] NOT NULL,
	[idhorarioespecialista] [int] NOT NULL,
	[idpaciente] [int] NOT NULL,
	[observacion] [varchar](250) NULL,
 CONSTRAINT [PK_TurnoEspecialistas_1] PRIMARY KEY CLUSTERED 
(
	[idturnoespecialista] ASC,
	[idespecialista] ASC,
	[idespecialidad] ASC,
	[idcentro] ASC,
	[idhorarioespecialista] ASC,
	[idpaciente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TurnoAtencionNO]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TurnoAtencionNO](
	[idturnoatencion] [int] IDENTITY(1,1) NOT NULL,
	[turno] [varchar](10) NULL,
 CONSTRAINT [PK_TurnoAtencion] PRIMARY KEY CLUSTERED 
(
	[idturnoatencion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TurnoAtencionNO] ON
INSERT [dbo].[TurnoAtencionNO] ([idturnoatencion], [turno]) VALUES (1, N'Mañana')
INSERT [dbo].[TurnoAtencionNO] ([idturnoatencion], [turno]) VALUES (2, N'Tarde')
SET IDENTITY_INSERT [dbo].[TurnoAtencionNO] OFF
/****** Object:  Table [dbo].[EspecialistaEspecialidad]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecialistaEspecialidad](
	[dni] [int] NOT NULL,
	[idespecialidad] [int] NOT NULL,
	[canturnos] [int] NULL,
	[horainicio] [time](7) NULL,
 CONSTRAINT [PK_EspecialistaEspecialidad] PRIMARY KEY CLUSTERED 
(
	[dni] ASC,
	[idespecialidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especialidades](
	[idespecialidad] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](250) NULL,
	[canttur] [int] NULL,
	[observaciones] [varchar](150) NULL,
 CONSTRAINT [PK_Especialidades] PRIMARY KEY CLUSTERED 
(
	[idespecialidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Especialidades] ON
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (1, N'Clínica', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (2, N'Alergias e Inmunologías', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (3, N'Atención Temprana del Desarrollo', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (4, N'Cardiología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (5, N'Cirugía', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (6, N'Cirugía Plástica', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (7, N'Dermatología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (8, N'Diabetes', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (9, N'Diagnóstico por Imagen', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (10, N'Endocrinología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (11, N'Fonoaudiología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (12, N'Gastroenterología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (13, N'Ginecología Infantil', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (14, N'Guardia', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (15, N'Hemato Oncología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (16, N'Hemoterapia', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (17, N'Infectología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (18, N'Nefrología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (19, N'Neumonología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (20, N'Neurocirugía', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (21, N'Neurología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (22, N'Nutrición', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (23, N'Odontología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (24, N'Oftalmología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (25, N'Otorringolaringología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (26, N'Psicología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (27, N'Psicopedagogía', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (28, N'Psiquiatría', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (29, N'Reumatología', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (30, N'Servicio de Quemado', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (31, N'Traumatología y Ortopedia', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (32, N'Urgencias', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (33, N'Vacunatorio', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (34, N'Emergencias', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (35, N'Consulta Médica', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (36, N'Ecografía', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (37, N'Radiografía', NULL, NULL)
INSERT [dbo].[Especialidades] ([idespecialidad], [descripcion], [canttur], [observaciones]) VALUES (38, N'Laboratorio', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Especialidades] OFF
/****** Object:  Table [dbo].[CentroTipo]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CentroTipo](
	[idtipo] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](50) NULL,
 CONSTRAINT [PK_CentroTipo] PRIMARY KEY CLUSTERED 
(
	[idtipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CentroTipo] ON
INSERT [dbo].[CentroTipo] ([idtipo], [tipo]) VALUES (1, N'CEPSI')
INSERT [dbo].[CentroTipo] ([idtipo], [tipo]) VALUES (2, N'UPA')
SET IDENTITY_INSERT [dbo].[CentroTipo] OFF
/****** Object:  Table [dbo].[Barrios]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Barrios](
	[bidbarrio] [int] IDENTITY(1,1) NOT NULL,
	[bnombre] [varchar](50) NULL,
 CONSTRAINT [PK_Barrios] PRIMARY KEY CLUSTERED 
(
	[bidbarrio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Barrios] ON
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (1, N'Aeropuerto')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (2, N'Coronel Borges')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (3, N'Hauico Hondo')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (4, N'General Paz')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (5, N'Sargento Cabral')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (6, N'Papa Juan XXIII')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (7, N'Juan Bautista Alberdi')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (8, N'Jorge Newbery')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (9, N'Centenario')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (10, N'Colón')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (11, N'Juan Felipe Ibarra')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (12, N'Don Bosco')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (13, N'Francisco Solano')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (14, N'Aguirre ')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (15, N'Centro')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (16, N'Congrso')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (17, N'Saez Peña ')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (18, N'Rivadavia ')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (19, N'General Mosconi')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (20, N'John Kennedy')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (21, N'Autonomía')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (22, N'Francisco de Aguirre')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (23, N'Primera Junta')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (24, N'General José de San Martín')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (25, N'Libertad')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (26, N'Industria')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (27, N'Caseres')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (28, N'8 de Abril')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (29, N'General Belgrano')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (30, N'Dr. Ramón Carrillo')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (31, N'Sarmiento')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (32, N'Los Inmigrantes')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (33, N'Mariano Moreno')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (34, N'Reconquista')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (35, N'Independencia')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (36, N'Cabildo')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (37, N'Jardin')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (38, N'Tradición')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (39, N'Almirante Brown')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (40, N'América del Sur')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (41, N'Ejercito Argentino')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (42, N'Juramento')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (43, N'Juan Diaz de Solis')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (44, N'Santa Lucia')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (45, N'Villa del Carmen')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (46, N'La Católica')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (47, N'Bruno Alberto Volta')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (48, N'El Vinalar')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (49, N'Campo Contreras ')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (50, N'La Costa')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (51, N'Los Flores')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (52, N'Islas Malvinas')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (53, N'Santa Lucia')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (54, N'Belgrano')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (55, N'Mosconi')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (56, N'Peruchillo')
INSERT [dbo].[Barrios] ([bidbarrio], [bnombre]) VALUES (57, N'Smata')
SET IDENTITY_INSERT [dbo].[Barrios] OFF
/****** Object:  Table [dbo].[Dias]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dias](
	[iddias] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Dias] PRIMARY KEY CLUSTERED 
(
	[iddias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Dias] ON
INSERT [dbo].[Dias] ([iddias], [nombre]) VALUES (1, N'Domingo')
INSERT [dbo].[Dias] ([iddias], [nombre]) VALUES (2, N'Lunes')
INSERT [dbo].[Dias] ([iddias], [nombre]) VALUES (3, N'Martes')
INSERT [dbo].[Dias] ([iddias], [nombre]) VALUES (4, N'Miércoles')
INSERT [dbo].[Dias] ([iddias], [nombre]) VALUES (5, N'Jueves')
INSERT [dbo].[Dias] ([iddias], [nombre]) VALUES (6, N'Viernes')
INSERT [dbo].[Dias] ([iddias], [nombre]) VALUES (7, N'Sabado')
SET IDENTITY_INSERT [dbo].[Dias] OFF
/****** Object:  Table [dbo].[CoordenadasCentros]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CoordenadasCentros](
	[idcentro] [int] NOT NULL,
	[ccoordenadas] [geography] NOT NULL,
	[longitud] [varchar](8) NULL,
	[latitud] [varchar](8) NULL,
 CONSTRAINT [PK_CoordenadasCentros] PRIMARY KEY CLUSTERED 
(
	[idcentro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HorariosTTNO]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorariosTTNO](
	[idhorariott] [int] IDENTITY(1,1) NOT NULL,
	[hora] [time](7) NULL,
 CONSTRAINT [PK_HorarioTT] PRIMARY KEY CLUSTERED 
(
	[idhorariott] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HorariosTTNO] ON
INSERT [dbo].[HorariosTTNO] ([idhorariott], [hora]) VALUES (1, CAST(0x070050CFDF960000 AS Time))
INSERT [dbo].[HorariosTTNO] ([idhorariott], [hora]) VALUES (2, CAST(0x070084B1109B0000 AS Time))
INSERT [dbo].[HorariosTTNO] ([idhorariott], [hora]) VALUES (3, CAST(0x0700B893419F0000 AS Time))
INSERT [dbo].[HorariosTTNO] ([idhorariott], [hora]) VALUES (4, CAST(0x0700EC7572A30000 AS Time))
INSERT [dbo].[HorariosTTNO] ([idhorariott], [hora]) VALUES (5, CAST(0x07002058A3A70000 AS Time))
INSERT [dbo].[HorariosTTNO] ([idhorariott], [hora]) VALUES (6, CAST(0x0700543AD4AB0000 AS Time))
INSERT [dbo].[HorariosTTNO] ([idhorariott], [hora]) VALUES (7, CAST(0x0700881C05B00000 AS Time))
INSERT [dbo].[HorariosTTNO] ([idhorariott], [hora]) VALUES (8, CAST(0x0700BCFE35B40000 AS Time))
SET IDENTITY_INSERT [dbo].[HorariosTTNO] OFF
/****** Object:  Table [dbo].[HorariosTMNO]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorariosTMNO](
	[idhorariotm] [int] IDENTITY(1,1) NOT NULL,
	[hora] [time](7) NULL,
 CONSTRAINT [PK_Horarios] PRIMARY KEY CLUSTERED 
(
	[idhorariotm] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HorariosTMNO] ON
INSERT [dbo].[HorariosTMNO] ([idhorariotm], [hora]) VALUES (1, CAST(0x070040230E430000 AS Time))
INSERT [dbo].[HorariosTMNO] ([idhorariotm], [hora]) VALUES (2, CAST(0x070074053F470000 AS Time))
INSERT [dbo].[HorariosTMNO] ([idhorariotm], [hora]) VALUES (3, CAST(0x0700A8E76F4B0000 AS Time))
INSERT [dbo].[HorariosTMNO] ([idhorariotm], [hora]) VALUES (4, CAST(0x0700DCC9A04F0000 AS Time))
INSERT [dbo].[HorariosTMNO] ([idhorariotm], [hora]) VALUES (5, CAST(0x070010ACD1530000 AS Time))
INSERT [dbo].[HorariosTMNO] ([idhorariotm], [hora]) VALUES (6, CAST(0x0700448E02580000 AS Time))
INSERT [dbo].[HorariosTMNO] ([idhorariotm], [hora]) VALUES (7, CAST(0x07007870335C0000 AS Time))
INSERT [dbo].[HorariosTMNO] ([idhorariotm], [hora]) VALUES (8, CAST(0x0700AC5264600000 AS Time))
INSERT [dbo].[HorariosTMNO] ([idhorariotm], [hora]) VALUES (9, CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[HorariosTMNO] ([idhorariotm], [hora]) VALUES (10, CAST(0x07001417C6680000 AS Time))
SET IDENTITY_INSERT [dbo].[HorariosTMNO] OFF
/****** Object:  Table [dbo].[HorarioServiciosNO]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioServiciosNO](
	[idhorarioservicio] [int] IDENTITY(1,1) NOT NULL,
	[idservicio] [int] NOT NULL,
	[iddia] [int] NULL,
	[idhorario] [int] NULL,
	[idturnoatencion] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HorarioServiciosNO] ON
INSERT [dbo].[HorarioServiciosNO] ([idhorarioservicio], [idservicio], [iddia], [idhorario], [idturnoatencion]) VALUES (1, 6, 2, 1, 1)
SET IDENTITY_INSERT [dbo].[HorarioServiciosNO] OFF
/****** Object:  Table [dbo].[HorarioEspecialistaNO]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioEspecialistaNO](
	[idhorarioespecialista] [int] NOT NULL,
	[idespecialista] [int] NOT NULL,
	[idcentro] [int] NOT NULL,
	[iddia] [int] NOT NULL,
	[idhorario] [int] NOT NULL,
	[idturnoatencion] [int] NOT NULL,
 CONSTRAINT [PK_HorarioEspecialista] PRIMARY KEY CLUSTERED 
(
	[idhorarioespecialista] ASC,
	[idespecialista] ASC,
	[idcentro] ASC,
	[iddia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoriaClinica]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HistoriaClinica](
	[idconsulta] [int] IDENTITY(1,1) NOT NULL,
	[dnipaciente] [varchar](10) NOT NULL,
	[dniespecialista] [nchar](10) NOT NULL,
	[idespecialidad] [int] NOT NULL,
	[fechaconsulta] [date] NOT NULL,
	[iddiagnostico] [int] NULL,
	[observaciones] [varbinary](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genero](
	[idsexo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](15) NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[idsexo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Genero] ON
INSERT [dbo].[Genero] ([idsexo], [descripcion]) VALUES (1, N'Masculino')
INSERT [dbo].[Genero] ([idsexo], [descripcion]) VALUES (2, N'Femenino')
SET IDENTITY_INSERT [dbo].[Genero] OFF
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[idmedicamento] [int] IDENTITY(1,1) NOT NULL,
	[codmedicamento] [int] NOT NULL,
	[mnombre] [varchar](50) NULL,
	[mcantidad] [decimal](3, 0) NULL,
	[mdescripcion] [varchar](100) NULL,
 CONSTRAINT [PK_Medicamentos] PRIMARY KEY CLUSTERED 
(
	[idmedicamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medicamentos_Planes]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medicamentos_Planes](
	[idmedicamento] [int] NOT NULL,
	[idplan] [int] NOT NULL,
	[observacion] [varchar](200) NULL,
 CONSTRAINT [PK_Medicamentos_Planes] PRIMARY KEY CLUSTERED 
(
	[idmedicamento] ASC,
	[idplan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ModificarMedicamento]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ModificarMedicamento]
@codmedicamento as int,
@mnombre as varchar(50),
@mcantidad as decimal(3),
@mdescripcion as varchar(100)
as
UPDATE [Salud].[dbo].[Medicamentos]
   SET [mnombre] = @mnombre
      ,[mcantidad] = @mcantidad
      ,[mdescripcion] = @mdescripcion
 WHERE codmedicamento = @codmedicamento
GO
/****** Object:  StoredProcedure [dbo].[ModificarEspecialidad]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ModificarEspecialidad]
@idespecialidad as int,
@descripcion as varchar (250),
@observaciones as varchar(150)
as
UPDATE [Salud].[dbo].[Especialidades]
   SET [descripcion] = @descripcion
		,[observaciones] = @observaciones
      
 WHERE idespecialidad = @idespecialidad
GO
/****** Object:  StoredProcedure [dbo].[InsertarUsuario]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery2.sql|0|0|C:\Users\Pablo\AppData\Local\Temp\~vs8131.sql
CREATE PROCEDURE [dbo].[InsertarUsuario]
@idusuario varchar(3), 
@utipo as int,
@nombreusuario varchar(15),
@contrasenausuario varchar(8)


as
INSERT INTO Usuarios (idusuario, utipo, nombreusuario,contrasenausuario)
     VALUES (@idusuario,@utipo,@nombreusuario ,@contrasenausuario)
GO
/****** Object:  StoredProcedure [dbo].[InsertarTutor]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertarTutor]
@tdni as int,
@tobservacion as varchar(250)
as
INSERT INTO [Salud].[dbo].[Tutores]
           ([tdni]
           ,[tobservacion])
     VALUES
           (@tdni, @tobservacion)
GO
/****** Object:  StoredProcedure [dbo].[InsertarTurnoGenerado]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertarTurnoGenerado]
@codcentro as int, 
@dniespecialista as int, 
@codespecialidad as int, 
@dia as int, 
@mes as int,
@anio as int, 
@disponibilidad as binary(1), 
@canturnos as int
as
INSERT INTO [Salud].[dbo].[TurnosGenerados]
           ([codcentro]
           ,[dniespecialista]
           ,[codespecialidad]
           ,[dia]
           ,[mes]
           ,[anio]
           ,[disponibilidad]
           ,[canturnos])
     VALUES
           (@codcentro
           ,@dniespecialista
           ,@codespecialidad
           ,@dia
           ,@mes
           ,@anio
           ,@disponibilidad
           ,@canturnos)
GO
/****** Object:  StoredProcedure [dbo].[InsertarPlan]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertarPlan]
@idplan as int, 
@pnombre as varchar(50),
@pdescripcion as varchar(200)
as
INSERT INTO [Salud].[dbo].[Planes]
           ([idplan]
           ,[pnombre]
           ,[pdescripcion])
     VALUES
           (@idplan, @pnombre,@pdescripcion)
GO
/****** Object:  StoredProcedure [dbo].[InsertarMedicamento]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertarMedicamento] 
@codmedicamento as int,
@mnombre as varchar(50),
@mcantidad as decimal(3),
@mdescripcion as varchar(100)
as
INSERT INTO [Salud].[dbo].[Medicamentos]
           ([codmedicamento]
           ,[mnombre]
           ,[mcantidad]
           ,[mdescripcion])
     VALUES
           (@codmedicamento
           ,@mnombre
           ,@mcantidad
           ,@mdescripcion)
GO
/****** Object:  StoredProcedure [dbo].[InsertarEspecialidad]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertarEspecialidad]
@idespecialidad as int,
@descripcion as varchar (250)
as
INSERT INTO [Salud].[dbo].[Especialidades]
           ([idespecialidad]
           ,[descripcion])
     VALUES
           (@idespecialidad, @descripcion)
GO
/****** Object:  StoredProcedure [dbo].[EliminarMedicamento]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EliminarMedicamento]
@codmedicamento as int	
as
DELETE FROM [Salud].[dbo].[Medicamentos]
      WHERE codmedicamento = @codmedicamento
GO
/****** Object:  StoredProcedure [dbo].[EliminarEspecialidad]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EliminarEspecialidad]
@idespecialidad as int
as
DELETE FROM [Salud].[dbo].[Especialidades]
      WHERE idespecialidad = @idespecialidad
GO
/****** Object:  StoredProcedure [dbo].[ConsultarHC]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultarHC]
@dnipaciente as int	
as
SELECT [dnipaciente]
      ,[dniespecialista]
      ,[idespecialidad]
      ,[fechaconsulta]
      ,[iddiagnostico]
      ,[observaciones]
  FROM [Salud].[dbo].[HistoriaClinica]
  where dniespecialista = @dnipaciente
GO
/****** Object:  Table [dbo].[Centros]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Centros](
	[idcentro] [int] IDENTITY(1,1) NOT NULL,
	[cuit] [varchar](14) NOT NULL,
	[idtipo] [int] NULL,
	[nombre] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[idbarrio] [int] NULL,
	[telefono] [varchar](13) NULL,
	[correo] [varchar](50) NULL,
	[dniresponsable] [varchar](10) NULL,
 CONSTRAINT [PK_Centros_1] PRIMARY KEY CLUSTERED 
(
	[idcentro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Centros] ON
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (1, N'50860492192875', 2, N'UPA Bº MARIANO MORENO I', N'MANZANA 7 LOTE 18 Bº MARIANO MORENO', 33, N'03854312675', N'drodriguezdaniel@hotmail.com', NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (2, N'50860492192575', 2, N'UPA Bº MARIANO MORENO II', N'MANZ. 8 LOTE 2 - Bº MARIANO MORENO 7 AMP', 33, NULL, NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (3, N'50860492192443', 2, N'UPA Bº SANTA LUCIA', N'LAVALLE Y SANTA ROSA (2650)', 53, NULL, NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (4, N'50860492192446', 2, N'UPA N° 1 BARRIO GENERAL PAZ', N'CANDELARIA Y VERACRUZ BARRIO GENERAL PAZ', 4, N'03854345030', N'mocarol_vi@hotmail.com', NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (5, N'50860492192473', 2, N'UPA N° 8 Bº LOS FLORES', N'LOS FLORES POR CAMINO LA COSTA', 51, NULL, NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (6, N'50860492192447', 2, N'UPA Nº 10 BARRIO JOHN KENNEDY', N'PÍO VII 596 E ISLAS MALVINAS S/N', 20, N'0385-4397023', NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (7, N'50860492192448', 2, N'UPA Nº 11 DR. RENE FAVALORO CC OESTE', N'MANZANA 7 LOTE 1 Y 2 - Bº CAMPO CONTRERAS OESTE', 49, NULL, NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (8, N'50860492192733', 2, N'UPA Nº 12 Bº BELGRANO', N'NULBALCARCE Y 24 DE SEPTIEMBRE - Bº BELGRANO', 54, NULL, NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (9, N'50860492192462', 2, N'UPA Nº 13 BARRIO MOSCONI', N'SAENZ PEÑA Y PASAJE 205 BARRIO MOSCONI', 55, NULL, NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (10, N'50860492192463', 2, N'UPA Nº 15 BARRIO TRADICION OESTE', N'GUMERSINDO GOROSITO 888', 38, N'03854319013', NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (11, N'50860492192452', 2, N'UPA Nº 16 Bº CAMPO CONTRERAS', N'BARRIO CAMPO CONTRERAS MANZANA 29', 49, N'03854319015', NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (12, N'50860492192464', 2, N'UPA Nº 17 BARRIO BORGES', N'CALLE 109  Nº 2666  ENTRE 14 Y 15', 2, NULL, NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (13, N'50860492192203', 2, N'UPA Nº 18 Bº  AEROPUERTO', N'AV. MADRE DE LAS CIUDADES - AEROPUERTO', 1, NULL, NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (14, N'50860492192468', 2, N'UPA Nº 19 Bº INDEPENDENCIA', N'CALLE 403 Nº 3322 ENTRE 504 Y 505', 35, NULL, NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (15, N'50860492192465', 2, N'UPA Nº 2 BARRIO CACERES', N'PEDRO PABLO OLAECHEA 1117 Y ALSINA', 27, N'03854504420', NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (16, N'50860492192445', 2, N'UPA Nº 21 LA CATOLICA', N'AVENIDA 222 Y LAS HERAS', 46, N'03854242087', NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (17, N'50860492192459', 2, N'UPA Nº 22 Bº PERUCHILLO', N'Pasaje 421 Nº 1152  E/ Av. Libertador y Pasaje 190', 56, N'0385-4345034', NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (18, N'50860492192456', 2, N'UPA Nº 23 Bº EL VINALAR', N'AV. LOS PIONEROS Y SAN CAYETANO', 48, NULL, NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (19, N'50860492192469', 2, N'UPA Nº 3 Bº RECONQUISTA', N'BUENOS AIRES 2050', 34, N'03854319014', N'upa3reconquista@hotmail.com', NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (20, N'50860492192453', 2, N'UPA Nº 4 Bº EJERCITO  ARGENTINO', N'CALLE 59 Y 4  Bº EJERCITO ARGENTINO', 41, N'03854319012', N'antoniocruz-se@gmail.com', NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (21, N'50860492192455', 2, N'UPA Nº 5 Bº AUTONOMIA', N'ROMUALDO HELMAN 158', 21, NULL, NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (22, N'50860492192471', 2, N'UPA Nº 6 Bº SMATA', N'POSADAS Y MARÍA AUXILIADORA B° SMATA', 57, N'4391412', N'upan-6smata@hotmail.com', NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (23, N'50860492192457', 2, N'UPA Nº 7 BARRIO PARQUE AGUIRRE', N'CHACO Y DEFENSA', 14, N'03854242090', NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (24, N'50860492192458', 2, N'UPA Nº 9 Bº JORGE NEWBERY', N'URREJOLAS 250', 8, N'03854345041', NULL, NULL)
INSERT [dbo].[Centros] ([idcentro], [cuit], [idtipo], [nombre], [direccion], [idbarrio], [telefono], [correo], [dniresponsable]) VALUES (25, N'11111111111111', 1, N'CePSI Eva Perón', N'Misiones 1087 ', 9, N' 4225449 ', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Centros] OFF
/****** Object:  StoredProcedure [dbo].[EliminarUsuario]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery3.sql|0|0|C:\Users\Pablo\AppData\Local\Temp\~vsD4A5.sql
CREATE procedure [dbo].[EliminarUsuario]
@idusuario varchar(3)
as
DELETE FROM [Salud].[dbo].[Usuarios]
      WHERE idusuario = @idusuario
GO
/****** Object:  StoredProcedure [dbo].[EliminarTutor]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EliminarTutor]
@tdni as int
as
DELETE FROM [Salud].[dbo].[Tutores]
      WHERE tdni = @tdni
GO
/****** Object:  StoredProcedure [dbo].[EliminarPlan]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EliminarPlan]
@idplan as int
as 
DELETE FROM [Salud].[dbo].[Planes]
      WHERE idplan = @idplan
GO
/****** Object:  StoredProcedure [dbo].[TraerTurnos]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[TraerTurnos]
@especialidad as int
as 
SELECT [codcentro]
      ,[dniespecialista]
      ,[codespecialidad]
      ,[dia]
      ,[mes]
      ,[anio]
      
  
  FROM [Salud].[dbo].[TurnosGenerados] where codespecialidad = @especialidad and disponibilidad = 0
GO
/****** Object:  StoredProcedure [dbo].[TomarTurno]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[TomarTurno]
@codcentro as int,
@dniespecialista as int,
@codespecialidad as int,
@dia as int,
@mes as int,
@anio as int, 
@disponibilidad as int 
as 
UPDATE [Salud].[dbo].[TurnosGenerados]
   SET [disponibilidad] = 1
 WHERE codcentro = @codcentro
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personas](
	[dni] [varchar](10) NOT NULL,
	[apellido] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[direccion] [varchar](150) NULL,
	[idbarrio] [int] NULL,
	[telefono] [varchar](13) NULL,
	[celular] [varchar](13) NULL,
	[correoelectronico] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[idsexo] [int] NULL,
	[ciudad] [varchar](50) NULL,
 CONSTRAINT [PK_Personas] PRIMARY KEY CLUSTERED 
(
	[dni] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Personas] ([dni], [apellido], [nombre], [direccion], [idbarrio], [telefono], [celular], [correoelectronico], [fecha_nacimiento], [idsexo], [ciudad]) VALUES (N'300000', N'Pistoler', N'Pepita', N'Su casa', 1, N'4393939', N'155555555', N'pepitalapisolera', CAST(0x9D070B00 AS Date), 1, N'SuCiudad')
INSERT [dbo].[Personas] ([dni], [apellido], [nombre], [direccion], [idbarrio], [telefono], [celular], [correoelectronico], [fecha_nacimiento], [idsexo], [ciudad]) VALUES (N'30918299', N'Aguilar', N'Anabel', N'Su casa', 1, N'4393939', N'155353831', N'pepitalapisolera', CAST(0xB50D0B00 AS Date), 1, N'SuCiudad')
/****** Object:  Table [dbo].[Pacientes]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pacientes](
	[pdni] [varchar](10) NOT NULL,
	[tdni] [varchar](10) NOT NULL,
	[pobservacion] [varchar](250) NULL,
 CONSTRAINT [PK_Pacientes] PRIMARY KEY CLUSTERED 
(
	[pdni] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ModificarUsuario]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery1.sql|0|0|C:\Users\Pablo\AppData\Local\Temp\~vs6211.sql
CREATE procedure [dbo].[ModificarUsuario]
@idusuario varchar(3),
@utipo int,
@nombreusuario varchar(15),
@contrasenausuario varchar(15)
as
UPDATE [Salud].[dbo].[Usuarios]
   SET [nombreusuario] = @nombreusuario,
      [utipo] = @utipo,
      [contrasenausuario] = @contrasenausuario
      
 WHERE nombreusuario = @nombreusuario
GO
/****** Object:  StoredProcedure [dbo].[ModificarTutor]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ModificarTutor]
@tidtutor as int,
@tobservacion as varchar(250)
as
INSERT INTO [Salud].[dbo].[Tutores]
           ([tobservacion])
     VALUES
           (@tobservacion)
GO
/****** Object:  StoredProcedure [dbo].[ModificarPlan]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ModificarPlan]
@idplan as int, 
@pnombre as varchar(50),
@pdescripcion as varchar(200)
as 
UPDATE [Salud].[dbo].[Planes]
   SET [pnombre] = @pnombre
      ,[pdescripcion] = @pdescripcion
 WHERE idplan = @idplan
GO
/****** Object:  StoredProcedure [dbo].[ModificarPersona]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ModificarPersona]
@dni int, 
@apellido varchar(50),
@nombre varchar(50),
@direccion varchar(50),
@idbarrio int, 
@telefono varchar(13),
@celular varchar(13),
@correoelectronico varchar(50),
@fecha_nacimiento date,
@idsexo int,
@ciudad varchar(50)
as
UPDATE [Salud].[dbo].[Personas]
   SET [apellido] = @apellido
      ,[nombre] = @nombre
      ,[direccion] = @direccion
      ,[idbarrio] = @idbarrio
      ,[telefono] = @telefono
      ,[celular] = @celular
      ,[correoelectronico] = @correoelectronico
      ,[fecha_nacimiento] = @fecha_nacimiento
      ,[idsexo] = @idsexo
      ,[ciudad] = @ciudad
 WHERE dni = @dni
GO
/****** Object:  StoredProcedure [dbo].[ModificarPaciente]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ModificarPaciente]
@pidpaciente as int,
@tdni as int,
@pobservacion as varchar (250)
as
UPDATE [Salud].[dbo].[Pacientes]
   SET [tdni] = @tdni
      ,[pobservacion] = @pobservacion
 WHERE pidpaciente = @pidpaciente
GO
/****** Object:  StoredProcedure [dbo].[EliminarPersona]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarPersona]
@dni int
as
DELETE FROM [Salud].[dbo].[Personas]
      WHERE dni = @dni
GO
/****** Object:  StoredProcedure [dbo].[EliminarPaciente]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EliminarPaciente]
@pdni as int
as
DELETE FROM [Salud].[dbo].[Pacientes]
      WHERE pdni = @pdni
GO
/****** Object:  Table [dbo].[Especialistas]    Script Date: 10/12/2013 11:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especialistas](
	[eidespecialista] [int] IDENTITY(1,1) NOT NULL,
	[edni] [varchar](10) NOT NULL,
	[eidespecialidad] [int] NOT NULL,
	[eobservacion] [varchar](250) NULL,
 CONSTRAINT [PK_Especialistas] PRIMARY KEY CLUSTERED 
(
	[eidespecialista] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[EliminarCentro]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EliminarCentro]
@ccuit as int
as
DELETE FROM [Salud].[dbo].[Centros]
      WHERE ccuit = @ccuit
GO
/****** Object:  StoredProcedure [dbo].[InsertarCentro]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertarCentro]
@ccuit as int,
@ctipo as int, 
@cnombre as varchar(50),
@cdireccion as varchar (50),
@cidbarrio as int,
@ctelefono as varchar (13),
@ccorreo as varchar(50), 
@cdniresponsable as varchar(10)
as
INSERT INTO [Salud].[dbo].[Centros]
           ([ccuit]
           ,[ctipo]
           ,[cnombre]
           ,[cdireccion]
           ,[cidbarrio]
           ,[ctelefono]
           ,[ccorreo]
           ,[cdniresponsable])
     VALUES
           (@ccuit
           ,@cnombre
           ,@ctipo
           ,@cdireccion
           ,@cidbarrio
           ,@ctelefono
           ,@ccorreo
           ,@cdniresponsable)
GO
/****** Object:  StoredProcedure [dbo].[InsertarPersona]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertarPersona]
@dni varchar(10), 
@apellido varchar(50),
@nombre varchar(50),
@direccion varchar(150),
@idbarrio int, 
@telefono varchar(13),
@celular varchar(13),
@correoelectronico varchar(50),
@fecha_nacimiento date, 
@idsexo int,
@ciudad varchar(50)
as
INSERT INTO [Salud].[dbo].[Personas]
           ([dni]
           ,[apellido]
           ,[nombre]
           ,[direccion]
           ,[idbarrio]
           ,[telefono]
           ,[celular]
           ,[correoelectronico]
           ,[fecha_nacimiento]
           ,[idsexo]
           ,[ciudad])
     VALUES
           (@dni
           ,@apellido
           ,@nombre
           ,@direccion
           ,@idbarrio
           ,@telefono
           ,@celular
           ,@correoelectronico
           ,@fecha_nacimiento
           ,@idsexo
           ,@ciudad)
GO
/****** Object:  StoredProcedure [dbo].[InsertarPaciente]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertarPaciente]
@pdni as varchar(10),
@tdni as varchar(10),
@pobservacion as varchar(250)
as
INSERT INTO [Salud].[dbo].[Pacientes]
           ([pdni]
           ,[tdni]
           ,[pobservacion])
     VALUES
           (@pdni, @tdni, @pobservacion)
GO
/****** Object:  StoredProcedure [dbo].[ModificarCentro]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ModificarCentro]
@ccuit as int,
@ctipo as int,
@cnombre as varchar(50),
@cdireccion as varchar(50),
@cidbarrio as int, 
@ctelefono as varchar (13),
@ccorreo as varchar(50),
@cdniresponsable as varchar(10)
as
UPDATE [Salud].[dbo].[Centros]
   SET [ccuit] = @ccuit
      ,[ctipo] = @ctipo
      ,[cnombre] = @cnombre
      ,[cdireccion] = @cdireccion
      ,[cidbarrio] = @cidbarrio
      ,[ctelefono] = @ctelefono
      ,[ccorreo] = @ccorreo
      ,[cdniresponsable] = @cdniresponsable
 WHERE ccuit = @ccuit
GO
/****** Object:  StoredProcedure [dbo].[ModificarEspecialista]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ModificarEspecialista]
@edni as int, 
@eidespecialidad as int, 
@eobservacion as varchar (250)
as
UPDATE [Salud].[dbo].[Especialistas]
   SET [eidespecialidad] = @eidespecialidad
      ,[eobservacion] = @eobservacion
 WHERE edni = @edni
GO
/****** Object:  StoredProcedure [dbo].[InsertarEspecialista]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertarEspecialista]
@edni as int,
@eidespecialidad as int, 
@eobservacion as varchar (250)
as 
INSERT INTO [Salud].[dbo].[Especialistas]
           ([edni]
           ,[eidespecialidad]
           ,[eobservacion])
     VALUES
           (@edni, @eidespecialidad, @eobservacion)
GO
/****** Object:  StoredProcedure [dbo].[EliminarEspecialista]    Script Date: 10/12/2013 11:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EliminarEspecialista]
@edni as int
as
DELETE FROM [Salud].[dbo].[Especialistas]
      WHERE edni = @edni
GO
/****** Object:  ForeignKey [FK_Centros_Barrio]    Script Date: 10/12/2013 11:10:03 ******/
ALTER TABLE [dbo].[Centros]  WITH CHECK ADD  CONSTRAINT [FK_Centros_Barrio] FOREIGN KEY([idbarrio])
REFERENCES [dbo].[Barrios] ([bidbarrio])
GO
ALTER TABLE [dbo].[Centros] CHECK CONSTRAINT [FK_Centros_Barrio]
GO
/****** Object:  ForeignKey [FK_Centros_CentroTipo]    Script Date: 10/12/2013 11:10:03 ******/
ALTER TABLE [dbo].[Centros]  WITH CHECK ADD  CONSTRAINT [FK_Centros_CentroTipo] FOREIGN KEY([idtipo])
REFERENCES [dbo].[CentroTipo] ([idtipo])
GO
ALTER TABLE [dbo].[Centros] CHECK CONSTRAINT [FK_Centros_CentroTipo]
GO
/****** Object:  ForeignKey [FK_Especialistas_Especialidad]    Script Date: 10/12/2013 11:10:03 ******/
ALTER TABLE [dbo].[Especialistas]  WITH CHECK ADD  CONSTRAINT [FK_Especialistas_Especialidad] FOREIGN KEY([eidespecialidad])
REFERENCES [dbo].[Especialidades] ([idespecialidad])
GO
ALTER TABLE [dbo].[Especialistas] CHECK CONSTRAINT [FK_Especialistas_Especialidad]
GO
/****** Object:  ForeignKey [FK_Especialistas_Personas]    Script Date: 10/12/2013 11:10:03 ******/
ALTER TABLE [dbo].[Especialistas]  WITH CHECK ADD  CONSTRAINT [FK_Especialistas_Personas] FOREIGN KEY([edni])
REFERENCES [dbo].[Personas] ([dni])
GO
ALTER TABLE [dbo].[Especialistas] CHECK CONSTRAINT [FK_Especialistas_Personas]
GO
/****** Object:  ForeignKey [FK_Medicamentos_Medicamentos_Planes]    Script Date: 10/12/2013 11:10:03 ******/
ALTER TABLE [dbo].[Medicamentos_Planes]  WITH CHECK ADD  CONSTRAINT [FK_Medicamentos_Medicamentos_Planes] FOREIGN KEY([idplan])
REFERENCES [dbo].[Planes] ([idplan])
GO
ALTER TABLE [dbo].[Medicamentos_Planes] CHECK CONSTRAINT [FK_Medicamentos_Medicamentos_Planes]
GO
/****** Object:  ForeignKey [FK_Medicamentos_Planes_Medicamentos]    Script Date: 10/12/2013 11:10:03 ******/
ALTER TABLE [dbo].[Medicamentos_Planes]  WITH CHECK ADD  CONSTRAINT [FK_Medicamentos_Planes_Medicamentos] FOREIGN KEY([idmedicamento])
REFERENCES [dbo].[Medicamentos] ([idmedicamento])
GO
ALTER TABLE [dbo].[Medicamentos_Planes] CHECK CONSTRAINT [FK_Medicamentos_Planes_Medicamentos]
GO
/****** Object:  ForeignKey [FK_Pacientes_Tutores]    Script Date: 10/12/2013 11:10:03 ******/
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_Pacientes_Tutores] FOREIGN KEY([tdni])
REFERENCES [dbo].[Tutores] ([tdni])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_Pacientes_Tutores]
GO
/****** Object:  ForeignKey [FK_Personas_Barrios]    Script Date: 10/12/2013 11:10:03 ******/
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_Barrios] FOREIGN KEY([idbarrio])
REFERENCES [dbo].[Barrios] ([bidbarrio])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_Barrios]
GO
/****** Object:  ForeignKey [FK_Personas_Sexo]    Script Date: 10/12/2013 11:10:03 ******/
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_Sexo] FOREIGN KEY([idsexo])
REFERENCES [dbo].[Genero] ([idsexo])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_Sexo]
GO
