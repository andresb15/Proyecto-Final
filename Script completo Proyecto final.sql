USE [BibliotecaGrupoB]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 1/22/2022 9:40:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[IDAutor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Nacionalidad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[IDAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Encargados]    Script Date: 1/22/2022 9:40:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Encargados](
	[IDEncargados] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NULL,
	[Apellido] [varchar](30) NULL,
	[Telefono] [int] NULL,
	[IDLocal] [int] NULL,
	[IDTurnos] [varchar](30) NULL,
 CONSTRAINT [PK_Encargados] PRIMARY KEY CLUSTERED 
(
	[IDEncargados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 1/22/2022 9:40:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[IDLector] [int] IDENTITY(1,1) NOT NULL,
	[CI] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](100) NULL,
	[Carrera] [varchar](30) NULL,
	[Edad] [int] NULL,
	[Celular] [int] NULL,
 CONSTRAINT [PK_Estudiante] PRIMARY KEY CLUSTERED 
(
	[IDLector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 1/22/2022 9:40:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro](
	[IDLibro] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NULL,
	[Editorial] [varchar](50) NULL,
	[Area] [varchar](50) NULL,
	[IDAutor] [int] NULL,
 CONSTRAINT [PK_Libro] PRIMARY KEY CLUSTERED 
(
	[IDLibro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Local]    Script Date: 1/22/2022 9:40:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Local](
	[IDLocal] [int] IDENTITY(1,1) NOT NULL,
	[Ubicación] [varchar](100) NULL,
	[Numero_Local] [int] NULL,
	[Turnos] [varchar](30) NULL,
 CONSTRAINT [PK_Local] PRIMARY KEY CLUSTERED 
(
	[IDLocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 1/22/2022 9:40:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamo](
	[IDPrestamo] [int] IDENTITY(1,1) NOT NULL,
	[IDLector] [int] NOT NULL,
	[IDLibro] [int] NOT NULL,
	[FechaPrestamo] [datetime] NULL,
	[FechaDevolucion] [datetime] NULL,
	[Devuelto] [datetime] NULL,
	[IDEncargados] [int] NOT NULL,
 CONSTRAINT [PK_Prestamo] PRIMARY KEY CLUSTERED 
(
	[IDPrestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turnos]    Script Date: 1/22/2022 9:40:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turnos](
	[IDTurnos] [varchar](30) NOT NULL,
	[Diurno] [varchar](30) NULL,
	[Mixto] [varchar](30) NULL,
	[Nocturno] [varchar](30) NULL,
 CONSTRAINT [PK_Turnos] PRIMARY KEY CLUSTERED 
(
	[IDTurnos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Autor] ON 
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (1, N'stepegn king', N'Estados unidos')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (2, N'gabriel garcia marquez', N'colombia')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (3, N'Oscar wilder', N'finlandia')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (4, N'William Shakespeare', N'Inglaterra')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (5, N'James Joyce', N'australia')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (6, N'Philip K. Dick', N'Estados Unidos')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (7, N'Howard P.', N'Estados Unidos')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (8, N'Robert E.', N'Estados Unidos')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (9, N'Mary Elizabeth', N'Estados Unidos')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (10, N'Marvin', N'Estados Unidos')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (11, N'Clark Ashton', N'Estados Unidos')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (12, N'Farnswoth', N'Estados Unidos')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (13, N'C. L.', N'Estados Unidos')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (14, N'Robert', N'Estados Unidos')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (15, N'Edwin', N'Estados Unidos')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (16, N'Henry S.', N'Estados Unidos')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (51, N'Carlos Luis Fallas', N'Costa Rica')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (52, N'Carmen Lira', N'Costa Rica')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (53, N'Luis Paulino Vargas Solis', N'Costa Rica')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (54, N'Juan Carlos Solorzano', N'Costa Rica')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (55, N'Eugenia Rodriguez Saenz', N'Costa Rica')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (56, N'Eugenia Zavaleta Ochoa', N'Costa Rica')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (57, N'Ivan Molina Jimenez', N'Costa Rica')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (58, N'Ana Maria Botey Sobrado', N'Costa Rica')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (59, N'Ana Patricia Alvarenga Venutolo', N'Costa Rica')
GO
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Nacionalidad]) VALUES (60, N'Steve Aylett', N'Estados Unidos')
GO
SET IDENTITY_INSERT [dbo].[Autor] OFF
GO
SET IDENTITY_INSERT [dbo].[Encargados] ON 
GO
INSERT [dbo].[Encargados] ([IDEncargados], [Nombre], [Apellido], [Telefono], [IDLocal], [IDTurnos]) VALUES (2, N'MARIA FERNANDA', N'ESPINOZA', 56005600, 1, N'1')
GO
INSERT [dbo].[Encargados] ([IDEncargados], [Nombre], [Apellido], [Telefono], [IDLocal], [IDTurnos]) VALUES (3, N'JORGE', N'DE LA ROA', 30302020, 1, N'3')
GO
INSERT [dbo].[Encargados] ([IDEncargados], [Nombre], [Apellido], [Telefono], [IDLocal], [IDTurnos]) VALUES (4, N'JESUS', N'RAMIREZ', 45461200, 4, N'1')
GO
SET IDENTITY_INSERT [dbo].[Encargados] OFF
GO
SET IDENTITY_INSERT [dbo].[Estudiante] ON 
GO
INSERT [dbo].[Estudiante] ([IDLector], [CI], [Nombre], [Direccion], [Carrera], [Edad], [Celular]) VALUES (1, N'1001256', N'DAVID VILLA', N'HEREDIA,100O MxM', N'INGLES', 19, 5050000)
GO
INSERT [dbo].[Estudiante] ([IDLector], [CI], [Nombre], [Direccion], [Carrera], [Edad], [Celular]) VALUES (2, N'89001366', N'ANDRES BEJARANO C', N'HEREDIA, CALLE12-ABC90', N'INFORMATICA', 31, 60501236)
GO
INSERT [dbo].[Estudiante] ([IDLector], [CI], [Nombre], [Direccion], [Carrera], [Edad], [Celular]) VALUES (3, N'50012', N'CARLOS RAMIREZ', N'SJ , CALL12 AV 05', N'CIENCIAS', 25, 45004600)
GO
INSERT [dbo].[Estudiante] ([IDLector], [CI], [Nombre], [Direccion], [Carrera], [Edad], [Celular]) VALUES (4, N'78001236', N'MARVIN RAMOS', N'HER, ABC 12 CALL 13', N'INGLES', 19, 50605060)
GO
INSERT [dbo].[Estudiante] ([IDLector], [CI], [Nombre], [Direccion], [Carrera], [Edad], [Celular]) VALUES (5, N'150069', N'RICHARD VEGA', N'SJ, ABc , Calle  50', N'PSICOLOGIA', 25, 4536000)
GO
INSERT [dbo].[Estudiante] ([IDLector], [CI], [Nombre], [Direccion], [Carrera], [Edad], [Celular]) VALUES (6, N'560006', N'YANDEL YANKEE', N'CAR, RES OLIVOS CASA 17', N'MUSICA', 19, 50506060)
GO
INSERT [dbo].[Estudiante] ([IDLector], [CI], [Nombre], [Direccion], [Carrera], [Edad], [Celular]) VALUES (7, N'780006', N'MARIA DE LA ROSA', N'HER, CALL 14 AV 18', N'ODONTOLOGIA', 20, 45601212)
GO
INSERT [dbo].[Estudiante] ([IDLector], [CI], [Nombre], [Direccion], [Carrera], [Edad], [Celular]) VALUES (8, N'45623', N'GABRIEL HERNANDEZ', N'SJ, RES CITY , CASA 45', N'MEDECINA', 42, 50506060)
GO
INSERT [dbo].[Estudiante] ([IDLector], [CI], [Nombre], [Direccion], [Carrera], [Edad], [Celular]) VALUES (9, N'4500236', N'MAURICIO LEALES', N'HER, AV 50 CALL08', N'MEDICINA', 36, 5050000)
GO
INSERT [dbo].[Estudiante] ([IDLector], [CI], [Nombre], [Direccion], [Carrera], [Edad], [Celular]) VALUES (10, N'459689', N'JAVIER RAMIREZ', N'CAR, AV 100 CALL CENTRAL', N'ING INDUSTRiALES', 25, 5405000)
GO
INSERT [dbo].[Estudiante] ([IDLector], [CI], [Nombre], [Direccion], [Carrera], [Edad], [Celular]) VALUES (11, N'0018963', N'MILENA SANCHEZ', N'SJ, RES LAS FLORES CASA 45B', N'ING INDUSTRiALES', 30, 61307523)
GO
SET IDENTITY_INSERT [dbo].[Estudiante] OFF
GO
SET IDENTITY_INSERT [dbo].[Libro] ON 
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (2, N'Noches Blancas', N'Punto de Encuentro', N'Clasicos', 1)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (3, N'Principito', N'Oceano', N'Fantasia', 2)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (4, N'La bestia', N'glamur', N'Fantasia', 3)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (5, N'Pepe', N'Yoquese', N'Misterio', 4)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (6, N'la etica de arsitoteles', N'biblioteca de la red', N'historia', 5)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (7, N'la vida y el universo	', N'ANAGRAMA', N'fantasia', 6)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (8, N'conflictos agridulces', N'planeta', N'psicologia', 7)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (10, N'cien anios de soledad', N'EDITORIAL 90', N'NOVELA', 8)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (13, N'Psycosis', N'A NOVEL INK', N'TERROR', 14)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (14, N'INDUSTRIA CERAMICA CLASICA', N'ESCOLAR USA', N'INDUSTRIALES', 15)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (15, N'DEVIDED SOUL', N'GAPO BEACH ', N'HISTORIA MUSICAL', 10)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (16, N'DORIAN GRAY', N'GRANDES LIBROS ', N'FANTASIA', 3)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (17, N'la sangre manda', N'DEBOLSILLO	', N'TERROR', 1)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (18, N'El visitante', N'plaza de jade', N'TERROR', 1)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (19, N'Romeo y julieta', N'editorial juventud', N'ROMANCE', 4)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (20, N'Dublineses', N'Ulices', N'HISTORIA', 5)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (21, N'Historia de Europa', N'UCR', N'Historia', 57)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (22, N'Historia General de Costa Rica', N'UCR', N'Historia', 58)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (23, N'Alajuela y sus historias', N'UCR', N'Historia', 55)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (24, N'Panama y Centroamerica', N'UCR', N'Sociologia', 54)
GO
INSERT [dbo].[Libro] ([IDLibro], [Titulo], [Editorial], [Area], [IDAutor]) VALUES (25, N'Mamita Yunai', N'UCR', N'Realismo-Ficcion', 51)
GO
SET IDENTITY_INSERT [dbo].[Libro] OFF
GO
SET IDENTITY_INSERT [dbo].[Local] ON 
GO
INSERT [dbo].[Local] ([IDLocal], [Ubicación], [Numero_Local], [Turnos]) VALUES (1, N'SAN JOSE', 5050000, N'lunes a domingo 7am -10pm')
GO
INSERT [dbo].[Local] ([IDLocal], [Ubicación], [Numero_Local], [Turnos]) VALUES (2, N'HEREDIA', 40402323, N'lunes a domingo 7am -10pm')
GO
INSERT [dbo].[Local] ([IDLocal], [Ubicación], [Numero_Local], [Turnos]) VALUES (3, N'ALAJUELA', 50507878, N'lunes a domingo 7am -10pm')
GO
INSERT [dbo].[Local] ([IDLocal], [Ubicación], [Numero_Local], [Turnos]) VALUES (4, N'CARTAGO', 50500000, N'lunes a domingo 7am -10pm')
GO
SET IDENTITY_INSERT [dbo].[Local] OFF
GO
SET IDENTITY_INSERT [dbo].[Prestamo] ON 
GO
INSERT [dbo].[Prestamo] ([IDPrestamo], [IDLector], [IDLibro], [FechaPrestamo], [FechaDevolucion], [Devuelto], [IDEncargados]) VALUES (6, 7, 5, CAST(N'2022-01-19T22:08:29.000' AS DateTime), CAST(N'2022-01-24T22:08:29.000' AS DateTime), CAST(N'2022-01-19T21:08:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Prestamo] ([IDPrestamo], [IDLector], [IDLibro], [FechaPrestamo], [FechaDevolucion], [Devuelto], [IDEncargados]) VALUES (7, 7, 5, CAST(N'2022-01-19T22:08:29.000' AS DateTime), CAST(N'2022-01-24T22:08:29.000' AS DateTime), CAST(N'2022-01-19T21:08:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Prestamo] ([IDPrestamo], [IDLector], [IDLibro], [FechaPrestamo], [FechaDevolucion], [Devuelto], [IDEncargados]) VALUES (10, 7, 5, CAST(N'2022-01-19T22:08:29.000' AS DateTime), CAST(N'2022-01-24T22:08:29.000' AS DateTime), CAST(N'2022-01-19T21:08:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Prestamo] ([IDPrestamo], [IDLector], [IDLibro], [FechaPrestamo], [FechaDevolucion], [Devuelto], [IDEncargados]) VALUES (11, 7, 5, CAST(N'2022-01-19T22:08:29.000' AS DateTime), CAST(N'2022-01-24T22:08:29.000' AS DateTime), CAST(N'2022-01-19T22:08:00.000' AS DateTime), 2)
GO
SET IDENTITY_INSERT [dbo].[Prestamo] OFF
GO
INSERT [dbo].[Turnos] ([IDTurnos], [Diurno], [Mixto], [Nocturno]) VALUES (N'1', N'1pm-9pm', NULL, NULL)
GO
INSERT [dbo].[Turnos] ([IDTurnos], [Diurno], [Mixto], [Nocturno]) VALUES (N'2', NULL, N'3pm-10pm', NULL)
GO
INSERT [dbo].[Turnos] ([IDTurnos], [Diurno], [Mixto], [Nocturno]) VALUES (N'3', NULL, NULL, N'6pm-12mn')
GO
ALTER TABLE [dbo].[Encargados]  WITH CHECK ADD  CONSTRAINT [FK_Encargados_Local] FOREIGN KEY([IDLocal])
REFERENCES [dbo].[Local] ([IDLocal])
GO
ALTER TABLE [dbo].[Encargados] CHECK CONSTRAINT [FK_Encargados_Local]
GO
ALTER TABLE [dbo].[Encargados]  WITH CHECK ADD  CONSTRAINT [FK_Encargados_Turnos] FOREIGN KEY([IDTurnos])
REFERENCES [dbo].[Turnos] ([IDTurnos])
GO
ALTER TABLE [dbo].[Encargados] CHECK CONSTRAINT [FK_Encargados_Turnos]
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD  CONSTRAINT [FK_Libro_Autor] FOREIGN KEY([IDAutor])
REFERENCES [dbo].[Autor] ([IDAutor])
GO
ALTER TABLE [dbo].[Libro] CHECK CONSTRAINT [FK_Libro_Autor]
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Encargados1] FOREIGN KEY([IDEncargados])
REFERENCES [dbo].[Encargados] ([IDEncargados])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Encargados1]
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Estudiante2] FOREIGN KEY([IDLector])
REFERENCES [dbo].[Estudiante] ([IDLector])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Estudiante2]
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Libro] FOREIGN KEY([IDLibro])
REFERENCES [dbo].[Libro] ([IDLibro])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Libro]
GO
