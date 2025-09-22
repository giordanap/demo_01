/*
Script de implementación para prodDbLandings

Una herramienta generó este código.
Los cambios realizados en este archivo podrían generar un comportamiento incorrecto y se perderán si
se vuelve a generar el código.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "prodDbLandings"
:setvar DefaultFilePrefix "prodDbLandings"
:setvar DefaultDataPath ""
:setvar DefaultLogPath ""

GO
:on error exit
GO
/*
Detectar el modo SQLCMD y deshabilitar la ejecución del script si no se admite el modo SQLCMD.
Para volver a habilitar el script después de habilitar el modo SQLCMD, ejecute lo siguiente:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'El modo SQLCMD debe estar habilitado para ejecutar correctamente este script.';
        SET NOEXEC ON;
    END


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[COD_DEPARTAMENTO].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'COD_DEPARTAMENTO';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[COD_PROVINCIA].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'COD_PROVINCIA';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[DESCRIPCION].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[FECHA_CREACION].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'FECHA_CREACION';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[FECHA_FIN].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'FECHA_FIN';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[FECHA_INICIO].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'FECHA_INICIO';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[FECHA_MODIFICACION].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'FECHA_MODIFICACION';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[HABILITAR_LEY_EXTRA].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'HABILITAR_LEY_EXTRA';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[ID_ARCHIVO_FONDO].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'ID_ARCHIVO_FONDO';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[ID_ARCHIVO_LEY].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'ID_ARCHIVO_LEY';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[ID_ARCHIVO_TYC].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'ID_ARCHIVO_TYC';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[ID_CAMPANA].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'ID_CAMPANA';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[ID_CAMPANA_ESTADO].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'ID_CAMPANA_ESTADO';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[ID_EMPRESA].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'ID_EMPRESA';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[MAXIMO_CLIENTES].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'MAXIMO_CLIENTES';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[MENSAJE_EXITO].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'MENSAJE_EXITO';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[NOMBRE].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'NOMBRE';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[OBLIGATORIO_LEY].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'OBLIGATORIO_LEY';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[OBLIGATORIO_LEY_EXTRA].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'OBLIGATORIO_LEY_EXTRA';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[OBLIGATORIO_TYC].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'OBLIGATORIO_TYC';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[PATH_URL].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'PATH_URL';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[TIPO_CAMPANA].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'TIPO_CAMPANA';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[USUARIO_CREACION].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'USUARIO_CREACION';


GO
PRINT N'Quitando Propiedad extendida [dbo].[campana].[USUARIO_MODIFICACION].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'campana', @level2type = N'COLUMN', @level2name = N'USUARIO_MODIFICACION';


GO
PRINT N'Quitando Restricción DEFAULT [dbo].[DF_campana_MULTI_REGISTRO_CLIENTES]...';


GO
ALTER TABLE [dbo].[campana] DROP CONSTRAINT [DF_campana_MULTI_REGISTRO_CLIENTES];


GO
PRINT N'Quitando Clave externa [dbo].[FK_campana_archivo_fondo]...';


GO
ALTER TABLE [dbo].[campana] DROP CONSTRAINT [FK_campana_archivo_fondo];


GO
PRINT N'Quitando Clave externa [dbo].[FK_campana_archivo_ley]...';


GO
ALTER TABLE [dbo].[campana] DROP CONSTRAINT [FK_campana_archivo_ley];


GO
PRINT N'Quitando Clave externa [dbo].[FK_campana_archivo_tyc]...';


GO
ALTER TABLE [dbo].[campana] DROP CONSTRAINT [FK_campana_archivo_tyc];


GO
PRINT N'Quitando Clave externa [dbo].[FK_campana_campana_estado]...';


GO
ALTER TABLE [dbo].[campana] DROP CONSTRAINT [FK_campana_campana_estado];


GO
PRINT N'Quitando Clave externa [dbo].[FK_campana_empresa]...';


GO
ALTER TABLE [dbo].[campana] DROP CONSTRAINT [FK_campana_empresa];


GO
PRINT N'Quitando Clave externa [dbo].[FK_campana_datos_captura_campana]...';


GO
ALTER TABLE [dbo].[campana_datos_captura] DROP CONSTRAINT [FK_campana_datos_captura_campana];


GO
PRINT N'Quitando Clave externa [dbo].[FK_campana_red_campana]...';


GO
ALTER TABLE [dbo].[campana_red] DROP CONSTRAINT [FK_campana_red_campana];


GO
PRINT N'Quitando Clave externa [dbo].[FK_cliente_campana_campana]...';


GO
ALTER TABLE [dbo].[cliente_campana] DROP CONSTRAINT [FK_cliente_campana_campana];


GO
PRINT N'Quitando Clave externa [dbo].[FK_subcampana_campana]...';


GO
ALTER TABLE [dbo].[subcampana] DROP CONSTRAINT [FK_subcampana_campana];


GO
PRINT N'Creando Tipo de tabla definido por el usuario [dbo].[IntList]...';


GO
CREATE TYPE [dbo].[IntList] AS TABLE (
    [ID_TIENDA] INT NULL);


GO
PRINT N'Creando Tipo de tabla definido por el usuario [dbo].[ListaTienda]...';


GO
CREATE TYPE [dbo].[ListaTienda] AS TABLE (
    [ID_TIENDA] INT NULL);


GO
PRINT N'Creando Tipo de tabla definido por el usuario [dbo].[PointsIdList]...';


GO
CREATE TYPE [dbo].[PointsIdList] AS TABLE (
    [ID] INT NOT NULL);


GO
PRINT N'Creando Tipo de tabla definido por el usuario [dbo].[TicketIdList]...';


GO
CREATE TYPE [dbo].[TicketIdList] AS TABLE (
    [ID] INT NOT NULL);


GO
PRINT N'Iniciando recompilación de la tabla [dbo].[campana]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_campana] (
    [ID_CAMPANA]               INT            IDENTITY (1, 1) NOT NULL,
    [ID_EMPRESA]               INT            NOT NULL,
    [NOMBRE]                   NVARCHAR (100) NOT NULL,
    [PATH_URL]                 NVARCHAR (100) NOT NULL,
    [DESCRIPCION]              NVARCHAR (150) NOT NULL,
    [TIPO_CAMPANA]             INT            NOT NULL,
    [TIPO_CAMPANA_ESTRATEGICA] INT            NULL,
    [FECHA_INICIO]             DATETIME       NOT NULL,
    [FECHA_FIN]                DATETIME       NULL,
    [ID_CAMPANA_ESTADO]        INT            NOT NULL,
    [ID_ARCHIVO_TYC]           INT            NULL,
    [OBLIGATORIO_TYC]          BIT            NULL,
    [ID_ARCHIVO_LEY]           INT            NULL,
    [OBLIGATORIO_LEY]          BIT            NULL,
    [HABILITAR_LEY_EXTRA]      BIT            NULL,
    [ID_ARCHIVO_LEY_EXTRA]     INT            NULL,
    [OBLIGATORIO_LEY_EXTRA]    BIT            NULL,
    [ID_ARCHIVO_FONDO]         INT            NOT NULL,
    [MENSAJE_EXITO]            NVARCHAR (250) NULL,
    [MAXIMO_CLIENTES]          INT            NULL,
    [MENSAJE_MAXIMO_CLIENTES]  NVARCHAR (250) NULL,
    [COD_DEPARTAMENTO]         NVARCHAR (10)  NULL,
    [COD_PROVINCIA]            NVARCHAR (10)  NULL,
    [USUARIO_CREACION]         NVARCHAR (100) NOT NULL,
    [FECHA_CREACION]           DATETIME       NOT NULL,
    [USUARIO_MODIFICACION]     NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]       DATETIME       NULL,
    [NOTIFICACION_AUTOMATICA]  BIT            NULL,
    [HABILITAR_SUBCAMPANAS]    BIT            NULL,
    [MULTI_REGISTRO_CLIENTES]  BIT            NULL,
    [ID_ARCHIVO_FONDO_BANNER]  INT            NULL,
    [HAS_STEPS]                BIT            CONSTRAINT [DF_campana_hasSteps] DEFAULT ((0)) NOT NULL,
    [HABILITAR_SPONSORS]       BIT            CONSTRAINT [DEFAULT_campana_HABILITAR_SPONSORS] DEFAULT ((0)) NULL,
    [TITULO_SPONSORS]          NVARCHAR (100) NULL,
    [DESCRIPCION_SPONSORS]     NVARCHAR (300) NULL,
    [HABILITAR_PUNTOS]         BIT            NULL,
    [HABILITAR_CUPONES]        BIT            NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_campana1] PRIMARY KEY CLUSTERED ([ID_CAMPANA] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[campana])
    BEGIN
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_campana] ON;
        INSERT INTO [dbo].[tmp_ms_xx_campana] ([ID_CAMPANA], [ID_EMPRESA], [NOMBRE], [PATH_URL], [DESCRIPCION], [TIPO_CAMPANA], [FECHA_INICIO], [FECHA_FIN], [ID_CAMPANA_ESTADO], [ID_ARCHIVO_TYC], [OBLIGATORIO_TYC], [ID_ARCHIVO_LEY], [OBLIGATORIO_LEY], [HABILITAR_LEY_EXTRA], [ID_ARCHIVO_LEY_EXTRA], [OBLIGATORIO_LEY_EXTRA], [ID_ARCHIVO_FONDO], [MENSAJE_EXITO], [MAXIMO_CLIENTES], [MENSAJE_MAXIMO_CLIENTES], [COD_DEPARTAMENTO], [COD_PROVINCIA], [USUARIO_CREACION], [FECHA_CREACION], [USUARIO_MODIFICACION], [FECHA_MODIFICACION], [NOTIFICACION_AUTOMATICA], [HABILITAR_SUBCAMPANAS], [MULTI_REGISTRO_CLIENTES], [ID_ARCHIVO_FONDO_BANNER])
        SELECT   [ID_CAMPANA],
                 [ID_EMPRESA],
                 [NOMBRE],
                 [PATH_URL],
                 [DESCRIPCION],
                 [TIPO_CAMPANA],
                 [FECHA_INICIO],
                 [FECHA_FIN],
                 [ID_CAMPANA_ESTADO],
                 [ID_ARCHIVO_TYC],
                 [OBLIGATORIO_TYC],
                 [ID_ARCHIVO_LEY],
                 [OBLIGATORIO_LEY],
                 [HABILITAR_LEY_EXTRA],
                 [ID_ARCHIVO_LEY_EXTRA],
                 [OBLIGATORIO_LEY_EXTRA],
                 [ID_ARCHIVO_FONDO],
                 [MENSAJE_EXITO],
                 [MAXIMO_CLIENTES],
                 [MENSAJE_MAXIMO_CLIENTES],
                 [COD_DEPARTAMENTO],
                 [COD_PROVINCIA],
                 [USUARIO_CREACION],
                 [FECHA_CREACION],
                 [USUARIO_MODIFICACION],
                 [FECHA_MODIFICACION],
                 [NOTIFICACION_AUTOMATICA],
                 [HABILITAR_SUBCAMPANAS],
                 [MULTI_REGISTRO_CLIENTES],
                 [ID_ARCHIVO_FONDO_BANNER]
        FROM     [dbo].[campana]
        ORDER BY [ID_CAMPANA] ASC;
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_campana] OFF;
    END

DROP TABLE [dbo].[campana];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_campana]', N'campana';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_campana1]', N'PK_campana', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Modificando Tabla [dbo].[parametro]...';


GO
ALTER TABLE [dbo].[parametro] ALTER COLUMN [VALOR] NVARCHAR (MAX) NOT NULL;


GO
PRINT N'Creando Tabla [dbo].[archivo_admin]...';


GO
CREATE TABLE [dbo].[archivo_admin] (
    [ID_ARCHIVO_ADMIN]     INT            IDENTITY (1, 1) NOT NULL,
    [TIPO]                 INT            NOT NULL,
    [DESCRIPCION]          NVARCHAR (50)  NOT NULL,
    [RUTA]                 NVARCHAR (100) NOT NULL,
    [NOMBRE]               NVARCHAR (100) NOT NULL,
    [TIPO_MIME]            NVARCHAR (100) NULL,
    [VIGENTE]              BIT            NOT NULL,
    [USUARIO_CREACION]     NVARCHAR (100) NOT NULL,
    [FECHA_CREACION]       DATETIME       NOT NULL,
    [USUARIO_MODIFICACION] NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]   DATETIME       NULL,
    CONSTRAINT [PK_archivo_admin] PRIMARY KEY CLUSTERED ([ID_ARCHIVO_ADMIN] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[auditoria_sp_parametros]...';


GO
CREATE TABLE [dbo].[auditoria_sp_parametros] (
    [ID_AUDITORIA] INT            IDENTITY (1, 1) NOT NULL,
    [FECHA]        DATETIME       NOT NULL,
    [SP_NAME]      NVARCHAR (200) NOT NULL,
    [PARAM_NAME]   NVARCHAR (100) NOT NULL,
    [PARAM_VALUE]  NVARCHAR (MAX) NULL,
    [USUARIO]      NVARCHAR (100) NULL,
    [ENTIDAD_ID]   INT            NULL,
    PRIMARY KEY CLUSTERED ([ID_AUDITORIA] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[campaign_steps]...';


GO
CREATE TABLE [dbo].[campaign_steps] (
    [campaign_steps_id] INT            IDENTITY (1, 1) NOT NULL,
    [campaign_id]       INT            NOT NULL,
    [steps_title]       NVARCHAR (100) NOT NULL,
    [steps_description] NVARCHAR (300) NULL,
    PRIMARY KEY CLUSTERED ([campaign_steps_id] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[campana_cliente_cupon]...';


GO
CREATE TABLE [dbo].[campana_cliente_cupon] (
    [ID_CAMPANA_CLIENTE_CUPON] INT            IDENTITY (1, 1) NOT NULL,
    [ID_CLIENTE]               INT            NULL,
    [ID_CAMPANA]               INT            NULL,
    [ID_CUPON]                 INT            NULL,
    [ID_TIENDA]                INT            NULL,
    [USUARIO_CREACION]         NVARCHAR (100) NULL,
    [FECHA_CREACION]           DATETIME       NULL,
    [USUARIO_MODIFICACION]     NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]       DATETIME       NULL,
    CONSTRAINT [PK_campana_cliente_cupon] PRIMARY KEY CLUSTERED ([ID_CAMPANA_CLIENTE_CUPON] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[campana_cupon_tienda]...';


GO
CREATE TABLE [dbo].[campana_cupon_tienda] (
    [ID_CAMPANA_CUPON_TIENDA] INT            IDENTITY (1, 1) NOT NULL,
    [ID_CAMPANA]              INT            NULL,
    [ID_CUPON]                INT            NULL,
    [ID_TIENDA]               INT            NULL,
    [USUARIO_CREACION]        NVARCHAR (100) NULL,
    [FECHA_CREACION]          DATETIME       NULL,
    [USUARIO_MODIFICACION]    NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]      DATETIME       NULL,
    CONSTRAINT [PK_campana_cupon_tienda] PRIMARY KEY CLUSTERED ([ID_CAMPANA_CUPON_TIENDA] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[campana_documento_legal]...';


GO
CREATE TABLE [dbo].[campana_documento_legal] (
    [ID_CAMPANA_DOCUMENTO_LEGAL]   INT            IDENTITY (1, 1) NOT NULL,
    [ID_CAMPANA]                   INT            NULL,
    [ID_DOCUMENTO_LEGAL]           INT            NULL,
    [OBLIGATORIO]                  BIT            NULL,
    [TEXTO]                        NVARCHAR (300) NULL,
    [ORDEN]                        INT            NULL,
    [USUARIO_CREACION]             NVARCHAR (100) NULL,
    [FECHA_CREACION]               DATETIME       NULL,
    [USUARIO_MODIFICACION]         NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]           DATETIME       NULL,
    [VIGENTE]                      BIT            NULL,
    [ID_CATEGORIA_DOCUMENTO_LEGAL] INT            NULL,
    CONSTRAINT [PK_campana_documento_legal] PRIMARY KEY CLUSTERED ([ID_CAMPANA_DOCUMENTO_LEGAL] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[campana_monto_minimo]...';


GO
CREATE TABLE [dbo].[campana_monto_minimo] (
    [ID_CAMPANA_MONTO_MINIMO] INT             IDENTITY (1, 1) NOT NULL,
    [ID_CAMPANA]              INT             NOT NULL,
    [MONEDA]                  NVARCHAR (10)   NOT NULL,
    [MONTO_MINIMO]            DECIMAL (10, 2) NOT NULL,
    [FECHA_CREACION]          DATETIME        NOT NULL,
    [USUARIO_CREACION]        NVARCHAR (100)  NOT NULL,
    [USUARIO_MODIFICACION]    NVARCHAR (100)  NULL,
    [FECHA_MODIFICACION]      DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ID_CAMPANA_MONTO_MINIMO] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[campana_sponsor]...';


GO
CREATE TABLE [dbo].[campana_sponsor] (
    [ID_CAMPANA_SPONSOR]   INT            IDENTITY (1, 1) NOT NULL,
    [ID_CAMPANA]           INT            NOT NULL,
    [ID_SPONSOR]           INT            NOT NULL,
    [ORDEN]                INT            NULL,
    [VIGENTE]              BIT            NOT NULL,
    [USUARIO_CREACION]     NVARCHAR (100) NULL,
    [FECHA_CREACION]       DATETIME       NULL,
    [USUARIO_MODIFICACION] NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]   DATETIME       NULL,
    CONSTRAINT [PK_campana_sponsor] PRIMARY KEY CLUSTERED ([ID_CAMPANA_SPONSOR] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[campana_tienda]...';


GO
CREATE TABLE [dbo].[campana_tienda] (
    [ID_CAMPANA_TIENDA]    INT            IDENTITY (1, 1) NOT NULL,
    [ID_CAMPANA]           INT            NOT NULL,
    [ID_TIENDA]            INT            NOT NULL,
    [VIGENTE]              BIT            NULL,
    [FECHA_CREACION]       DATETIME       NOT NULL,
    [USUARIO_CREACION]     NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]   DATETIME       NULL,
    [USUARIO_MODIFICACION] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([ID_CAMPANA_TIENDA] ASC),
    CONSTRAINT [UQ_campana_tienda] UNIQUE NONCLUSTERED ([ID_CAMPANA] ASC, [ID_TIENDA] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[campana_tienda_multiplicador]...';


GO
CREATE TABLE [dbo].[campana_tienda_multiplicador] (
    [ID_CAMPANA_TIENDA_MULTIPLICADOR] INT            IDENTITY (1, 1) NOT NULL,
    [ID_CAMPANA]                      INT            NOT NULL,
    [ID_TIENDA]                       INT            NOT NULL,
    [MULTIPLICADOR]                   DECIMAL (5, 2) NOT NULL,
    [MONEDA]                          NVARCHAR (10)  NOT NULL,
    [ACTIVO]                          BIT            NOT NULL,
    [USUARIO_CREACION]                NVARCHAR (100) NOT NULL,
    [FECHA_CREACION]                  DATETIME       NOT NULL,
    [USUARIO_MODIFICACION]            NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]              DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([ID_CAMPANA_TIENDA_MULTIPLICADOR] ASC),
    CONSTRAINT [UQ_campana_tienda_multiplicador_moneda] UNIQUE NONCLUSTERED ([ID_CAMPANA] ASC, [ID_TIENDA] ASC, [MONEDA] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[categoria_documento_legal]...';


GO
CREATE TABLE [dbo].[categoria_documento_legal] (
    [ID_CATEGORIA_DOCUMENTO_LEGAL] INT            IDENTITY (1, 1) NOT NULL,
    [NOMBRE]                       NVARCHAR (100) NOT NULL,
    [VIGENTE]                      BIT            NULL,
    [USUARIO_CREACION]             NVARCHAR (100) NULL,
    [FECHA_CREACION]               DATETIME       NULL,
    [USUARIO_MODIFICACION]         NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]           DATETIME       NULL,
    CONSTRAINT [PK_categoria_documento_legal] PRIMARY KEY CLUSTERED ([ID_CATEGORIA_DOCUMENTO_LEGAL] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[cliente_campana_documento_legal]...';


GO
CREATE TABLE [dbo].[cliente_campana_documento_legal] (
    [ID_CLIENTE_CAMPANA_DOCUMENTO_LEGAL] INT            IDENTITY (1, 1) NOT NULL,
    [ID_CLIENTE_CAMPANA]                 INT            NOT NULL,
    [ID_CAMPANA_DOCUMENTO_LEGAL]         INT            NOT NULL,
    [ACEPTO]                             BIT            NOT NULL,
    [FECHA_ACEPTACION]                   DATETIME       NULL,
    [USUARIO_CREACION]                   NVARCHAR (100) NOT NULL,
    [FECHA_CREACION]                     DATETIME       NOT NULL,
    [USUARIO_MODIFICACION]               NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]                 DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([ID_CLIENTE_CAMPANA_DOCUMENTO_LEGAL] ASC),
    CONSTRAINT [UQ_cliente_campana_documento_legal] UNIQUE NONCLUSTERED ([ID_CLIENTE_CAMPANA] ASC, [ID_CAMPANA_DOCUMENTO_LEGAL] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[cliente_campana_puntos]...';


GO
CREATE TABLE [dbo].[cliente_campana_puntos] (
    [ID_CLIENTE_CAMPANA_PUNTOS] INT            IDENTITY (1, 1) NOT NULL,
    [ID_CLIENTE_CAMPANA]        INT            NOT NULL,
    [PUNTOS_TOTALES]            INT            NOT NULL,
    [FECHA_ACTUALIZACION]       DATETIME       NOT NULL,
    [USUARIO_CREACION]          NVARCHAR (100) NOT NULL,
    [USUARIO_MODIFICACION]      NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]        DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([ID_CLIENTE_CAMPANA_PUNTOS] ASC)
);


GO
PRINT N'Creando Índice [dbo].[cliente_campana_puntos].[IX_cliente_campana_puntos_ID_CLIENTE_CAMPANA]...';


GO
CREATE NONCLUSTERED INDEX [IX_cliente_campana_puntos_ID_CLIENTE_CAMPANA]
    ON [dbo].[cliente_campana_puntos]([ID_CLIENTE_CAMPANA] ASC);


GO
PRINT N'Creando Tabla [dbo].[cliente_campana_residual]...';


GO
CREATE TABLE [dbo].[cliente_campana_residual] (
    [ID_CLIENTE_CAMPANA_RESIDUAL] INT             IDENTITY (1, 1) NOT NULL,
    [ID_CLIENTE_CAMPANA]          INT             NOT NULL,
    [MONTO_RESIDUAL]              DECIMAL (10, 2) NOT NULL,
    [MONEDA]                      NVARCHAR (10)   NOT NULL,
    [USUARIO_CREACION]            NVARCHAR (100)  NOT NULL,
    [FECHA_CREACION]              DATETIME        NOT NULL,
    [USUARIO_MODIFICACION]        NVARCHAR (100)  NULL,
    [FECHA_MODIFICACION]          DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ID_CLIENTE_CAMPANA_RESIDUAL] ASC)
);


GO
PRINT N'Creando Índice [dbo].[cliente_campana_residual].[IX_cliente_campana_residual_ID_CLIENTE_CAMPANA]...';


GO
CREATE NONCLUSTERED INDEX [IX_cliente_campana_residual_ID_CLIENTE_CAMPANA]
    ON [dbo].[cliente_campana_residual]([ID_CLIENTE_CAMPANA] ASC);


GO
PRINT N'Creando Tabla [dbo].[comprobante]...';


GO
CREATE TABLE [dbo].[comprobante] (
    [ID_COMPROBANTE]         INT             IDENTITY (1, 1) NOT NULL,
    [ID_CLIENTE_CAMPANA]     INT             NOT NULL,
    [ID_TIENDA]              INT             NOT NULL,
    [RUC]                    NVARCHAR (50)   NOT NULL,
    [SERIE]                  NVARCHAR (50)   NULL,
    [CORRELATIVO]            NVARCHAR (100)  NULL,
    [IGV]                    DECIMAL (10, 2) NOT NULL,
    [MONTO_TOTAL]            DECIMAL (10, 2) NOT NULL,
    [MONEDA]                 NVARCHAR (10)   NOT NULL,
    [NOMBRE_VENDEDOR]        NVARCHAR (255)  NULL,
    [ESTADO_OCR]             NVARCHAR (50)   NULL,
    [INGRESO_MANUAL]         BIT             NOT NULL,
    [FECHA_EMISION]          DATETIME        NOT NULL,
    [FECHA_CREACION]         DATETIME        NOT NULL,
    [FECHA_VALIDACION]       DATETIME        NULL,
    [USUARIO_CREACION]       NVARCHAR (100)  NOT NULL,
    [USUARIO_MODIFICACION]   NVARCHAR (100)  NULL,
    [FECHA_MODIFICACION]     DATETIME        NULL,
    [RUTA_IMAGEN]            NVARCHAR (255)  NULL,
    [NOMBRE_IMAGEN]          NVARCHAR (255)  NULL,
    [TIPO_MIME]              NVARCHAR (100)  NULL,
    [ID_ARCHIVO]             INT             NULL,
    [TIPO_DOCUMENTO_CLIENTE] NVARCHAR (20)   NULL,
    [DOCUMENTO_CLIENTE]      NVARCHAR (50)   NULL,
    [TIPO_COMPROBANTE]       NVARCHAR (20)   NULL,
    PRIMARY KEY CLUSTERED ([ID_COMPROBANTE] ASC)
);


GO
PRINT N'Creando Índice [dbo].[comprobante].[IX_comprobante_ID_CLIENTE_CAMPANA]...';


GO
CREATE NONCLUSTERED INDEX [IX_comprobante_ID_CLIENTE_CAMPANA]
    ON [dbo].[comprobante]([ID_CLIENTE_CAMPANA] ASC);


GO
PRINT N'Creando Índice [dbo].[comprobante].[IX_comprobante_ID_TIENDA]...';


GO
CREATE NONCLUSTERED INDEX [IX_comprobante_ID_TIENDA]
    ON [dbo].[comprobante]([ID_TIENDA] ASC);


GO
PRINT N'Creando Índice [dbo].[comprobante].[IX_comprobante_ID_ARCHIVO]...';


GO
CREATE NONCLUSTERED INDEX [IX_comprobante_ID_ARCHIVO]
    ON [dbo].[comprobante]([ID_ARCHIVO] ASC);


GO
PRINT N'Creando Índice [dbo].[comprobante].[IX_comprobante_DOCUMENTO_CLIENTE]...';


GO
CREATE NONCLUSTERED INDEX [IX_comprobante_DOCUMENTO_CLIENTE]
    ON [dbo].[comprobante]([DOCUMENTO_CLIENTE] ASC);


GO
PRINT N'Creando Índice [dbo].[comprobante].[IX_comprobante_TIPO_COMPROBANTE]...';


GO
CREATE NONCLUSTERED INDEX [IX_comprobante_TIPO_COMPROBANTE]
    ON [dbo].[comprobante]([TIPO_COMPROBANTE] ASC);


GO
PRINT N'Creando Tabla [dbo].[comprobante_puntos]...';


GO
CREATE TABLE [dbo].[comprobante_puntos] (
    [ID_COMPROBANTE_PUNTOS]  INT             IDENTITY (1, 1) NOT NULL,
    [ID_COMPROBANTE]         INT             NOT NULL,
    [PUNTOS_OTORGADOS]       INT             NOT NULL,
    [MONTO_ACUMULADO]        DECIMAL (10, 2) NOT NULL,
    [MULTIPLICADOR_APLICADO] BIT             NOT NULL,
    [FECHA_CREACION]         DATETIME        NOT NULL,
    [USUARIO_CREACION]       NVARCHAR (100)  NOT NULL,
    [USUARIO_MODIFICACION]   NVARCHAR (100)  NULL,
    [FECHA_MODIFICACION]     DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ID_COMPROBANTE_PUNTOS] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[configuracion_multiplicador]...';


GO
CREATE TABLE [dbo].[configuracion_multiplicador] (
    [ID_CONFIGURACION_MULTIPLICADOR] INT            IDENTITY (1, 1) NOT NULL,
    [ID_CAMPANA_TIENDA]              INT            NOT NULL,
    [MULTIPLICADOR]                  DECIMAL (5, 2) NOT NULL,
    [ACTIVO]                         BIT            NOT NULL,
    [FECHA_CREACION]                 DATETIME       NOT NULL,
    [USUARIO_CREACION]               NVARCHAR (100) NOT NULL,
    [USUARIO_MODIFICACION]           NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]             DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([ID_CONFIGURACION_MULTIPLICADOR] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[cupon]...';


GO
CREATE TABLE [dbo].[cupon] (
    [ID_CUPON]             INT            IDENTITY (1, 1) NOT NULL,
    [NOMBRE]               NVARCHAR (100) NOT NULL,
    [DESCRIPCION]          NVARCHAR (500) NULL,
    [ID_IMAGEN_CUPON]      INT            NULL,
    [REDIRECT_URL]         NVARCHAR (300) NULL,
    [TIPO]                 NVARCHAR (100) NULL,
    [VALIDO_DESDE]         DATETIME       NULL,
    [VALIDO_HASTA]         DATETIME       NULL,
    [VIGENTE]              BIT            NOT NULL,
    [USUARIO_CREACION]     NVARCHAR (100) NULL,
    [FECHA_CREACION]       DATETIME       NULL,
    [USUARIO_MODIFICACION] NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]   DATETIME       NULL,
    CONSTRAINT [PK_cupon] PRIMARY KEY CLUSTERED ([ID_CUPON] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[documento_legal]...';


GO
CREATE TABLE [dbo].[documento_legal] (
    [ID_DOCUMENTO_LEGAL]           INT            IDENTITY (1, 1) NOT NULL,
    [ID_EMPRESA]                   INT            NOT NULL,
    [ID_CATEGORIA_DOCUMENTO_LEGAL] INT            NOT NULL,
    [NOMBRE]                       NVARCHAR (100) NOT NULL,
    [ID_ARCHIVO_DOCUMENTO]         INT            NOT NULL,
    [VIGENTE]                      BIT            NULL,
    [ESTADO]                       BIT            NULL,
    [FECHA_CREACION]               DATETIME       NULL,
    [USUARIO_CREACION]             NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]           DATETIME       NULL,
    [USUARIO_MODIFICACION]         NVARCHAR (100) NULL,
    [DESCRIPCION]                  NVARCHAR (255) NULL,
    CONSTRAINT [PK_documento_legal] PRIMARY KEY CLUSTERED ([ID_DOCUMENTO_LEGAL] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[qr_plantilla]...';


GO
CREATE TABLE [dbo].[qr_plantilla] (
    [ID_QR_PLANTILLA]      INT            IDENTITY (1, 1) NOT NULL,
    [ID_TIENDA]            INT            NULL,
    [DESCRIPCION]          NVARCHAR (255) NOT NULL,
    [ACTIVO]               BIT            NOT NULL,
    [USUARIO_CREACION]     NVARCHAR (100) NOT NULL,
    [FECHA_CREACION]       DATETIME       NOT NULL,
    [USUARIO_MODIFICACION] NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]   DATETIME       NULL,
    [RUC_TIENDA]           VARCHAR (20)   NULL,
    PRIMARY KEY CLUSTERED ([ID_QR_PLANTILLA] ASC)
);


GO
PRINT N'Creando Índice [dbo].[qr_plantilla].[IX_qr_plantilla_ID_TIENDA]...';


GO
CREATE NONCLUSTERED INDEX [IX_qr_plantilla_ID_TIENDA]
    ON [dbo].[qr_plantilla]([ID_TIENDA] ASC);


GO
PRINT N'Creando Índice [dbo].[qr_plantilla].[IX_qr_plantilla_ruc_tienda]...';


GO
CREATE NONCLUSTERED INDEX [IX_qr_plantilla_ruc_tienda]
    ON [dbo].[qr_plantilla]([RUC_TIENDA] ASC);


GO
PRINT N'Creando Tabla [dbo].[qr_plantilla_campo]...';


GO
CREATE TABLE [dbo].[qr_plantilla_campo] (
    [ID_QR_PLANTILLA_CAMPO] INT            IDENTITY (1, 1) NOT NULL,
    [ID_QR_PLANTILLA]       INT            NOT NULL,
    [POSICION]              INT            NOT NULL,
    [NOMBRE_CAMPO]          NVARCHAR (100) NOT NULL,
    [USUARIO_CREACION]      NVARCHAR (100) NOT NULL,
    [FECHA_CREACION]        DATETIME       NOT NULL,
    [USUARIO_MODIFICACION]  NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]    DATETIME       NULL,
    [TRANSFORMACION]        NVARCHAR (255) NULL,
    [FORMATO_ESPERADO]      NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([ID_QR_PLANTILLA_CAMPO] ASC),
    CONSTRAINT [UQ_qr_plantilla_campo_posicion] UNIQUE NONCLUSTERED ([ID_QR_PLANTILLA] ASC, [POSICION] ASC)
);


GO
PRINT N'Creando Índice [dbo].[qr_plantilla_campo].[IX_qr_plantilla_campo_ID_QR_PLANTILLA]...';


GO
CREATE NONCLUSTERED INDEX [IX_qr_plantilla_campo_ID_QR_PLANTILLA]
    ON [dbo].[qr_plantilla_campo]([ID_QR_PLANTILLA] ASC);


GO
PRINT N'Creando Tabla [dbo].[regla_puntos]...';


GO
CREATE TABLE [dbo].[regla_puntos] (
    [ID_REGLA_PUNTOS]      INT             IDENTITY (1, 1) NOT NULL,
    [ID_CAMPANA]           INT             NOT NULL,
    [ID_TIENDA]            INT             NULL,
    [MONEDA]               NVARCHAR (10)   NOT NULL,
    [MONTO_POR_PUNTO]      DECIMAL (10, 2) NOT NULL,
    [FECHA_CREACION]       DATETIME        NOT NULL,
    [MONTO_BASE]           DECIMAL (10, 2) NULL,
    [PUNTOS_EQUIVALENTES]  INT             NULL,
    [USUARIO_CREACION]     NVARCHAR (100)  NOT NULL,
    [USUARIO_MODIFICACION] NVARCHAR (100)  NULL,
    [FECHA_MODIFICACION]   DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ID_REGLA_PUNTOS] ASC)
);


GO
PRINT N'Creando Índice [dbo].[regla_puntos].[IX_regla_puntos_ID_CAMPANA_ID_TIENDA]...';


GO
CREATE NONCLUSTERED INDEX [IX_regla_puntos_ID_CAMPANA_ID_TIENDA]
    ON [dbo].[regla_puntos]([ID_CAMPANA] ASC, [ID_TIENDA] ASC);


GO
PRINT N'Creando Tabla [dbo].[sponsor]...';


GO
CREATE TABLE [dbo].[sponsor] (
    [ID_SPONSOR]           INT            IDENTITY (1, 1) NOT NULL,
    [NOMBRE]               NVARCHAR (50)  NOT NULL,
    [ID_ARCHIVO_LOGO]      INT            NOT NULL,
    [ID_CAMPANA]           INT            NULL,
    [ID_EMPRESA]           INT            NULL,
    [ORDEN]                INT            NULL,
    [VIGENTE]              BIT            NOT NULL,
    [USUARIO_CREACION]     NVARCHAR (100) NULL,
    [FECHA_CREACION]       DATETIME       NULL,
    [USUARIO_MODIFICACION] NVARCHAR (100) NULL,
    [FECHA_MODIFICACION]   DATETIME       NULL,
    CONSTRAINT [PK_dbo.sponsor] PRIMARY KEY CLUSTERED ([ID_SPONSOR] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[step]...';


GO
CREATE TABLE [dbo].[step] (
    [step_id]     INT            IDENTITY (1, 1) NOT NULL,
    [title]       NVARCHAR (100) NOT NULL,
    [description] NVARCHAR (300) NULL,
    [path]        NVARCHAR (300) NOT NULL,
    [step_order]  INT            NOT NULL,
    [campaign_id] INT            NOT NULL,
    [id_archivo]  INT            NULL,
    PRIMARY KEY CLUSTERED ([step_id] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[tienda]...';


GO
CREATE TABLE [dbo].[tienda] (
    [ID_TIENDA]            INT            IDENTITY (1, 1) NOT NULL,
    [ID_EMPRESA]           INT            NULL,
    [NOMBRE]               NVARCHAR (255) NOT NULL,
    [NUMERO_LOCAL]         NVARCHAR (100) NULL,
    [NUMERO_CONTRATO]      NVARCHAR (100) NULL,
    [RAZON_SOCIAL]         NVARCHAR (100) NULL,
    [RUC]                  NVARCHAR (50)  NOT NULL,
    [VIGENTE]              BIT            NULL,
    [FECHA_DESDE]          DATETIME       NULL,
    [FECHA_HASTA]          DATETIME       NULL,
    [FECHA_SALIDA]         DATETIME       NULL,
    [FECHA_CREACION]       DATETIME       NOT NULL,
    [FECHA_MODIFICACION]   DATETIME       NULL,
    [USUARIO_CREACION]     NVARCHAR (100) NOT NULL,
    [USUARIO_MODIFICACION] NVARCHAR (100) NULL,
    [TIPO_LOCAL]           NVARCHAR (100) NULL,
    [COD_CEN_COMERCIAL]    NVARCHAR (50)  NULL,
    [RUBRO]                NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([ID_TIENDA] ASC)
);


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[auditoria_sp_parametros]...';


GO
ALTER TABLE [dbo].[auditoria_sp_parametros]
    ADD DEFAULT (getdate()) FOR [FECHA];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[campana_monto_minimo]...';


GO
ALTER TABLE [dbo].[campana_monto_minimo]
    ADD DEFAULT (getdate()) FOR [FECHA_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[campana_monto_minimo]...';


GO
ALTER TABLE [dbo].[campana_monto_minimo]
    ADD DEFAULT ('sistema') FOR [USUARIO_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[campana_tienda]...';


GO
ALTER TABLE [dbo].[campana_tienda]
    ADD DEFAULT (getdate()) FOR [FECHA_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[campana_tienda_multiplicador]...';


GO
ALTER TABLE [dbo].[campana_tienda_multiplicador]
    ADD DEFAULT ((1.0)) FOR [MULTIPLICADOR];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[campana_tienda_multiplicador]...';


GO
ALTER TABLE [dbo].[campana_tienda_multiplicador]
    ADD DEFAULT ((1)) FOR [ACTIVO];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[campana_tienda_multiplicador]...';


GO
ALTER TABLE [dbo].[campana_tienda_multiplicador]
    ADD DEFAULT (getdate()) FOR [FECHA_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[cliente_campana_documento_legal]...';


GO
ALTER TABLE [dbo].[cliente_campana_documento_legal]
    ADD DEFAULT ((0)) FOR [ACEPTO];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[cliente_campana_documento_legal]...';


GO
ALTER TABLE [dbo].[cliente_campana_documento_legal]
    ADD DEFAULT (getdate()) FOR [FECHA_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[cliente_campana_puntos]...';


GO
ALTER TABLE [dbo].[cliente_campana_puntos]
    ADD DEFAULT ('sistema') FOR [USUARIO_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[cliente_campana_puntos]...';


GO
ALTER TABLE [dbo].[cliente_campana_puntos]
    ADD DEFAULT ((0)) FOR [PUNTOS_TOTALES];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[cliente_campana_puntos]...';


GO
ALTER TABLE [dbo].[cliente_campana_puntos]
    ADD DEFAULT (getdate()) FOR [FECHA_ACTUALIZACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[cliente_campana_residual]...';


GO
ALTER TABLE [dbo].[cliente_campana_residual]
    ADD DEFAULT ((0)) FOR [MONTO_RESIDUAL];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[cliente_campana_residual]...';


GO
ALTER TABLE [dbo].[cliente_campana_residual]
    ADD DEFAULT ('sistema') FOR [USUARIO_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[cliente_campana_residual]...';


GO
ALTER TABLE [dbo].[cliente_campana_residual]
    ADD DEFAULT (getdate()) FOR [FECHA_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[comprobante]...';


GO
ALTER TABLE [dbo].[comprobante]
    ADD DEFAULT ((1)) FOR [INGRESO_MANUAL];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[comprobante]...';


GO
ALTER TABLE [dbo].[comprobante]
    ADD DEFAULT ('sistema') FOR [USUARIO_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[comprobante]...';


GO
ALTER TABLE [dbo].[comprobante]
    ADD DEFAULT (getdate()) FOR [FECHA_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[comprobante_puntos]...';


GO
ALTER TABLE [dbo].[comprobante_puntos]
    ADD DEFAULT ((0)) FOR [MULTIPLICADOR_APLICADO];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[comprobante_puntos]...';


GO
ALTER TABLE [dbo].[comprobante_puntos]
    ADD DEFAULT (getdate()) FOR [FECHA_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[comprobante_puntos]...';


GO
ALTER TABLE [dbo].[comprobante_puntos]
    ADD DEFAULT ('sistema') FOR [USUARIO_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[configuracion_multiplicador]...';


GO
ALTER TABLE [dbo].[configuracion_multiplicador]
    ADD DEFAULT ('sistema') FOR [USUARIO_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[configuracion_multiplicador]...';


GO
ALTER TABLE [dbo].[configuracion_multiplicador]
    ADD DEFAULT ((1)) FOR [ACTIVO];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[configuracion_multiplicador]...';


GO
ALTER TABLE [dbo].[configuracion_multiplicador]
    ADD DEFAULT (getdate()) FOR [FECHA_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[qr_plantilla]...';


GO
ALTER TABLE [dbo].[qr_plantilla]
    ADD DEFAULT ((0)) FOR [ACTIVO];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[qr_plantilla]...';


GO
ALTER TABLE [dbo].[qr_plantilla]
    ADD DEFAULT (getdate()) FOR [FECHA_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[qr_plantilla_campo]...';


GO
ALTER TABLE [dbo].[qr_plantilla_campo]
    ADD DEFAULT (getdate()) FOR [FECHA_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[regla_puntos]...';


GO
ALTER TABLE [dbo].[regla_puntos]
    ADD DEFAULT ('sistema') FOR [USUARIO_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[regla_puntos]...';


GO
ALTER TABLE [dbo].[regla_puntos]
    ADD DEFAULT (getdate()) FOR [FECHA_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[tienda]...';


GO
ALTER TABLE [dbo].[tienda]
    ADD DEFAULT ('sistema') FOR [USUARIO_CREACION];


GO
PRINT N'Creando Restricción DEFAULT restricción sin nombre en [dbo].[tienda]...';


GO
ALTER TABLE [dbo].[tienda]
    ADD DEFAULT (getdate()) FOR [FECHA_CREACION];


GO
PRINT N'Creando Clave externa [dbo].[FK_campana_archivo_fondo]...';


GO
ALTER TABLE [dbo].[campana] WITH NOCHECK
    ADD CONSTRAINT [FK_campana_archivo_fondo] FOREIGN KEY ([ID_ARCHIVO_FONDO]) REFERENCES [dbo].[archivo] ([ID_ARCHIVO]);


GO
PRINT N'Creando Clave externa [dbo].[FK_campana_archivo_ley]...';


GO
ALTER TABLE [dbo].[campana] WITH NOCHECK
    ADD CONSTRAINT [FK_campana_archivo_ley] FOREIGN KEY ([ID_ARCHIVO_LEY]) REFERENCES [dbo].[archivo] ([ID_ARCHIVO]);


GO
PRINT N'Creando Clave externa [dbo].[FK_campana_archivo_tyc]...';


GO
ALTER TABLE [dbo].[campana] WITH NOCHECK
    ADD CONSTRAINT [FK_campana_archivo_tyc] FOREIGN KEY ([ID_ARCHIVO_TYC]) REFERENCES [dbo].[archivo] ([ID_ARCHIVO]);


GO
PRINT N'Creando Clave externa [dbo].[FK_campana_campana_estado]...';


GO
ALTER TABLE [dbo].[campana] WITH NOCHECK
    ADD CONSTRAINT [FK_campana_campana_estado] FOREIGN KEY ([ID_CAMPANA_ESTADO]) REFERENCES [dbo].[campana_estado] ([ID_CAMPANA_ESTADO]);


GO
PRINT N'Creando Clave externa [dbo].[FK_campana_empresa]...';


GO
ALTER TABLE [dbo].[campana] WITH NOCHECK
    ADD CONSTRAINT [FK_campana_empresa] FOREIGN KEY ([ID_EMPRESA]) REFERENCES [dbo].[empresa] ([ID_EMPRESA]);


GO
PRINT N'Creando Clave externa [dbo].[FK_campana_datos_captura_campana]...';


GO
ALTER TABLE [dbo].[campana_datos_captura] WITH NOCHECK
    ADD CONSTRAINT [FK_campana_datos_captura_campana] FOREIGN KEY ([ID_CAMPANA]) REFERENCES [dbo].[campana] ([ID_CAMPANA]);


GO
PRINT N'Creando Clave externa [dbo].[FK_campana_red_campana]...';


GO
ALTER TABLE [dbo].[campana_red] WITH NOCHECK
    ADD CONSTRAINT [FK_campana_red_campana] FOREIGN KEY ([ID_CAMPANA]) REFERENCES [dbo].[campana] ([ID_CAMPANA]);


GO
PRINT N'Creando Clave externa [dbo].[FK_cliente_campana_campana]...';


GO
ALTER TABLE [dbo].[cliente_campana] WITH NOCHECK
    ADD CONSTRAINT [FK_cliente_campana_campana] FOREIGN KEY ([ID_CAMPANA]) REFERENCES [dbo].[campana] ([ID_CAMPANA]);


GO
PRINT N'Creando Clave externa [dbo].[FK_subcampana_campana]...';


GO
ALTER TABLE [dbo].[subcampana] WITH NOCHECK
    ADD CONSTRAINT [FK_subcampana_campana] FOREIGN KEY ([ID_CAMPANA]) REFERENCES [dbo].[campana] ([ID_CAMPANA]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[campana_monto_minimo]...';


GO
ALTER TABLE [dbo].[campana_monto_minimo] WITH NOCHECK
    ADD FOREIGN KEY ([ID_CAMPANA]) REFERENCES [dbo].[campana] ([ID_CAMPANA]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[campana_tienda]...';


GO
ALTER TABLE [dbo].[campana_tienda] WITH NOCHECK
    ADD FOREIGN KEY ([ID_TIENDA]) REFERENCES [dbo].[tienda] ([ID_TIENDA]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[campana_tienda]...';


GO
ALTER TABLE [dbo].[campana_tienda] WITH NOCHECK
    ADD FOREIGN KEY ([ID_CAMPANA]) REFERENCES [dbo].[campana] ([ID_CAMPANA]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[campana_tienda_multiplicador]...';


GO
ALTER TABLE [dbo].[campana_tienda_multiplicador] WITH NOCHECK
    ADD FOREIGN KEY ([ID_TIENDA]) REFERENCES [dbo].[tienda] ([ID_TIENDA]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[campana_tienda_multiplicador]...';


GO
ALTER TABLE [dbo].[campana_tienda_multiplicador] WITH NOCHECK
    ADD FOREIGN KEY ([ID_CAMPANA]) REFERENCES [dbo].[campana] ([ID_CAMPANA]);


GO
PRINT N'Creando Clave externa [dbo].[FK_cliente_campana_documento_legal_cliente_campana]...';


GO
ALTER TABLE [dbo].[cliente_campana_documento_legal] WITH NOCHECK
    ADD CONSTRAINT [FK_cliente_campana_documento_legal_cliente_campana] FOREIGN KEY ([ID_CLIENTE_CAMPANA]) REFERENCES [dbo].[cliente_campana] ([ID_CLIENTE_CAMPANA]);


GO
PRINT N'Creando Clave externa [dbo].[FK_cliente_campana_documento_legal_campana_documento_legal]...';


GO
ALTER TABLE [dbo].[cliente_campana_documento_legal] WITH NOCHECK
    ADD CONSTRAINT [FK_cliente_campana_documento_legal_campana_documento_legal] FOREIGN KEY ([ID_CAMPANA_DOCUMENTO_LEGAL]) REFERENCES [dbo].[campana_documento_legal] ([ID_CAMPANA_DOCUMENTO_LEGAL]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[cliente_campana_puntos]...';


GO
ALTER TABLE [dbo].[cliente_campana_puntos] WITH NOCHECK
    ADD FOREIGN KEY ([ID_CLIENTE_CAMPANA]) REFERENCES [dbo].[cliente_campana] ([ID_CLIENTE_CAMPANA]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[cliente_campana_residual]...';


GO
ALTER TABLE [dbo].[cliente_campana_residual] WITH NOCHECK
    ADD FOREIGN KEY ([ID_CLIENTE_CAMPANA]) REFERENCES [dbo].[cliente_campana] ([ID_CLIENTE_CAMPANA]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[comprobante]...';


GO
ALTER TABLE [dbo].[comprobante] WITH NOCHECK
    ADD FOREIGN KEY ([ID_TIENDA]) REFERENCES [dbo].[tienda] ([ID_TIENDA]);


GO
PRINT N'Creando Clave externa [dbo].[FK_comprobante_archivo]...';


GO
ALTER TABLE [dbo].[comprobante] WITH NOCHECK
    ADD CONSTRAINT [FK_comprobante_archivo] FOREIGN KEY ([ID_ARCHIVO]) REFERENCES [dbo].[archivo] ([ID_ARCHIVO]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[comprobante]...';


GO
ALTER TABLE [dbo].[comprobante] WITH NOCHECK
    ADD FOREIGN KEY ([ID_CLIENTE_CAMPANA]) REFERENCES [dbo].[cliente_campana] ([ID_CLIENTE_CAMPANA]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[comprobante_puntos]...';


GO
ALTER TABLE [dbo].[comprobante_puntos] WITH NOCHECK
    ADD FOREIGN KEY ([ID_COMPROBANTE]) REFERENCES [dbo].[comprobante] ([ID_COMPROBANTE]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[configuracion_multiplicador]...';


GO
ALTER TABLE [dbo].[configuracion_multiplicador] WITH NOCHECK
    ADD FOREIGN KEY ([ID_CAMPANA_TIENDA]) REFERENCES [dbo].[campana_tienda] ([ID_CAMPANA_TIENDA]);


GO
PRINT N'Creando Clave externa [dbo].[FK_qr_plantilla_tienda]...';


GO
ALTER TABLE [dbo].[qr_plantilla] WITH NOCHECK
    ADD CONSTRAINT [FK_qr_plantilla_tienda] FOREIGN KEY ([ID_TIENDA]) REFERENCES [dbo].[tienda] ([ID_TIENDA]);


GO
PRINT N'Creando Clave externa [dbo].[FK_qr_plantilla_campo_qr_plantilla]...';


GO
ALTER TABLE [dbo].[qr_plantilla_campo] WITH NOCHECK
    ADD CONSTRAINT [FK_qr_plantilla_campo_qr_plantilla] FOREIGN KEY ([ID_QR_PLANTILLA]) REFERENCES [dbo].[qr_plantilla] ([ID_QR_PLANTILLA]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[regla_puntos]...';


GO
ALTER TABLE [dbo].[regla_puntos] WITH NOCHECK
    ADD FOREIGN KEY ([ID_TIENDA]) REFERENCES [dbo].[tienda] ([ID_TIENDA]);


GO
PRINT N'Creando Clave externa restricción sin nombre en [dbo].[regla_puntos]...';


GO
ALTER TABLE [dbo].[regla_puntos] WITH NOCHECK
    ADD FOREIGN KEY ([ID_CAMPANA]) REFERENCES [dbo].[campana] ([ID_CAMPANA]);


GO
PRINT N'Modificando Procedimiento [dbo].[sp_get_campana_por_id]...';


GO
ALTER PROCEDURE [dbo].[sp_get_campana_por_id]
	@ID_CAMPANA	INT
AS
BEGIN

	DECLARE @TOTAL_CLIENTES INT, @LISTA_TIENDAS NVARCHAR(MAX)

	SELECT @TOTAL_CLIENTES = COUNT(*)
	FROM [dbo].[cliente_campana] WITH(NOLOCK)
	WHERE ID_CAMPANA = @ID_CAMPANA

    SELECT @LISTA_TIENDAS = STRING_AGG(CAST(ID_TIENDA AS NVARCHAR(MAX)), ',') 
    FROM [dbo].[campana_tienda] WITH(NOLOCK)
    WHERE ID_CAMPANA = @ID_CAMPANA

	SELECT	
		C.[ID_CAMPANA]
		,C.[ID_EMPRESA]
		,E.[DESCRIPCION] as DESCRIPCION_EMPRESA
		,E.[PATH_URL] as PATH_URL_EMPRESA
		,C.[NOMBRE]
		,C.[PATH_URL]
		,C.[DESCRIPCION]
		,C.[TIPO_CAMPANA]
        ,C.[TIPO_CAMPANA_ESTRATEGICA]
		,C.[FECHA_INICIO]
		,C.[FECHA_FIN]
		,C.[ID_CAMPANA_ESTADO]
		,CE.[DESCRIPCION] as DESCRIPCION_CAMPANA_ESTADO
		,C.[ID_ARCHIVO_TYC]
		,TYC.NOMBRE as NOMBRE_TYC
		,TYC.TIPO_MIME as TIPO_MIME_TYC
		,C.[OBLIGATORIO_TYC]
		,C.[ID_ARCHIVO_LEY]
		,L.TIPO_MIME as TIPO_MIME_LEY
		,C.[OBLIGATORIO_LEY]
		,C.[HABILITAR_LEY_EXTRA]
		,C.[ID_ARCHIVO_LEY_EXTRA]
		,LE.TIPO_MIME as TIPO_MIME_LEY_EXTRA
		,C.[OBLIGATORIO_LEY_EXTRA]
		,C.[ID_ARCHIVO_FONDO]
		,F.NOMBRE as NOMBRE_FONDO
		,C.[ID_ARCHIVO_FONDO_BANNER]
		,B.NOMBRE as NOMBRE_FONDO_BANNER
		,F.TIPO_MIME as TIPO_MIME_FONDO
		,C.[MENSAJE_EXITO]
		,C.[MAXIMO_CLIENTES]
		,C.[MENSAJE_MAXIMO_CLIENTES]
		,C.[COD_DEPARTAMENTO]
		,C.[COD_PROVINCIA]
		,C.[NOTIFICACION_AUTOMATICA]
		,ISNULL(C.HABILITAR_SUBCAMPANAS,0) as HABILITAR_SUBCAMPANAS
		,@TOTAL_CLIENTES as TOTAL_CLIENTES
		,MULTI_REGISTRO_CLIENTES
		,C.[HAS_STEPS]
        ,C.[HABILITAR_SPONSORS]
        ,C.[TITULO_SPONSORS]
        ,C.[DESCRIPCION_SPONSORS]
		,C.[HABILITAR_PUNTOS]
		,C.[HABILITAR_CUPONES]
        ,@LISTA_TIENDAS AS LISTA_TIENDAS
	FROM [dbo].[campana] C WITH(NOLOCK)
	LEFT JOIN [dbo].[empresa] E WITH(NOLOCK) on C.ID_EMPRESA = E.ID_EMPRESA
	LEFT JOIN [dbo].[campana_estado] CE WITH(NOLOCK) on C.ID_CAMPANA_ESTADO = CE.ID_CAMPANA_ESTADO
	LEFT JOIN [dbo].[archivo] TYC WITH(NOLOCK) ON C.ID_ARCHIVO_TYC = TYC.ID_ARCHIVO
	LEFT JOIN [dbo].[archivo] L WITH(NOLOCK) ON C.ID_ARCHIVO_LEY = L.ID_ARCHIVO
	LEFT JOIN [dbo].[archivo] LE WITH(NOLOCK) ON C.ID_ARCHIVO_LEY_EXTRA = LE.ID_ARCHIVO
	LEFT JOIN [dbo].[archivo] F WITH(NOLOCK) ON C.ID_ARCHIVO_FONDO = F.ID_ARCHIVO
	LEFT JOIN [dbo].[archivo] B WITH(NOLOCK) ON C.ID_ARCHIVO_FONDO_BANNER = B.ID_ARCHIVO
	WHERE C.ID_CAMPANA = @ID_CAMPANA

END;
GO
PRINT N'Modificando Procedimiento [dbo].[sp_get_campana_por_id_web]...';


GO
-- =============================================
-- Author:          Junior Vargas
-- Create date:		22/06/2022
-- Description:     Obtener campana 
-- EXEC [dbo].[sp_get_campana_por_id_web] 44
-- =============================================
ALTER PROCEDURE [dbo].[sp_get_campana_por_id_web]
	@ID_CAMPANA	INT
AS
BEGIN

	DECLARE @ACTUAL_CLIENTES INT, 
		@CUENTA_GOOGLE bit,
		@CUENTA_FACEBOOK bit,
		@TYC_TEXTO_ACEPTAR	nvarchar(500),
		@TYC_TEXTO_LINK	 nvarchar(500),
		@LEY_TEXTO_ACEPTAR  nvarchar(500),
		@LEY_TEXTO_LINK    nvarchar(500),
		@LEY_EXTRA_TEXTO_ACEPTAR  nvarchar(500),
		@LEY_EXTRA_TEXTO_LINK  nvarchar(500),
		@MENSAJE_PREVIO_GUARDAR  nvarchar(500),
		@MENSAJE_CONFIRMAR_CORREO  nvarchar(500),
        @SPONSORS NVARCHAR(500),
        @TIENE_CUPONES BIT = 0

	SELECT top 1 @CUENTA_GOOGLE = ISNULL(VALOR, 0) FROM [dbo].[parametro] WHERE CODIGO = 'CUENTA_GOOGLE'
	SELECT top 1 @CUENTA_FACEBOOK = ISNULL(VALOR, 0) FROM [dbo].[parametro] WHERE CODIGO = 'CUENTA_FACEBOOK'
	SELECT top 1 @TYC_TEXTO_ACEPTAR = ISNULL(VALOR, '') FROM [dbo].[parametro] WHERE CODIGO = 'TYC_TEXTO_ACEPTAR'
	SELECT top 1 @TYC_TEXTO_LINK = ISNULL(VALOR, '') FROM [dbo].[parametro] WHERE CODIGO = 'TYC_TEXTO_LINK'
	SELECT top 1 @LEY_TEXTO_ACEPTAR = ISNULL(VALOR, '') FROM [dbo].[parametro] WHERE CODIGO = 'LEY_TEXTO_ACEPTAR'
	SELECT top 1 @LEY_TEXTO_LINK = ISNULL(VALOR, '') FROM [dbo].[parametro] WHERE CODIGO = 'LEY_TEXTO_LINK'
	SELECT top 1 @LEY_EXTRA_TEXTO_ACEPTAR = ISNULL(VALOR, '') FROM [dbo].[parametro] WHERE CODIGO = 'LEY_EXTRA_TEXTO_ACEPTAR'
	SELECT top 1 @LEY_EXTRA_TEXTO_LINK = ISNULL(VALOR, '') FROM [dbo].[parametro] WHERE CODIGO = 'LEY_EXTRA_TEXTO_LINK'
	SELECT top 1 @MENSAJE_PREVIO_GUARDAR = ISNULL(VALOR, '') FROM [dbo].[parametro] WHERE CODIGO = 'MENSAJE_PREVIO_GUARDAR'
	SELECT top 1 @MENSAJE_CONFIRMAR_CORREO = ISNULL(VALOR, '') FROM [dbo].[parametro] WHERE CODIGO = 'MENSAJE_CONFIRMAR_CORREO'

    SELECT @SPONSORS = STRING_AGG(s.ID_ARCHIVO_LOGO, ', ')
    FROM sponsor s
    JOIN campana_sponsor cs ON s.ID_SPONSOR = cs.ID_SPONSOR
    WHERE cs.ID_CAMPANA = @ID_CAMPANA AND cs.VIGENTE = 1

    IF(SELECT COUNT(*) FROM [dbo].[campana_cupon_tienda] WHERE ID_CAMPANA = @ID_CAMPANA) > 0
    BEGIN
    SET @TIENE_CUPONES = 1
    END
	

	SELECT @ACTUAL_CLIENTES = COUNT(*)
	FROM [dbo].[cliente_campana] WITH(NOLOCK)
	WHERE ID_CAMPANA = @ID_CAMPANA

	SELECT	
		C.[ID_CAMPANA]
		,C.[ID_EMPRESA]
		,E.[DESCRIPCION] as DESCRIPCION_EMPRESA
		,E.[PATH_URL] as PATH_URL_EMPRESA
		,C.[NOMBRE]
		,C.[PATH_URL]
		,C.[DESCRIPCION]
		,C.[TIPO_CAMPANA]
        ,C.[TIPO_CAMPANA_ESTRATEGICA]
		,C.[FECHA_INICIO]
		,C.[FECHA_FIN]
		,C.[ID_CAMPANA_ESTADO]
		,CE.[DESCRIPCION] as DESCRIPCION_CAMPANA_ESTADO
		,C.[ID_ARCHIVO_TYC]
		,C.[OBLIGATORIO_TYC]
		,C.[ID_ARCHIVO_LEY]
		,C.[OBLIGATORIO_LEY]
		,C.[HABILITAR_LEY_EXTRA]
		,C.[ID_ARCHIVO_LEY_EXTRA]
		,C.[OBLIGATORIO_LEY_EXTRA]
		,C.[ID_ARCHIVO_FONDO]
		,C.[ID_ARCHIVO_FONDO_BANNER]--<!-- ADD EACN(CSTI) 21/10/2024 -->
		,C.[MENSAJE_EXITO]
		,C.[MAXIMO_CLIENTES]
		,@ACTUAL_CLIENTES as ACTUAL_CLIENTES
		,C.[MENSAJE_MAXIMO_CLIENTES]
		,C.[COD_DEPARTAMENTO]
		,C.[COD_PROVINCIA]
		,C.[NOTIFICACION_AUTOMATICA]
		,C.[HAS_STEPS]
		,C.[TITULO_SPONSORS]
		,C.[DESCRIPCION_SPONSORS]
		,isnull(C.HABILITAR_SUBCAMPANAS, 0) as HABILITAR_SUBCAMPANAS
		,@CUENTA_GOOGLE as CUENTA_GOOGLE
		,@CUENTA_FACEBOOK as CUENTA_FACEBOOK
		,@TYC_TEXTO_ACEPTAR	 as TYC_TEXTO_ACEPTAR
		,@TYC_TEXTO_LINK	as TYC_TEXTO_LINK
		,@LEY_TEXTO_ACEPTAR  as LEY_TEXTO_ACEPTAR
		,@LEY_TEXTO_LINK    as LEY_TEXTO_LINK	
		,@LEY_EXTRA_TEXTO_ACEPTAR  as LEY_EXTRA_TEXTO_ACEPTAR
		,@LEY_EXTRA_TEXTO_LINK   as LEY_EXTRA_TEXTO_LINK
		,@MENSAJE_PREVIO_GUARDAR as MENSAJE_PREVIO_GUARDAR
		,@MENSAJE_CONFIRMAR_CORREO as MENSAJE_CONFIRMAR_CORREO
        ,@SPONSORS as SPONSORS
        ,@TIENE_CUPONES as TIENE_CUPONES
        ,C.HABILITAR_PUNTOS  as TIENE_PUNTOS
	FROM [dbo].[campana] C WITH(NOLOCK)
	INNER JOIN [dbo].[empresa] E WITH(NOLOCK) on C.ID_EMPRESA = E.ID_EMPRESA
	INNER JOIN [dbo].[campana_estado] CE WITH(NOLOCK) on C.ID_CAMPANA_ESTADO = CE.ID_CAMPANA_ESTADO
	WHERE C.ID_CAMPANA = @ID_CAMPANA

	
END;
GO
PRINT N'Modificando Procedimiento [dbo].[sp_get_campanas]...';


GO
-- =============================================
-- Author:          Junior Vargas
-- Create date:		18/06/2022
-- Description:     Listar campanas 
-- EXEC [dbo].[sp_get_campanas] 10, 0, null, null, null, null, null, null
-- =============================================
ALTER PROCEDURE [dbo].[sp_get_campanas]
	@PAGE_SIZE			INT,
	@PAGE_INDEX			INT,
	@ID_EMPRESA  		INT = null,
    @NOMBRE				NVARCHAR(100) = null,
    @TIPO_CAMPANA		INT = NULL,
    @FECHA_INICIO		DATETIME = NULL,
    @FECHA_FIN			DATETIME = NULL,
    @ID_CAMPANA_ESTADO	INT = NULL
AS
BEGIN
	;WITH DataCampanas as (		
		SELECT ROW_NUMBER() OVER(ORDER BY C.ID_CAMPANA DESC) AS ROW_INDEX 
			,C.[ID_CAMPANA]
			,C.[ID_EMPRESA]
			,E.[DESCRIPCION] as DESCRIPCION_EMPRESA
			,C.[NOMBRE]
			,C.[PATH_URL]
			,C.[DESCRIPCION]
			,C.[TIPO_CAMPANA]
			,C.[TIPO_CAMPANA_ESTRATEGICA]
			,C.[FECHA_INICIO]
			,C.[FECHA_FIN]
			,C.[ID_CAMPANA_ESTADO]
			,CE.[DESCRIPCION] as DESCRIPCION_CAMPANA_ESTADO
			,C.[ID_ARCHIVO_TYC]
			,C.[OBLIGATORIO_TYC]
			,C.[ID_ARCHIVO_LEY]
			,C.[OBLIGATORIO_LEY]
			,C.[HABILITAR_LEY_EXTRA]
			,C.[ID_ARCHIVO_LEY_EXTRA]
			,C.[OBLIGATORIO_LEY_EXTRA]
			,C.[ID_ARCHIVO_FONDO]
			,C.[MENSAJE_EXITO]
			,C.[MAXIMO_CLIENTES]
			,C.[MENSAJE_MAXIMO_CLIENTES]
			,C.[COD_DEPARTAMENTO]
			,C.[COD_PROVINCIA]
		FROM [dbo].[campana] C WITH(NOLOCK)
		INNER JOIN [dbo].[empresa] E WITH(NOLOCK) on C.ID_EMPRESA = E.ID_EMPRESA
		INNER JOIN [dbo].[campana_estado] CE WITH(NOLOCK) on C.ID_CAMPANA_ESTADO = CE.ID_CAMPANA_ESTADO
		WHERE
			C.[ID_CAMPANA_ESTADO] != 4 AND (C.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA is null)
			AND (C.NOMBRE LIKE '%' + ltrim(rtrim(@NOMBRE)) + '%' OR @NOMBRE is null)
    	    AND (C.TIPO_CAMPANA = @TIPO_CAMPANA OR @TIPO_CAMPANA is null)
			AND
			 (
			  --solo fecha inicio
			  (
				@FECHA_INICIO is not null and @FECHA_FIN is null and 
					(
						(C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO >= @FECHA_INICIO)
					)
			  )
			  OR  --solo fecha fin
			  (
				@FECHA_INICIO is null and @FECHA_FIN is not null and
					(
						(C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN > @FECHA_FIN)
					)
			  )
			  OR  --rango
			  (
				@FECHA_INICIO is not null and @FECHA_FIN is not null and
					(
						(C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_FIN < DATEADD(Day, 1, @FECHA_FIN))
					)
			  )
			  OR --ninguno
			  (
				@FECHA_INICIO is null and @FECHA_FIN is null
			  )
			  	  
			  )
            AND (C.ID_CAMPANA_ESTADO = @ID_CAMPANA_ESTADO OR @ID_CAMPANA_ESTADO is null)
	)
	, CountDataCampanas AS (SELECT COUNT(*) AS ROWS_COUNT FROM DataCampanas)

	SELECT 
		A.ROW_INDEX
		,B.ROWS_COUNT
		,@PAGE_SIZE AS PAGE_SIZE
		,@PAGE_INDEX AS PAGE_INDEX
		,A.[ID_CAMPANA]
		,A.[ID_EMPRESA]
		,A.DESCRIPCION_EMPRESA
		,A.[NOMBRE]
		,A.[PATH_URL]
		,A.[DESCRIPCION]
		,A.[TIPO_CAMPANA]
		,A.[TIPO_CAMPANA_ESTRATEGICA]
		,A.[FECHA_INICIO]
		,A.[FECHA_FIN]
		,A.[ID_CAMPANA_ESTADO]
		,A.DESCRIPCION_CAMPANA_ESTADO
		,A.[ID_ARCHIVO_TYC]
		,A.[OBLIGATORIO_TYC]
		,A.[ID_ARCHIVO_LEY]
		,A.[OBLIGATORIO_LEY]
		,A.[HABILITAR_LEY_EXTRA]
		,A.[ID_ARCHIVO_LEY_EXTRA]
		,A.[OBLIGATORIO_LEY_EXTRA]
		,A.[ID_ARCHIVO_FONDO]
		,A.[MENSAJE_EXITO]
		,A.[MAXIMO_CLIENTES]
		,A.[MENSAJE_MAXIMO_CLIENTES]
		,A.[COD_DEPARTAMENTO]
		,A.[COD_PROVINCIA]
	FROM DataCampanas A
	CROSS JOIN CountDataCampanas B
	ORDER BY A.ID_CAMPANA DESC

	OFFSET ((@PAGE_INDEX + 1) - 1) * @PAGE_SIZE ROWS
	FETCH NEXT @PAGE_SIZE ROWS ONLY
	
END
GO
PRINT N'Modificando Procedimiento [dbo].[sp_get_campanas_activas]...';


GO
-- =============================================
-- Author:          Junior Vargas
-- Create date:		11/07/2022
-- Description:     Listar campanas activas
-- EXEC [dbo].[sp_get_campanas_activas] 1000,0,null,null,null,null,null
-- =============================================
ALTER PROCEDURE [dbo].[sp_get_campanas_activas]
	@PAGE_SIZE					INT,
	@PAGE_INDEX					INT,
	@TIPO_CAMPANA				INT = NULL,
	@TIPO_CAMPANA_ESTRATEGICA	INT = NULL,
	@ID_EMPRESA					INT = NULL,
    @ID_CAMPANA					INT = NULL,
    @FECHA_INICIO				DATETIME = NULL,
    @FECHA_FIN					DATETIME = NULL
AS
BEGIN

	SET @FECHA_FIN = DATEADD(Day, 1, @FECHA_FIN)

	DECLARE @tabla TABLE (ID_CAMPANA INT, DESCRIPCION_EMPRESA nvarchar(100), NOMBRE nvarchar(100), PATH_URL nvarchar(100), DESCRIPCION nvarchar(150), 
						TIPO_CAMPANA INT, TIPO_CAMPANA_ESTRATEGICA INT, FECHA_INICIO datetime, FECHA_FIN datetime, ID_CAMPANA_ESTADO int, 
						MAXIMO_CLIENTES int, NOTIFICACION_AUTOMATICA bit)
	
	INSERT INTO @tabla
	SELECT C.ID_CAMPANA
			,E.[DESCRIPCION]
			,C.[NOMBRE]
			,C.[PATH_URL]
			,C.[DESCRIPCION]
			,C.[TIPO_CAMPANA]
			,C.[TIPO_CAMPANA_ESTRATEGICA]
			,C.[FECHA_INICIO]
			,C.[FECHA_FIN]
			,C.[ID_CAMPANA_ESTADO]
			,C.[MAXIMO_CLIENTES]
			,C.NOTIFICACION_AUTOMATICA
		FROM [dbo].[campana] C WITH(NOLOCK)
		INNER JOIN [dbo].[empresa] E WITH(NOLOCK) on C.ID_EMPRESA = E.ID_EMPRESA
		WHERE C.[ID_CAMPANA_ESTADO] != 4
			AND (C.TIPO_CAMPANA = @TIPO_CAMPANA OR @TIPO_CAMPANA = 0 OR @TIPO_CAMPANA is null)
			AND (C.TIPO_CAMPANA_ESTRATEGICA = @TIPO_CAMPANA_ESTRATEGICA OR @TIPO_CAMPANA_ESTRATEGICA = 0 OR @TIPO_CAMPANA_ESTRATEGICA is null)
			AND (C.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA = 0 OR @ID_EMPRESA is null)
			AND (C.ID_CAMPANA = @ID_CAMPANA OR @ID_CAMPANA = 0 OR @ID_CAMPANA is null)
			AND  (
			  --solo fecha inicio
			  (
				@FECHA_INICIO is not null and @FECHA_FIN is null and 
					(
						(C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO >= @FECHA_INICIO)
					)
			  )
			  OR  --solo fecha fin
			  (
				@FECHA_INICIO is null and @FECHA_FIN is not null and
					(
						(C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN > @FECHA_FIN)
					)
			  )
			  OR  --rango
			  (
				@FECHA_INICIO is not null and @FECHA_FIN is not null and
					(
						(C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_FIN < DATEADD(Day, 1, @FECHA_FIN))
					)
			  )
			  OR --ninguno
			  (
				@FECHA_INICIO is null and @FECHA_FIN is null
			  )
			  	  
			  )

	;WITH DataCampanas as (		
		SELECT ROW_NUMBER() OVER(ORDER BY C.ID_CAMPANA DESC) AS ROW_INDEX 
			,C.ID_CAMPANA
			,C.DESCRIPCION_EMPRESA
			,C.[NOMBRE]
			,C.[PATH_URL]
			,C.[DESCRIPCION]
			,C.[TIPO_CAMPANA]
			,C.[TIPO_CAMPANA_ESTRATEGICA]
			,C.[FECHA_INICIO]
			,C.[FECHA_FIN]
			,C.[ID_CAMPANA_ESTADO]
			,C.[MAXIMO_CLIENTES]
			,C.NOTIFICACION_AUTOMATICA
			,count(CC.ID_CAMPANA) as TOTAL_CLIENTES			
			,(select count(cc2.ID_CLIENTE) from
				(select cc1.ID_CLIENTE, min(cc1.FECHA_CREACION) as FECHA_CREACION
				from cliente_campana cc1 WITH(NOLOCK)
				group by cc1.ID_CLIENTE) as A
				inner join cliente_campana cc2 WITH(NOLOCK) on cc2.ID_CLIENTE = A.ID_CLIENTE and cc2.FECHA_CREACION = A.FECHA_CREACION
				inner join cliente cc3 WITH(NOLOCK) on cc3.ID_CLIENTE = A.ID_CLIENTE
				where cc3.USUARIO_CREACION not like '%INICIAL%' and cc2.ID_CAMPANA = C.ID_CAMPANA) as CLIENTES_NUEVOS
		FROM @tabla C 
		LEFT JOIN [dbo].[cliente_campana] CC WITH(NOLOCK) on C.ID_CAMPANA = CC.ID_CAMPANA
		--WHERE CC.CONFIRMADO = 1 OR CC.ID_CLIENTE_CAMPANA is null
		GROUP BY C.ID_CAMPANA, C.DESCRIPCION_EMPRESA, C.NOMBRE, C.PATH_URL, C.DESCRIPCION, C.TIPO_CAMPANA, C.TIPO_CAMPANA_ESTRATEGICA
			, C.FECHA_INICIO, C.FECHA_FIN, C.ID_CAMPANA_ESTADO, C.MAXIMO_CLIENTES,C.NOTIFICACION_AUTOMATICA
	)
	, CountDataCampanas AS (SELECT COUNT(*) AS ROWS_COUNT FROM DataCampanas)

	SELECT 
		A.ROW_INDEX
		,B.ROWS_COUNT
		,@PAGE_SIZE AS PAGE_SIZE
		,@PAGE_INDEX AS PAGE_INDEX
		,A.DESCRIPCION_EMPRESA
		,A.ID_CAMPANA
		,A.[NOMBRE]
		,A.[PATH_URL]
		,A.[DESCRIPCION]
		,A.[TIPO_CAMPANA]
		,A.[TIPO_CAMPANA_ESTRATEGICA]
		,A.[FECHA_INICIO]
		,A.[FECHA_FIN]
		,A.[ID_CAMPANA_ESTADO]
		,A.[MAXIMO_CLIENTES]
		,A.TOTAL_CLIENTES
		,A.CLIENTES_NUEVOS
		,A.NOTIFICACION_AUTOMATICA
	FROM DataCampanas A
	CROSS JOIN CountDataCampanas B
	ORDER BY A.ID_CAMPANA DESC

	OFFSET ((@PAGE_INDEX + 1) - 1) * @PAGE_SIZE ROWS
	FETCH NEXT @PAGE_SIZE ROWS ONLY
	
END
GO
PRINT N'Modificando Procedimiento [dbo].[sp_get_campanas_activas_descarga]...';


GO
-- =============================================
-- Author:          Junior Vargas
-- Create date:		11/07/2022
-- Description:     Listar campanas activas descarga
-- EXEC [dbo].[sp_get_campanas_activas_descarga] 
-- =============================================
ALTER PROCEDURE [dbo].[sp_get_campanas_activas_descarga]
	@TIPO_CAMPANA		INT = NULL,
	@ID_EMPRESA			INT = NULL,
    @ID_CAMPANA			INT = NULL,
    @FECHA_INICIO		DATETIME = NULL,
    @FECHA_FIN			DATETIME = NULL
AS
BEGIN

	DECLARE @tabla TABLE (ID_CAMPANA INT, DESCRIPCION_EMPRESA nvarchar(100), NOMBRE nvarchar(100), CODIGO_CAMPANA nvarchar(100),PATH_URL nvarchar(max), DESCRIPCION nvarchar(150), 
						TIPO_CAMPANA INT, FECHA_INICIO datetime, FECHA_FIN datetime, ID_CAMPANA_ESTADO int, MAXIMO_CLIENTES int, DESCRIPCION_CAMPANA_ESTADO nvarchar(50),
						MENSAJE_MAXIMO_CLIENTES nvarchar(250), REDES nvarchar(200), MENSAJE_EXITO nvarchar(250), 
						--NOMBRE_TYC nvarchar(100), 
						--OBLIGATORIO_TYC bit, 
						--NOMBRE_LEY nvarchar(100),
						--OBLIGATORIO_LEY bit, 
						--NOMBRE_LEY_EXTRA nvarchar(100), 
						--OBLIGATORIO_LEY_EXTRA bit, 
						NOMBRE_FONDO nvarchar(100),NOTIFICACION_AUTOMATICA bit, CAMPOS_REQUERIDOS nvarchar(1000),
						DEPARTAMENTO NVARCHAR(100), PROVINCIA NVARCHAR(100),MULTI_REGISTRO_CLIENTES bit) --<!-- ADD EACN(CSTI) 21/10/2024 -->
	
	INSERT INTO @tabla
	SELECT C.ID_CAMPANA
			,E.[DESCRIPCION]
			,C.[NOMBRE]
			,C.[PATH_URL]
			,E.PATH_URL + '/' + C.[PATH_URL]
			,C.[DESCRIPCION]
			,C.[TIPO_CAMPANA]
			,C.[FECHA_INICIO]
			,C.[FECHA_FIN]
			,C.[ID_CAMPANA_ESTADO]
			,C.[MAXIMO_CLIENTES]
			,CE.DESCRIPCION
			,C.MENSAJE_MAXIMO_CLIENTES
			,(SELECT STUFF(
					(SELECT ', ' + R.DESCRIPCION
					FROM [dbo].[red] R
					INNER JOIN [dbo].[campana_red] CR ON R.ID_RED = CR.ID_RED
					WHERE CR.ID_CAMPANA = C.ID_CAMPANA
					order by R.ID_RED
					FOR XML PATH ('')),
				1,2, ''))
			,C.MENSAJE_EXITO
			--,TC.NOMBRE
			--,C.OBLIGATORIO_TYC
			--,L.DESCRIPCION
			--,C.OBLIGATORIO_LEY
			--,LX.DESCRIPCION
			--,C.OBLIGATORIO_LEY_EXTRA
			,F.NOMBRE
			,C.NOTIFICACION_AUTOMATICA
			,(SELECT STUFF(
					(SELECT ', ' + CDC.ETIQUETA
					FROM [dbo].[campana_datos_captura] CDC
					WHERE CDC.ID_CAMPANA = C.ID_CAMPANA
					AND CDC.VIGENTE = 1
					order by CDC.ID_CAMPANA_DATOS_CAPTURA
					FOR XML PATH ('')),
				1,2, ''))
			,U.DEPARTAMENTO
			,U.PROVINCIA
			,C.MULTI_REGISTRO_CLIENTES
		FROM [dbo].[campana] C WITH(NOLOCK)
		LEFT JOIN [dbo].[empresa] E WITH(NOLOCK) on C.ID_EMPRESA = E.ID_EMPRESA
		LEFT JOIN [dbo].[campana_estado] CE WITH(NOLOCK) ON C.ID_CAMPANA_ESTADO = CE.ID_CAMPANA_ESTADO
		LEFT JOIN [dbo].[archivo] TC WITH(NOLOCK) ON C.ID_ARCHIVO_TYC = TC.ID_ARCHIVO
		LEFT JOIN [dbo].[archivo] L WITH(NOLOCK) ON C.ID_ARCHIVO_LEY = L.ID_ARCHIVO
		LEFT JOIN [dbo].[archivo] LX WITH(NOLOCK) ON C.ID_ARCHIVO_LEY_EXTRA = LX.ID_ARCHIVO
		LEFT JOIN [dbo].[archivo] F WITH(NOLOCK) ON C.ID_ARCHIVO_FONDO = F.ID_ARCHIVO
		LEFT JOIN [dbo].[ubigeo] U WITH(NOLOCK) on C.COD_DEPARTAMENTO = U.COD_DEPARTAMENTO and C.COD_PROVINCIA = U.COD_PROVINCIA and U.COD_DISTRITO = '01'
		WHERE C.[ID_CAMPANA_ESTADO] != 4
			AND (C.TIPO_CAMPANA = @TIPO_CAMPANA OR @TIPO_CAMPANA = 0 OR @TIPO_CAMPANA is null)
			AND (C.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA = 0 OR @ID_EMPRESA is null)
			AND (C.ID_CAMPANA = @ID_CAMPANA OR @ID_CAMPANA = 0 OR @ID_CAMPANA is null)
			AND  (
			  --solo fecha inicio
			  (
				@FECHA_INICIO is not null and @FECHA_FIN is null and 
					(
						(C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO >= @FECHA_INICIO)
					)
			  )
			  OR  --solo fecha fin
			  (
				@FECHA_INICIO is null and @FECHA_FIN is not null and
					(
						(C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN > @FECHA_FIN)
					)
			  )
			  OR  --rango
			  (
				@FECHA_INICIO is not null and @FECHA_FIN is not null and
					(
						(C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_FIN < DATEADD(Day, 1, @FECHA_FIN))
					)
			  )
			  OR --ninguno
			  (
				@FECHA_INICIO is null and @FECHA_FIN is null
			  )
			  	  
			  )

	SELECT C.ID_CAMPANA
			,C.DESCRIPCION_EMPRESA
			,C.[NOMBRE]
			,C.CODIGO_CAMPANA
			,C.[PATH_URL]
			,C.[DESCRIPCION]
			,C.[TIPO_CAMPANA]
			,C.[FECHA_INICIO]
			,C.[FECHA_FIN]
			,C.[ID_CAMPANA_ESTADO]
			,C.[MAXIMO_CLIENTES]
			,C.DESCRIPCION_CAMPANA_ESTADO
			,C.MENSAJE_MAXIMO_CLIENTES
			,C.REDES
			,C.MENSAJE_EXITO
			--,C.NOMBRE_TYC
			--,C.OBLIGATORIO_TYC
			--,C.NOMBRE_LEY
			--,C.OBLIGATORIO_LEY
			--,C.NOMBRE_LEY_EXTRA
			--,C.OBLIGATORIO_LEY_EXTRA
			,C.NOMBRE_FONDO
			,C.NOTIFICACION_AUTOMATICA
			,C.CAMPOS_REQUERIDOS
			,count(CC.ID_CAMPANA) as TOTAL_CLIENTES
			,(select count(cc2.ID_CLIENTE) from
				(select cc1.ID_CLIENTE, min(cc1.FECHA_CREACION) as FECHA_CREACION
				from cliente_campana cc1 WITH(NOLOCK)
				group by cc1.ID_CLIENTE) as A
				inner join cliente_campana cc2 WITH(NOLOCK) on cc2.ID_CLIENTE = A.ID_CLIENTE and cc2.FECHA_CREACION = A.FECHA_CREACION
				inner join cliente cc3 WITH(NOLOCK) on cc3.ID_CLIENTE = A.ID_CLIENTE
				where cc3.USUARIO_CREACION not like '%INICIAL%' and cc2.ID_CAMPANA = C.ID_CAMPANA) as CLIENTES_NUEVOS
			,sum(CASE isnull(len(CC.ID_CLIENTE_CAMPANA), 0) WHEN 0 then 0 else (CASE isnull(len(CC.DIRECCION), 0) WHEN 0 THEN (CASE isnull(len(CC.CORREO), 0) WHEN 0 THEN (CASE isnull(len(CC.CELULAR), 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 1 END) ELSE 1 END) end)  as UN_DATO 
			,sum(CASE isnull(len(CC.ID_CLIENTE_CAMPANA), 0) WHEN 0 then 0 else (CASE isnull(len(CC.DIRECCION), 0) WHEN 0 THEN 0 ELSE 1 END) end)  as CON_DIRECCION 
			,sum(CASE isnull(len(CC.ID_CLIENTE_CAMPANA), 0) WHEN 0 then 0 else (CASE isnull(len(CC.CORREO), 0) WHEN 0 THEN 0 ELSE 1 END) end)  as CON_CORREO 
			,sum(CASE isnull(len(CC.ID_CLIENTE_CAMPANA), 0) WHEN 0 then 0 else (CASE isnull(len(CC.CELULAR), 0) WHEN 0 THEN 0 ELSE 1 END) end)  as CON_CELULAR
			,sum(case WHEN datepart(hour,CC.FECHA_CREACION) <9 then 1 else 0 end) as TRAMO_A
			,sum(case WHEN datepart(hour,CC.FECHA_CREACION) >8 and datepart(hour,CC.FECHA_CREACION) < 13 then 1 else 0 end) as TRAMO_B
			,sum(case WHEN datepart(hour,CC.FECHA_CREACION) >12 and datepart(hour,CC.FECHA_CREACION) < 17 then 1 else 0 end) as TRAMO_C
			,sum(case WHEN datepart(hour,CC.FECHA_CREACION) >16 and datepart(hour,CC.FECHA_CREACION) < 21 then 1 else 0 end) as TRAMO_D
			,sum(case WHEN datepart(hour,CC.FECHA_CREACION) >20 then 1 else 0 end) as TRAMO_E
			,C.DEPARTAMENTO
			,C.PROVINCIA
			,C.MULTI_REGISTRO_CLIENTES --<!-- ADD EACN(CSTI) 21/10/2024 -->
		FROM @tabla C 
		LEFT JOIN [dbo].[cliente_campana] CC WITH(NOLOCK) on C.ID_CAMPANA = CC.ID_CAMPANA
		--WHERE CC.CONFIRMADO = 1 OR CC.ID_CLIENTE_CAMPANA is null
		GROUP BY C.ID_CAMPANA, C.DESCRIPCION_EMPRESA, C.NOMBRE,C.CODIGO_CAMPANA, C.PATH_URL, C.DESCRIPCION, C.TIPO_CAMPANA
			, C.FECHA_INICIO, C.FECHA_FIN, C.ID_CAMPANA_ESTADO, C.MAXIMO_CLIENTES, C.DESCRIPCION_CAMPANA_ESTADO
			, C.MENSAJE_MAXIMO_CLIENTES, C.REDES, C.MENSAJE_EXITO
			--, C.NOMBRE_TYC, C.OBLIGATORIO_TYC, C.NOMBRE_LEY, C.OBLIGATORIO_LEY, C.NOMBRE_LEY_EXTRA, C.OBLIGATORIO_LEY_EXTRA
			, C.NOMBRE_FONDO, C.NOTIFICACION_AUTOMATICA, C.CAMPOS_REQUERIDOS,C.DEPARTAMENTO,C.PROVINCIA,C.MULTI_REGISTRO_CLIENTES
		ORDER BY C.ID_CAMPANA DESC
END
GO
PRINT N'Modificando Procedimiento [dbo].[sp_insert_campana]...';


GO
-- =============================================
-- Author:          Junior Vargas
-- Create date:		17/05/2022
-- Description:     Insert campaña
-- EXEC [dbo].[sp_insert_campana] 
-- =============================================
ALTER PROCEDURE [dbo].[sp_insert_campana]
	@ID_EMPRESA					INT,
	@NOMBRE						NVARCHAR(100),
	@PATH_URL					NVARCHAR(100),
	@DESCRIPCION				NVARCHAR(150),
	@TIPO_CAMPANA				INT,
    @TIPO_CAMPANA_ESTRATEGICA	INT = 2,
	@FECHA_INICIO				DATETIME,
	@FECHA_FIN					DATETIME,
	@ID_ARCHIVO_TYC				INT = NULL,
    @OBLIGATORIO_TYC			BIT = NULL,
    @ID_ARCHIVO_LEY				INT = NULL,
    @OBLIGATORIO_LEY			BIT = NULL,
	@HABILITAR_LEY_EXTRA		BIT = NULL,
    @ID_ARCHIVO_LEY_EXTRA		INT = NULL,
    @OBLIGATORIO_LEY_EXTRA		BIT = NULL,
    @ID_ARCHIVO_FONDO			INT,
	@ID_ARCHIVO_FONDO_BANNER 	INT,
    @MENSAJE_EXITO				NVARCHAR(250),
    @MAXIMO_CLIENTES			INT,
    @MENSAJE_MAXIMO_CLIENTES	NVARCHAR(250),
    @COD_DEPARTAMENTO			NVARCHAR(10),
    @COD_PROVINCIA				NVARCHAR(10),
	@NOTIFICACION_AUTOMATICA 	BIT,
	@MULTI_REGISTRO_CLIENTES 	BIT,
	@HABILITAR_SUBCAMPANAS		BIT,
    @USUARIO_CREACION			NVARCHAR(100),
    @HAS_STEPS 					BIT,
    @HABILITAR_SPONSORS			BIT,
	@TITULO_SPONSORS     		NVARCHAR(100) = NULL,
	@DESCRIPCION_SPONSORS 		NVARCHAR(300) = NULL,
    @HABILITAR_PUNTOS           BIT = NULL,
    @HABILITAR_CUPONES          BIT = NULL,
	@ID_CAMPANA					INT OUTPUT
AS
BEGIN
	INSERT INTO [dbo].[auditoria_sp_parametros] (
		SP_NAME,
		PARAM_NAME,
		PARAM_VALUE,
		USUARIO,
		ENTIDAD_ID
	)
	VALUES (
		OBJECT_NAME(@@PROCID),
		'HAS_STEPS',
		CAST(ISNULL(@HAS_STEPS, 'NULL') AS NVARCHAR),
		NULL,
		@ID_CAMPANA -- o NULL si no aplica
	);

	INSERT INTO [dbo].[campana]
           ([ID_EMPRESA]
           ,[NOMBRE]
           ,[PATH_URL]
           ,[DESCRIPCION]
           ,[TIPO_CAMPANA]
           ,[TIPO_CAMPANA_ESTRATEGICA]
           ,[FECHA_INICIO]
           ,[FECHA_FIN]
           ,[ID_CAMPANA_ESTADO]
           ,[ID_ARCHIVO_TYC]
           ,[OBLIGATORIO_TYC]
           ,[ID_ARCHIVO_LEY]
           ,[OBLIGATORIO_LEY]
           ,[HABILITAR_LEY_EXTRA]
           ,[ID_ARCHIVO_LEY_EXTRA]
           ,[OBLIGATORIO_LEY_EXTRA]
           ,[ID_ARCHIVO_FONDO]
		   ,[ID_ARCHIVO_FONDO_BANNER]
           ,[MENSAJE_EXITO]
           ,[MAXIMO_CLIENTES]
           ,[MENSAJE_MAXIMO_CLIENTES]
           ,[COD_DEPARTAMENTO]
           ,[COD_PROVINCIA]
		   ,[MULTI_REGISTRO_CLIENTES]
		   ,[NOTIFICACION_AUTOMATICA]
		   ,[HABILITAR_SUBCAMPANAS]
           ,[HABILITAR_SPONSORS]
           ,[TITULO_SPONSORS]
           ,[DESCRIPCION_SPONSORS]
           ,[USUARIO_CREACION]
           ,[FECHA_CREACION]
           ,[HAS_STEPS]
           ,[HABILITAR_PUNTOS]
           ,[HABILITAR_CUPONES])
     VALUES
           (@ID_EMPRESA
           ,@NOMBRE
           ,@PATH_URL
           ,@DESCRIPCION
           ,@TIPO_CAMPANA
           ,@TIPO_CAMPANA_ESTRATEGICA
           ,@FECHA_INICIO
           ,@FECHA_FIN
           ,1
           ,@ID_ARCHIVO_TYC
           ,@OBLIGATORIO_TYC
           ,@ID_ARCHIVO_LEY
           ,@OBLIGATORIO_LEY
           ,@HABILITAR_LEY_EXTRA
           ,@ID_ARCHIVO_LEY_EXTRA
           ,@OBLIGATORIO_LEY_EXTRA
           ,@ID_ARCHIVO_FONDO
		   ,@ID_ARCHIVO_FONDO_BANNER
           ,@MENSAJE_EXITO
           ,@MAXIMO_CLIENTES
           ,@MENSAJE_MAXIMO_CLIENTES
           ,@COD_DEPARTAMENTO
           ,@COD_PROVINCIA
		   ,@NOTIFICACION_AUTOMATICA
		   ,@MULTI_REGISTRO_CLIENTES
		   ,@HABILITAR_SUBCAMPANAS
           ,@HABILITAR_SPONSORS
           ,@TITULO_SPONSORS
           ,@DESCRIPCION_SPONSORS
           ,@USUARIO_CREACION
           ,DATEADD(HH, -5, GETDATE())
           ,@HAS_STEPS
           ,@HABILITAR_PUNTOS
           ,@HABILITAR_CUPONES)

	SET @ID_CAMPANA = SCOPE_IDENTITY();
    

	INSERT INTO [dbo].[campana_datos_captura] (ID_CAMPANA, ID_DATOS_CAPTURA, ETIQUETA, DESCRIPCION, OBLIGATORIO, VIGENTE, ORDEN, USUARIO_CREACION, FECHA_CREACION, USUARIO_MODIFICACION, FECHA_MODIFICACION)
	SELECT @ID_CAMPANA, ID_DATOS_CAPTURA, NOMBRE, '', 1, 1, ROW_NUMBER() OVER(ORDER BY ORDEN ASC), @USUARIO_CREACION, DATEADD(HH, -5, GETDATE()), NULL, NULL   FROM [dbo].[datos_captura]
	WHERE CATEGORIA = 1 AND CODIGO_FIJO != 'DIRECCION_GOOGLE'
	ORDER BY ORDEN

    IF @TIPO_CAMPANA_ESTRATEGICA = 1
    BEGIN
        INSERT INTO [dbo].[campana_datos_captura] (ID_CAMPANA, ID_DATOS_CAPTURA, ETIQUETA, DESCRIPCION, OBLIGATORIO, VIGENTE, ORDEN, USUARIO_CREACION, FECHA_CREACION, USUARIO_MODIFICACION, FECHA_MODIFICACION)
        SELECT @ID_CAMPANA, ID_DATOS_CAPTURA, NOMBRE, '', 1, 1, ROW_NUMBER() OVER(ORDER BY ORDEN ASC), @USUARIO_CREACION, DATEADD(HH, -5, GETDATE()), NULL, NULL   FROM [dbo].[datos_captura]
        WHERE CATEGORIA = 3 AND CODIGO_FIJO != 'DIRECCION_GOOGLE'
        ORDER BY ORDEN
    END
	
	INSERT INTO [dbo].[auditoria_sp_parametros] (
		SP_NAME,
		PARAM_NAME,
		PARAM_VALUE,
		USUARIO,
		ENTIDAD_ID
	)
	VALUES (
		OBJECT_NAME(@@PROCID),
		'HAS_STEPS',
		CAST(ISNULL(@HAS_STEPS, 'NULL') AS NVARCHAR),
		NULL,
		@ID_CAMPANA -- o NULL si no aplica
	);

END
GO
PRINT N'Modificando Procedimiento [dbo].[sp_insert_cliente_campana_web]...';


GO
-- =============================================
-- Author:          Junior Vargas
-- Create date:		03/08/2022
-- Description:     Insert cliente campana
-- EXEC [dbo].[sp_insert_cliente_campana_web] 
-- =============================================
ALTER PROCEDURE [dbo].[sp_insert_cliente_campana_web]
	@ID_CLIENTE				INT,
	@ID_CAMPANA				INT,
	@ID_RED					INT,
	@ID_ARCHIVO_TYC			INT,
	@ACEPTO_TYC				BIT,
	@ID_ARCHIVO_LEY			INT,
	@ACEPTO_LEY				BIT,
	@ID_ARCHIVO_LEY_EXTRA	INT = NULL,
	@ACEPTO_LEY_EXTRA		BIT = NULL,
	@ID_TIPO_DOCUMENTO		INT,
	@NUMERO_DOCUMENTO		NVARCHAR(20),
	@NOMBRES				NVARCHAR(100) = NULL,
	@APELLIDO_PATERNO		NVARCHAR(100) = NULL,
	@APELLIDO_MATERNO		NVARCHAR(100) = NULL,
	@CORREO					NVARCHAR(100) = NULL,
	@CELULAR				NVARCHAR(20) = NULL,
	@COD_DEPARTAMENTO		NVARCHAR(2) = NULL,
    @COD_PROVINCIA			NVARCHAR(2) = NULL,
    @COD_DISTRITO			NVARCHAR(2) = NULL,
	@DIRECCION				NVARCHAR(150) = NULL,
    @MAPS_X					NVARCHAR(50) = NULL,
	@MAPS_Y					NVARCHAR(50) = NULL,
	@CONFIRMADO				BIT,
	@ID_SUBCAMPANA			int,
	@ID_CLIENTE_CAMPANA		INT OUTPUT,
    @CONFIRMADO_OUT         BIT OUTPUT,
    @MULTIREGISTRO_OUT      BIT OUTPUT
AS
BEGIN		
	DECLARE @ID int, @OBL_TYC bit, @OBL_LEY bit, @OBL_LEYX bit, @MULTI_REGISTRO_CLIENTES int --<!-- ADD EACN(CSTI) 21/10/2024 -->

	SELECT top 1 @ID = ID_CLIENTE_CAMPANA
	FROM cliente_campana WITH(NOLOCK)
	WHERE 
		ID_CLIENTE = @ID_CLIENTE
		and ID_CAMPANA = @ID_CAMPANA
		and isnull(ID_SUBCAMPANA, 0) = @ID_SUBCAMPANA

	SET @MULTI_REGISTRO_CLIENTES = (SELECT top 1  MULTI_REGISTRO_CLIENTES FROM campana WITH(NOLOCK) WHERE ID_CAMPANA = @ID_CAMPANA) --<!-- ADD EACN(CSTI) 21/10/2024 -->

	SELECT @OBL_TYC = OBLIGATORIO_TYC, @OBL_LEY = OBLIGATORIO_LEY, @OBL_LEYX = OBLIGATORIO_LEY_EXTRA
	FROM campana WITH(NOLOCK)
	WHERE 
		ID_CAMPANA = @ID_CAMPANA	

    SET @MULTIREGISTRO_OUT = @MULTI_REGISTRO_CLIENTES
    
    IF( (SELECT COUNT(*) FROM cliente_campana WITH(NOLOCK)
	    WHERE 
		ID_CAMPANA = @ID_CAMPANA
		and ID_TIPO_DOCUMENTO = @ID_TIPO_DOCUMENTO
        and NUMERO_DOCUMENTO = @NUMERO_DOCUMENTO
        and CONFIRMADO = 1)  = 0)
    BEGIN
        SET @CONFIRMADO_OUT = 0
    END
    ELSE
    BEGIN
        SET @CONFIRMADO_OUT = 1
    END


	IF(@MULTI_REGISTRO_CLIENTES = 1 or isnull(@ID, 0) = 0) --<!-- ADD EACN(CSTI) 21/10/2024 -->
	BEGIN
		INSERT INTO [dbo].[cliente_campana]
           ([ID_CLIENTE]
           ,[ID_CAMPANA]
           ,[ID_RED]
           ,[ID_ARCHIVO_TYC]
           ,[ACEPTO_TYC]
           ,[ID_ARCHIVO_LEY]
           ,[ACEPTO_LEY]
           ,[ID_ARCHIVO_LEY_EXTRA]
           ,[ACEPTO_LEY_EXTRA]
           ,[CONFIRMADO]
           ,[ID_TIPO_DOCUMENTO]
           ,[NUMERO_DOCUMENTO]
           ,[NOMBRES]
           ,[APELLIDO_PATERNO]
           ,[APELLIDO_MATERNO]
           ,[CORREO]
           ,[CELULAR]
           ,[COD_DEPARTAMENTO]
           ,[COD_PROVINCIA]
           ,[COD_DISTRITO]
           ,[DIRECCION]
           ,[MAPS_X]
           ,[MAPS_Y]
           ,[VIGENTE]
           ,[IP_CLIENTE]
           ,[FECHA_CREACION]
		   ,OBLIGATORIO_TYC 
		   ,OBLIGATORIO_LEY 
		   ,OBLIGATORIO_LEY_EXTRA
		   ,ID_SUBCAMPANA
		   ,MULTI_REGISTRO_CLIENTES)
		VALUES
           (@ID_CLIENTE
           ,@ID_CAMPANA
           ,@ID_RED
           ,@ID_ARCHIVO_TYC
           ,@ACEPTO_TYC
           ,@ID_ARCHIVO_LEY
           ,@ACEPTO_LEY
           ,@ID_ARCHIVO_LEY_EXTRA
           ,@ACEPTO_LEY_EXTRA
           ,@CONFIRMADO
           ,@ID_TIPO_DOCUMENTO
           ,@NUMERO_DOCUMENTO
           ,@NOMBRES
           ,@APELLIDO_PATERNO
           ,@APELLIDO_MATERNO
           ,@CORREO
           ,@CELULAR
           ,RIGHT('00' + Ltrim(Rtrim(@COD_DEPARTAMENTO)),2)
           ,RIGHT('00' + Ltrim(Rtrim(@COD_PROVINCIA)),2)
           ,RIGHT('00' + Ltrim(Rtrim(@COD_DISTRITO)),2)
           ,@DIRECCION
           ,@MAPS_X
           ,@MAPS_Y
           ,1
           ,''
           ,DATEADD(HH, -5, GETDATE())
		   ,@OBL_TYC
		   ,@OBL_LEY
		   ,@OBL_LEYX
		   ,@ID_SUBCAMPANA
		   ,@MULTI_REGISTRO_CLIENTES)

		SET @ID_CLIENTE_CAMPANA = SCOPE_IDENTITY();
	END
	ELSE
	BEGIN
		UPDATE [dbo].[cliente_campana] SET
           [ID_RED] = @ID_RED
           ,[ID_ARCHIVO_TYC] = @ID_ARCHIVO_TYC
           ,[ACEPTO_TYC] = @ACEPTO_TYC
           ,[ID_ARCHIVO_LEY] = @ID_ARCHIVO_LEY
           ,[ACEPTO_LEY] = @ACEPTO_LEY
           ,[ID_ARCHIVO_LEY_EXTRA] = @ID_ARCHIVO_LEY_EXTRA
           ,[ACEPTO_LEY_EXTRA] = @ACEPTO_LEY_EXTRA
           ,[CONFIRMADO] = @CONFIRMADO
           ,[ID_TIPO_DOCUMENTO] = @ID_TIPO_DOCUMENTO
           ,[NUMERO_DOCUMENTO] = @NUMERO_DOCUMENTO
           ,[NOMBRES] = @NOMBRES
           ,[APELLIDO_PATERNO] = @APELLIDO_PATERNO
           ,[APELLIDO_MATERNO] = @APELLIDO_MATERNO
           ,[CORREO] = @CORREO
           ,[CELULAR] = @CELULAR
           ,[COD_DEPARTAMENTO] = RIGHT('00' + Ltrim(Rtrim(@COD_DEPARTAMENTO)),2)
           ,[COD_PROVINCIA] = RIGHT('00' + Ltrim(Rtrim(@COD_PROVINCIA)),2)
           ,[COD_DISTRITO] = RIGHT('00' + Ltrim(Rtrim(@COD_DISTRITO)),2)
           ,[DIRECCION] = @DIRECCION
           ,[MAPS_X] = @MAPS_X
           ,[MAPS_Y] = @MAPS_Y
           ,[VIGENTE] = 1
           ,[IP_CLIENTE] = ''
           ,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
		   ,OBLIGATORIO_TYC = @OBL_TYC
		   ,OBLIGATORIO_LEY = @OBL_LEY
		   ,OBLIGATORIO_LEY_EXTRA = @OBL_LEYX
		   ,MULTI_REGISTRO_CLIENTES =@MULTI_REGISTRO_CLIENTES
		WHERE ID_CLIENTE_CAMPANA = @ID

		UPDATE [dbo].[datos_cliente_campana] SET
			VIGENTE = 0
		WHERE [ID_CLIENTE_CAMPANA] = @ID

		SET @ID_CLIENTE_CAMPANA = @ID;
	END


END
GO
PRINT N'Modificando Procedimiento [dbo].[sp_update_campana]...';


GO
-- =============================================
-- Author:          Junior Vargas
-- Create date:		21/05/2022
-- Description:     Update campaña 
-- EXEC [dbo].[sp_update_campana] 
-- =============================================
ALTER PROCEDURE [dbo].[sp_update_campana]
	@ID_CAMPANA					INT,
	@NOMBRE						NVARCHAR(100),
	@DESCRIPCION				NVARCHAR(150),
	@TIPO_CAMPANA				INT,
    @TIPO_CAMPANA_ESTRATEGICA 	INT=2,
	@FECHA_INICIO				DATETIME,
	@FECHA_FIN					DATETIME,
	@ID_ARCHIVO_TYC				INT = NULL,
    @OBLIGATORIO_TYC			BIT = NULL,
    @ID_ARCHIVO_LEY				INT = NULL,
    @OBLIGATORIO_LEY			BIT = NULL,
	@HABILITAR_LEY_EXTRA		BIT = NULL,
    @ID_ARCHIVO_LEY_EXTRA		INT = NULL,
    @OBLIGATORIO_LEY_EXTRA		BIT = NULL,
    @ID_ARCHIVO_FONDO			INT,
	@ID_ARCHIVO_FONDO_BANNER	INT,
    @MENSAJE_EXITO				NVARCHAR(250),
    @MAXIMO_CLIENTES			INT,
    @MENSAJE_MAXIMO_CLIENTES	NVARCHAR(250),
    @COD_DEPARTAMENTO			NVARCHAR(10),
    @COD_PROVINCIA				NVARCHAR(10),
	@NOTIFICACION_AUTOMATICA	BIT,
	@MULTI_REGISTRO_CLIENTES    BIT,
	@HABILITAR_SUBCAMPANAS		BIT,     
    @USUARIO_MODIFICACION		NVARCHAR(100),
    @HAS_STEPS					BIT,
    @HABILITAR_SPONSORS			BIT,
    @TITULO_SPONSORS     		NVARCHAR(100) = NULL,
	@DESCRIPCION_SPONSORS 		NVARCHAR(300) = NULL,
    @HABILITAR_PUNTOS           BIT = NULL,
    @HABILITAR_CUPONES          BIT = NULL
AS
BEGIN		

	UPDATE [dbo].[campana] SET
		[NOMBRE] = @NOMBRE
        ,[DESCRIPCION] = @DESCRIPCION
        ,[TIPO_CAMPANA] = @TIPO_CAMPANA
        ,[TIPO_CAMPANA_ESTRATEGICA] = @TIPO_CAMPANA_ESTRATEGICA
        ,[FECHA_INICIO] = @FECHA_INICIO
        ,[FECHA_FIN] = @FECHA_FIN
        ,[ID_ARCHIVO_TYC] = @ID_ARCHIVO_TYC
        ,[OBLIGATORIO_TYC] = @OBLIGATORIO_TYC
        ,[ID_ARCHIVO_LEY] = @ID_ARCHIVO_LEY
        ,[OBLIGATORIO_LEY] = @OBLIGATORIO_LEY
        ,[HABILITAR_LEY_EXTRA] = @HABILITAR_LEY_EXTRA
        ,[ID_ARCHIVO_LEY_EXTRA] = @ID_ARCHIVO_LEY_EXTRA
        ,[OBLIGATORIO_LEY_EXTRA] = @OBLIGATORIO_LEY_EXTRA
        ,[ID_ARCHIVO_FONDO] = @ID_ARCHIVO_FONDO
		,[ID_ARCHIVO_FONDO_BANNER] = @ID_ARCHIVO_FONDO_BANNER
        ,[MENSAJE_EXITO] = @MENSAJE_EXITO
        ,[MAXIMO_CLIENTES] = @MAXIMO_CLIENTES
        ,[MENSAJE_MAXIMO_CLIENTES] = @MENSAJE_MAXIMO_CLIENTES
        ,[COD_DEPARTAMENTO] = @COD_DEPARTAMENTO
        ,[COD_PROVINCIA] = @COD_PROVINCIA
		,[NOTIFICACION_AUTOMATICA] = @NOTIFICACION_AUTOMATICA
		,[MULTI_REGISTRO_CLIENTES] = @MULTI_REGISTRO_CLIENTES
		,[HABILITAR_SUBCAMPANAS] = @HABILITAR_SUBCAMPANAS
        ,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION 
        ,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
        ,[HAS_STEPS] = @HAS_STEPS
        ,[HABILITAR_SPONSORS] = @HABILITAR_SPONSORS
        ,[TITULO_SPONSORS] = @TITULO_SPONSORS
        ,[DESCRIPCION_SPONSORS] = @DESCRIPCION_SPONSORS
        ,[HABILITAR_PUNTOS] = @HABILITAR_PUNTOS
        ,[HABILITAR_CUPONES] = @HABILITAR_CUPONES
    WHERE
		ID_CAMPANA = @ID_CAMPANA


	update subcampana set
		VIGENTE = 0
	WHERE ID_CAMPANA = @ID_CAMPANA

END
GO
PRINT N'Modificando Procedimiento [dbo].[sp_get_dato_capturado_por_campana]...';


GO
-- =============================================
-- Author:          Junior Vargas
-- Create date:		05/10/2022
-- Description:     Listar datos capturados de los clientes de una campaña 
-- EXEC [dbo].[sp_get_dato_capturado_por_campana] 79
-- =============================================
ALTER PROCEDURE [dbo].[sp_get_dato_capturado_por_campana]	
	@ID_CAMPANA  		INT
AS
BEGIN

	SELECT CC.ID_CLIENTE_CAMPANA
		,CC.ID_CLIENTE
		,CC.CONFIRMADO
		,ISNULL(CC.MULTI_REGISTRO_CLIENTES,0) MULTI_REGISTRO_CLIENTES --<!-- ADD EACN(CSTI) 21/10/2024 -->
		,CC.ID_TIPO_DOCUMENTO
		,TD.DESCRIPCION as TIPO_DOCUMENTO
		,CC.NUMERO_DOCUMENTO
		,CC.NOMBRES
		,CC.APELLIDO_PATERNO
		,CC.APELLIDO_MATERNO
		,CC.CORREO
		,CC.CELULAR
		,RIGHT('00' + Ltrim(Rtrim(CC.COD_DEPARTAMENTO)),2) as COD_DEPARTAMENTO
		,RIGHT('00' + Ltrim(Rtrim(CC.COD_PROVINCIA)),2) as COD_PROVINCIA
		,RIGHT('00' + Ltrim(Rtrim(CC.COD_DISTRITO)),2) as COD_DISTRITO
		,CC.DIRECCION
		,CC.MAPS_X
		,CC.MAPS_Y
		,CC.FECHA_CREACION
		,DCC.ID_DATOS_CAPTURA
		,DCC.VALOR
		,DCC.DATA_EXTRA
		,DC.TIPO_DATO
		,(CASE 
			WHEN (DC.TIPO_DATO = 'check' OR DC.TIPO_DATO = 'radio' OR DC.TIPO_DATO = 'select')
			THEN (SELECT STUFF(
					(SELECT ', ' + DCV.DESCRIPCION
					FROM [dbo].[datos_captura_valor] DCV
					INNER JOIN [dbo].[datos_captura] DC ON DC.ID_DATOS_CAPTURA = DCV.ID_DATOS_CAPTURA
					WHERE DC.ID_DATOS_CAPTURA = DCC.ID_DATOS_CAPTURA
					and DCC.VALOR = DCV.ID_DATOS_CAPTURA_VALOR
					FOR XML PATH ('')),
				1,2, ''))
			ELSE '' END) as VALOR_DATO
		,U.DEPARTAMENTO
		,U.PROVINCIA
		,U.DISTRITO
		,R.DESCRIPCION as RED
		,(CASE 
			WHEN (CC.OBLIGATORIO_TYC = 1) THEN 'SI'
			WHEN (CC.OBLIGATORIO_TYC = 0) THEN 'NO'
			ELSE '' END) as OBLIGATORIEDAD_TYC
		,(CASE 
			WHEN (CC.OBLIGATORIO_LEY  = 1) THEN 'SI'
			WHEN (CC.OBLIGATORIO_LEY  = 0) THEN 'NO'
			ELSE '' END) as OBLIGATORIEDAD_LEY
		,(CASE 
			WHEN (CC.OBLIGATORIO_LEY_EXTRA  = 1) THEN 'SI'
			WHEN (CC.OBLIGATORIO_LEY_EXTRA  = 0) THEN 'NO'
			ELSE '' END) as OBLIGATORIEDAD_LEY_EXTRA
		,(CASE 
			WHEN (CC.ACEPTO_TYC  = 1) THEN 'SI'
			WHEN (CC.ACEPTO_TYC  = 0) THEN 'NO'
			ELSE '' END) as ACEPTO_TYC
		,(CASE 
			WHEN (CC.ACEPTO_LEY  = 1) THEN 'SI'
			WHEN (CC.ACEPTO_LEY  = 0) THEN 'NO'
			ELSE '' END) as ACEPTO_LEY
		,(CASE 
			WHEN CC.ID_ARCHIVO_LEY_EXTRA is null THEN ''
			ELSE
			(CASE 
			WHEN (CC.ACEPTO_LEY_EXTRA  = 1) THEN 'SI'
			WHEN (CC.ACEPTO_LEY_EXTRA  = 0) THEN 'NO'
			ELSE '' END)
			END) as ACEPTO_LEY_EXTRA
		,TYC.NOMBRE + ', RUTA: ' + TYC.RUTA AS ARCHIVO_TYC
		,ISNULL(LEY.DESCRIPCION, '') + ', ' + LEY.NOMBRE + ', RUTA: ' + LEY.RUTA AS ARCHIVO_LEY
		,ISNULL(LEYX.DESCRIPCION, '') + ', ' + LEYX.NOMBRE + ', RUTA: ' + LEYX.RUTA AS ARCHIVO_LEY_EXTRA
		,(CASE (select count(cc2.ID_CLIENTE) from
				(select cc1.ID_CLIENTE, min(cc1.FECHA_CREACION) as FECHA_CREACION
				from cliente_campana cc1 WITH(NOLOCK)
				group by cc1.ID_CLIENTE) as A
				inner join cliente_campana cc2 WITH(NOLOCK) on cc2.ID_CLIENTE = A.ID_CLIENTE and cc2.FECHA_CREACION = A.FECHA_CREACION
				inner join cliente cc3 WITH(NOLOCK) on cc3.ID_CLIENTE = A.ID_CLIENTE
				where cc3.USUARIO_CREACION not like '%INICIAL%' and cc2.ID_CAMPANA = CC.ID_CAMPANA and cc2.ID_CLIENTE = CC.ID_CLIENTE) WHEN 0 THEN 'NO' ELSE 'SI' END) as CLIENTE_NUEVO
		,CC.ID_SUBCAMPANA
		,SC.NOMBRE as SUBCAMPANA
	FROM [dbo].[cliente_campana] CC WITH(NOLOCK)
	LEFT JOIN [dbo].[datos_cliente_campana] DCC WITH(NOLOCK) ON CC.ID_CLIENTE_CAMPANA = DCC.ID_CLIENTE_CAMPANA
	INNER JOIN [dbo].[tipo_documento] TD WITH(NOLOCK) ON CC.ID_TIPO_DOCUMENTO = TD.ID_TIPO_DOCUMENTO
	LEFT JOIN [dbo].[datos_captura] DC WITH(NOLOCK) ON DCC.ID_DATOS_CAPTURA = DC.ID_DATOS_CAPTURA
	LEFT JOIN [dbo].[ubigeo] U WITH(NOLOCK) on RIGHT('00' + Ltrim(Rtrim(CC.COD_DEPARTAMENTO)),2) = U.COD_DEPARTAMENTO 
						and RIGHT('00' + Ltrim(Rtrim(CC.COD_PROVINCIA)),2) = U.COD_PROVINCIA 
						and RIGHT('00' + Ltrim(Rtrim(CC.COD_DISTRITO)),2) = U.COD_DISTRITO 
	LEFT JOIN [dbo].[red] R WITH(NOLOCK) ON CC.ID_RED = R.ID_RED
	LEFT JOIN [dbo].[archivo] TYC WITH(NOLOCK) ON CC.ID_ARCHIVO_TYC = TYC.ID_ARCHIVO
	LEFT JOIN [dbo].[archivo] LEY WITH(NOLOCK) ON CC.ID_ARCHIVO_LEY = LEY.ID_ARCHIVO
	LEFT JOIN [dbo].[archivo] LEYX WITH(NOLOCK) ON CC.ID_ARCHIVO_LEY_EXTRA = LEYX.ID_ARCHIVO
	LEFT JOIN [dbo].[subcampana] SC WITH(NOLOCK) on CC.ID_SUBCAMPANA = SC.ID_SUBCAMPANA
	WHERE CC.ID_CAMPANA = @ID_CAMPANA 
	ORDER BY CC.ID_TIPO_DOCUMENTO, CC.NUMERO_DOCUMENTO, CC.ID_SUBCAMPANA

	
	
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_campana_monto_minimo]...';


GO
/*
=============================================================================
Procedimiento: sp_delete_campana_monto_minimo
=============================================================================
Descripción: 
Elimina un registro de monto mínimo de campaña existente por su ID.

Parámetros:
- @ID_CAMPANA_MONTO_MINIMO: ID del registro de monto mínimo a eliminar

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Eliminar un monto mínimo de campaña:
  EXEC sp_delete_campana_monto_minimo 1

Historial de cambios:
- Fecha: 2025-07-24 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_delete_campana_monto_minimo
    @ID_CAMPANA_MONTO_MINIMO INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Verificar que el registro de monto mínimo exista
        IF NOT EXISTS (SELECT 1 FROM campana_monto_minimo WHERE ID_CAMPANA_MONTO_MINIMO = @ID_CAMPANA_MONTO_MINIMO)
        BEGIN
            RAISERROR('El registro de monto mínimo especificado no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Eliminar el registro de monto mínimo
        DELETE FROM campana_monto_minimo
        WHERE ID_CAMPANA_MONTO_MINIMO = @ID_CAMPANA_MONTO_MINIMO;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_campana_sponsor]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/05/2025
-- Description:     Delete sponsor
-- EXEC [dbo].[sp_delete_dato_sponsor] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_delete_campana_sponsor]
	@ID_SPONSOR		INT,
    @ID_CAMPANA		INT,
    @USUARIO_MODIFICACION		NVARCHAR(100)
AS
BEGIN		

	UPDATE [dbo].[campana_sponsor] SET
		[VIGENTE] = 0
        ,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION
        ,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
    WHERE
        ID_SPONSOR = @ID_SPONSOR AND ID_CAMPANA=@ID_CAMPANA

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_campana_tienda]...';


GO
/*
=============================================================================
Procedimiento: sp_delete_campana_tienda
=============================================================================
Descripción: 
Elimina una relación campaña-tienda existente por su ID.

Parámetros:
- @ID_CAMPANA_TIENDA: ID de la relación campaña-tienda a eliminar

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Eliminar una relación campaña-tienda:
  EXEC sp_delete_campana_tienda 1

Historial de cambios:
- Fecha: 2025-07-19 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_delete_campana_tienda
    @ID_CAMPANA_TIENDA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Verificar que la relación campaña-tienda exista
        IF NOT EXISTS (SELECT 1 FROM campana_tienda WHERE ID_CAMPANA_TIENDA = @ID_CAMPANA_TIENDA)
        BEGIN
            RAISERROR('La relación campaña-tienda especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Eliminar la relación campaña-tienda
        DELETE FROM campana_tienda
        WHERE ID_CAMPANA_TIENDA = @ID_CAMPANA_TIENDA;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_campana_tienda_multiplicador]...';


GO
/*
=============================================================================
Procedimiento: sp_delete_campana_tienda_multiplicador
=============================================================================
Descripción: 
Elimina un multiplicador existente de la tabla campana_tienda_multiplicador.

Parámetros:
- @ID_CAMPANA_TIENDA_MULTIPLICADOR: ID del multiplicador a eliminar

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Eliminar un multiplicador:
  EXEC sp_delete_campana_tienda_multiplicador 1

Historial de cambios:
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_delete_campana_tienda_multiplicador
    @ID_CAMPANA_TIENDA_MULTIPLICADOR INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Verificar que el multiplicador exista
        IF NOT EXISTS (SELECT 1 FROM campana_tienda_multiplicador WHERE ID_CAMPANA_TIENDA_MULTIPLICADOR = @ID_CAMPANA_TIENDA_MULTIPLICADOR)
        BEGIN
            RAISERROR('El multiplicador especificado no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Eliminar el multiplicador
        DELETE FROM campana_tienda_multiplicador
        WHERE ID_CAMPANA_TIENDA_MULTIPLICADOR = @ID_CAMPANA_TIENDA_MULTIPLICADOR;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_categoria_documento_legal]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/05/2025
-- Description:     Delete sponsor
-- EXEC [dbo].[sp_delete_categoria_documento_legal] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_delete_categoria_documento_legal]
	@ID_CATEGORIA_DOCUMENTO_LEGAL		INT,
    @USUARIO_MODIFICACION		NVARCHAR(100)
AS
BEGIN		
    DECLARE @COUNT_DL INT

    SELECT @COUNT_DL = COUNT(1)
    FROM [dbo].[documento_legal] NOLOCK
    WHERE ID_CATEGORIA_DOCUMENTO_LEGAL = @ID_CATEGORIA_DOCUMENTO_LEGAL AND ESTADO=1

    IF @COUNT_DL > 0
    BEGIN
        THROW 50001, 'Hay uno o varios documentos legales asociados a la categoria', 1;
    END 

	UPDATE [dbo].[categoria_documento_legal] SET
		[VIGENTE] = 0
        ,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION
        ,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
    WHERE
        ID_CATEGORIA_DOCUMENTO_LEGAL = @ID_CATEGORIA_DOCUMENTO_LEGAL

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_cupon_campana]...';


GO
/*
=============================================================================
Procedimiento: sp_delete_cupon_campana
=============================================================================
Descripción: 
Elimina lógicamente un cupón de una campaña específica estableciendo VIGENTE = 0.
Primero consulta la tabla campana_cupon_tienda para obtener el ID_CUPON correspondiente.

Parámetros:
- @ID_CAMPANA_CUPON_TIENDA: ID del cupón en la campaña (tabla campana_cupon_tienda)
- @USUARIO_MODIFICACION: Usuario que realiza la eliminación
- @FECHA_MODIFICACION: (Opcional) Fecha de modificación, si es NULL se calcula automáticamente

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Eliminar un cupón de campaña:
  EXEC sp_delete_cupon_campana 1, 'admin', NULL

Historial de cambios:
- Fecha: 2025-08-25 | Autor: Carlos | Descripción: Creación inicial
- Fecha: 2025-08-25 | Autor: Carlos | Descripción: Refactorización para usar ID_CAMPANA_CUPON_TIENDA
=============================================================================
*/

CREATE   PROCEDURE sp_delete_cupon_campana
    @ID_CAMPANA_CUPON_TIENDA INT,
    @USUARIO_MODIFICACION NVARCHAR(100) = 'System',
    @FECHA_MODIFICACION DATETIME = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @ID_CUPON INT;
    
    BEGIN TRY
        -- Si no se proporciona fecha de modificación, calcular con -5 horas
        IF @FECHA_MODIFICACION IS NULL
            SET @FECHA_MODIFICACION = DATEADD(HH, -5, GETDATE());
        
        -- Verificar que el registro en campana_cupon_tienda exista y obtener el ID_CUPON
        SELECT @ID_CUPON = ID_CUPON 
        FROM [dbo].[campana_cupon_tienda] 
        WHERE ID_CAMPANA_CUPON_TIENDA = @ID_CAMPANA_CUPON_TIENDA;
        
        IF @ID_CUPON IS NULL
        BEGIN
            RAISERROR('El cupón de campaña especificado no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Verificar que el cupón exista en la tabla cupon
        IF NOT EXISTS (SELECT 1 FROM [dbo].[cupon] WHERE ID_CUPON = @ID_CUPON)
        BEGIN
            RAISERROR('El cupón especificado no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Eliminar lógicamente el cupón
        UPDATE [dbo].[cupon] SET
            [VIGENTE] = 0
            ,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION
            ,[FECHA_MODIFICACION] = @FECHA_MODIFICACION
        WHERE
            ID_CUPON = @ID_CUPON;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_documento_legal]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/05/2025
-- Description:     Delete documento_legal
-- EXEC [dbo].[sp_delete_documento_legal] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_delete_documento_legal]
	@ID_DOCUMENTO_LEGAL		INT,
    @USUARIO_MODIFICACION		NVARCHAR(100)
AS
BEGIN		

	UPDATE [dbo].[documento_legal] SET
		[ESTADO] = 0
        ,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION
        ,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
    WHERE
        ID_DOCUMENTO_LEGAL = @ID_DOCUMENTO_LEGAL

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_multiplicador]...';


GO
/*
=============================================================================
Procedimiento: sp_delete_multiplicador
=============================================================================
Descripción: 
Elimina un multiplicador existente.

Parámetros:
- @ID_CONFIGURACION_MULTIPLICADOR: ID del multiplicador a eliminar

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Eliminar un multiplicador:
  EXEC sp_delete_multiplicador 1

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_delete_multiplicador
    @ID_CONFIGURACION_MULTIPLICADOR INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Verificar que el multiplicador exista
        IF NOT EXISTS (SELECT 1 FROM configuracion_multiplicador WHERE ID_CONFIGURACION_MULTIPLICADOR = @ID_CONFIGURACION_MULTIPLICADOR)
        BEGIN
            RAISERROR('El multiplicador especificado no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Eliminar el multiplicador
        DELETE FROM configuracion_multiplicador
        WHERE ID_CONFIGURACION_MULTIPLICADOR = @ID_CONFIGURACION_MULTIPLICADOR;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_qr_plantilla_campo]...';


GO
/*
=============================================================================
Procedimiento: sp_delete_qr_plantilla_campo
=============================================================================
Descripción: 
Elimina un campo específico de una plantilla QR o todos los campos de una plantilla.

Parámetros:
- @ID_QR_PLANTILLA: ID de la plantilla QR cuyos campos se eliminarán
- @ID_QR_PLANTILLA_CAMPO: ID del campo específico a eliminar (opcional)
  Si es NULL, se eliminarán todos los campos de la plantilla

Retorno:
- 0: Ejecución exitosa
- 1: Error en la ejecución

Ejemplos de uso:
- Eliminar un campo específico:
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_delete_qr_plantilla_campo 
      @ID_QR_PLANTILLA = 1,
      @ID_QR_PLANTILLA_CAMPO = 5
  
  IF @RESULTADO = 0
      SELECT 'Campo eliminado con éxito.'
  ELSE
      SELECT 'Error al eliminar el campo'

- Eliminar todos los campos de una plantilla:
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_delete_qr_plantilla_campo 
      @ID_QR_PLANTILLA = 1,
      @ID_QR_PLANTILLA_CAMPO = NULL
  
  IF @RESULTADO = 0
      SELECT 'Todos los campos eliminados con éxito.'
  ELSE
      SELECT 'Error al eliminar los campos'

Historial de cambios:
- Fecha: 2025-07-15 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_delete_qr_plantilla_campo]
    @ID_QR_PLANTILLA INT,
    @ID_QR_PLANTILLA_CAMPO INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Verificar si la plantilla existe
        IF NOT EXISTS (SELECT 1 FROM qr_plantilla WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA)
        BEGIN
            RAISERROR('La plantilla QR especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Si se especifica un ID de campo, verificar que exista y pertenezca a la plantilla
        IF @ID_QR_PLANTILLA_CAMPO IS NOT NULL AND 
           NOT EXISTS (SELECT 1 FROM qr_plantilla_campo 
                      WHERE ID_QR_PLANTILLA_CAMPO = @ID_QR_PLANTILLA_CAMPO 
                      AND ID_QR_PLANTILLA = @ID_QR_PLANTILLA)
        BEGIN
            RAISERROR('El campo especificado no existe o no pertenece a la plantilla indicada.', 16, 1);
            RETURN 1;
        END
        
        -- Eliminar el campo específico o todos los campos según el parámetro
        IF @ID_QR_PLANTILLA_CAMPO IS NULL
        BEGIN
            -- Eliminar todos los campos de la plantilla
            DELETE FROM qr_plantilla_campo
            WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA;
        END
        ELSE
        BEGIN
            -- Eliminar solo el campo especificado
            DELETE FROM qr_plantilla_campo
            WHERE ID_QR_PLANTILLA_CAMPO = @ID_QR_PLANTILLA_CAMPO;
        END
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;
        
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
            
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH;
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_qr_plantilla_campos]...';


GO
/*
=============================================================================
Procedimiento: sp_delete_qr_plantilla_campos
=============================================================================
Descripción: 
Elimina todos los campos asociados a una plantilla QR específica.

Parámetros:
- @ID_QR_PLANTILLA: Identificador de la plantilla QR cuyos campos se eliminarán.

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Eliminar todos los campos de una plantilla QR:
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_delete_qr_plantilla_campos 
      @ID_QR_PLANTILLA = 1
  
  IF @RESULTADO = 0
      SELECT 'Campos de plantilla QR eliminados con éxito.'
  ELSE
      SELECT 'Error al eliminar los campos de la plantilla QR'

Historial de cambios:
- Fecha: 2025-07-28 | Autor: Carlos Lázaro | Descripción: Creación del procedimiento.
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_delete_qr_plantilla_campos]
    @ID_QR_PLANTILLA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    
    BEGIN TRY
        -- Verificar si la plantilla existe
        IF NOT EXISTS (SELECT 1 FROM qr_plantilla WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA)
        BEGIN
            RAISERROR('La plantilla QR especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Eliminar todos los campos asociados a la plantilla
        DELETE FROM qr_plantilla_campo
        WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
            
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH;
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_qr_plantilla_full]...';


GO
/*
=============================================================================
Procedimiento: sp_delete_qr_plantilla_full
=============================================================================
Descripción: 
Elimina una plantilla QR y todos sus campos asociados de forma transaccional.

Parámetros:
- @ID_QR_PLANTILLA: ID de la plantilla QR a eliminar junto con sus campos

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Eliminar una plantilla QR completa con todos sus campos:
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_delete_qr_plantilla_full 
      @ID_QR_PLANTILLA = 1
  
  IF @RESULTADO = 0
      SELECT 'Plantilla QR y campos eliminados con éxito.'
  ELSE
      SELECT 'Error al eliminar la plantilla QR'

Historial de cambios:
- Fecha: 2025-07-19 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_delete_qr_plantilla_full]
    @ID_QR_PLANTILLA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Verificar que la plantilla QR exista
        IF NOT EXISTS (SELECT 1 FROM qr_plantilla WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA)
        BEGIN
            RAISERROR('La plantilla QR especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Iniciar transacción para garantizar integridad
        BEGIN TRANSACTION;
        
        -- Eliminar primero todos los campos asociados a la plantilla
        DELETE FROM qr_plantilla_campo
        WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA;
        
        -- Eliminar la plantilla QR
        DELETE FROM qr_plantilla
        WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA;
        
        -- Confirmar transacción
        COMMIT TRANSACTION;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Rollback en caso de error
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
            
        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;
        
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
            
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH;
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_regla_puntos]...';


GO
/*
=============================================================================
Procedimiento: sp_delete_regla_puntos
=============================================================================
Descripción: 
Elimina una regla de puntos existente por su ID.

Parámetros:
- @ID_REGLA_PUNTOS: ID de la regla de puntos a eliminar

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Eliminar una regla de puntos:
  EXEC sp_delete_regla_puntos 1

Historial de cambios:
- Fecha: 2025-07-24 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_delete_regla_puntos
    @ID_REGLA_PUNTOS INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Verificar que la regla de puntos exista
        IF NOT EXISTS (SELECT 1 FROM regla_puntos WHERE ID_REGLA_PUNTOS = @ID_REGLA_PUNTOS)
        BEGIN
            RAISERROR('La regla de puntos especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Eliminar la regla de puntos
        DELETE FROM regla_puntos
        WHERE ID_REGLA_PUNTOS = @ID_REGLA_PUNTOS;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_sponsor]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/05/2025
-- Description:     Delete sponsor
-- EXEC [dbo].[sp_delete_dato_sponsor] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_delete_sponsor]
	@ID_SPONSOR		INT,
    @USUARIO_MODIFICACION		NVARCHAR(100)
AS
BEGIN		
		
    DECLARE @COUNT_S INT
    SELECT @COUNT_S = COUNT(1)
    FROM [dbo].[campana_sponsor] NOLOCK
    WHERE ID_SPONSOR = @ID_SPONSOR AND VIGENTE = 1

    IF @COUNT_S > 0
    BEGIN
        THROW 50001, 'Hay uno o varias campanas asociados al sponsor', 1;
    END 

	UPDATE [dbo].[sponsor] SET
		[VIGENTE] = 0
        ,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION
        ,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
    WHERE
        ID_SPONSOR = @ID_SPONSOR

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_delete_steps_by_campaign_id]...';


GO
CREATE PROCEDURE sp_delete_steps_by_campaign_id
    @campaignId INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM step
    WHERE campaign_id = @campaignId;
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_deshabilitar_tiendas]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		17/06/2025
-- Description:     Deshabilitar multiples tiendas
-- =============================================
CREATE PROCEDURE [dbo].[sp_deshabilitar_tiendas]
    @LISTA_TIENDAS ListaTienda READONLY
AS
BEGIN

    UPDATE ct
    SET ct.VIGENTE = 0,  
        ct.FECHA_MODIFICACION = GETDATE()
    FROM [dbo].[campana_tienda] ct
    INNER JOIN @LISTA_TIENDAS t ON ct.ID_TIENDA = t.ID_TIENDA

    UPDATE ct
    SET ct.VIGENTE = 0,  
        ct.FECHA_MODIFICACION = GETDATE()
    FROM [dbo].[tienda] ct
    INNER JOIN @LISTA_TIENDAS t ON ct.ID_TIENDA = t.ID_TIENDA

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_disable_campanas_documento_legal]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/05/2025
-- Description:     Disable campana documento legal
-- EXEC [dbo].[sp_disable_campanas_documento_legal] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_disable_campanas_documento_legal]
	@ID_CAMPANA		INT,
    @USUARIO_MODIFICACION		NVARCHAR(100)
AS
BEGIN		

	UPDATE [dbo].[campana_documento_legal] SET
		[VIGENTE] = 0
        ,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION
        ,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
    WHERE
        ID_CAMPANA = @ID_CAMPANA

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_archivo_admin_por_id]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2025
-- Description:     Obtener archivo admin por id 
-- EXEC [dbo].[sp_get_archivo_admin_por_id] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_archivo_admin_por_id]
	@ID_ARCHIVO int
AS
BEGIN		
	SELECT [ID_ARCHIVO_ADMIN] as 'ID_ARCHIVO'
      ,[TIPO]
      ,[DESCRIPCION]
      ,[RUTA]
      ,[NOMBRE]
	  ,[TIPO_MIME]
	FROM [dbo].[archivo_admin] WITH(NOLOCK)
	WHERE VIGENTE = 1 and ID_ARCHIVO_ADMIN = @ID_ARCHIVO

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_campana_monto_minimo_by_campana]...';


GO
/*
=============================================================================
Procedimiento: sp_get_campana_monto_minimo_by_campana
=============================================================================
Descripción: 
Obtiene el monto mínimo asociado a una campaña específica.

Parámetros:
- @ID_CAMPANA: ID de la campaña para la cual se quiere obtener el monto mínimo

Retorno:
- Registro con la información del monto mínimo para la campaña especificada

Ejemplos de uso:
- EXEC sp_get_campana_monto_minimo_by_campana 1

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_campana_monto_minimo_by_campana
    @ID_CAMPANA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Obtener el monto mínimo para la campaña especificada
        SELECT 
            ID_CAMPANA_MONTO_MINIMO,
            ID_CAMPANA,
            MONEDA,
            MONTO_MINIMO,
            FECHA_CREACION,
            USUARIO_CREACION,
            FECHA_MODIFICACION,
            USUARIO_MODIFICACION
        FROM campana_monto_minimo
        WHERE ID_CAMPANA = @ID_CAMPANA;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_campana_tienda_by_ids]...';


GO
/*
=============================================================================
Procedimiento: sp_get_campana_tienda_by_ids
=============================================================================
Descripción: 
Obtiene una relación campaña-tienda específica según los IDs de campaña y tienda.

Parámetros:
- @ID_CAMPANA: ID de la campaña a buscar
- @ID_TIENDA: ID de la tienda a buscar

Retorno:
- Registro de la relación campaña-tienda si existe
- Conjunto vacío si no existe la relación

Ejemplos de uso:
- Obtener una relación campaña-tienda específica:
  EXEC sp_get_campana_tienda_by_ids @ID_CAMPANA = 1, @ID_TIENDA = 2

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Usuario | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_get_campana_tienda_by_ids]
    @ID_CAMPANA INT,
    @ID_TIENDA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        SELECT 
            ID_CAMPANA_TIENDA,
            ID_CAMPANA,
            ID_TIENDA,
            USUARIO_CREACION,
            FECHA_CREACION,
            USUARIO_MODIFICACION,
            FECHA_MODIFICACION
        FROM 
            campana_tienda
        WHERE 
            ID_CAMPANA = @ID_CAMPANA 
            AND ID_TIENDA = @ID_TIENDA;
            
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_campana_tienda_multiplicador_by_id]...';


GO
/*
=============================================================================
Nombre: sp_get_campana_tienda_multiplicador_by_id
=============================================================================

Descripción:
Obtiene un registro específico de configuración de multiplicadores por tienda según su ID.
Si se proporciona el parámetro de moneda, filtra por esa moneda específica.

Parámetros:
- @ID_CAMPANA_TIENDA_MULTIPLICADOR: ID del registro de configuración de multiplicador a consultar
- @MONEDA: Moneda a filtrar (opcional, por defecto 'PEN')

Retorno:
- Registro con la información de la configuración de multiplicador

Ejemplo de uso:
EXEC sp_get_campana_tienda_multiplicador_by_id @ID_CAMPANA_TIENDA_MULTIPLICADOR = 1
EXEC sp_get_campana_tienda_multiplicador_by_id @ID_CAMPANA_TIENDA_MULTIPLICADOR = 1, @MONEDA = 'USD'

Historial de cambios:
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Creación inicial
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Agregado parámetro @MONEDA con valor por defecto 'PEN'
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_get_campana_tienda_multiplicador_by_id]
(
    @ID_CAMPANA_TIENDA_MULTIPLICADOR INT,
    @MONEDA VARCHAR(3) = 'PEN'
)
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Validar que el registro exista con la moneda especificada
        IF NOT EXISTS (SELECT 1 FROM campana_tienda_multiplicador 
                      WHERE ID_CAMPANA_TIENDA_MULTIPLICADOR = @ID_CAMPANA_TIENDA_MULTIPLICADOR
                      AND MONEDA = @MONEDA)
        BEGIN
            RAISERROR('El registro de configuración de multiplicador no existe para la moneda especificada.', 16, 1);
            RETURN;
        END;
        
        -- Consulta principal
        SELECT 
            ctm.ID_CAMPANA_TIENDA_MULTIPLICADOR,
            ctm.ID_CAMPANA,
            ctm.ID_TIENDA,
            ctm.MULTIPLICADOR,
            ctm.MONEDA,
            ctm.ACTIVO,
            c.NOMBRE AS NOMBRE_CAMPANA,
            t.NOMBRE AS NOMBRE_TIENDA,
            t.RUC,
            ctm.USUARIO_CREACION,
            ctm.FECHA_CREACION,
            ctm.USUARIO_MODIFICACION,
            ctm.FECHA_MODIFICACION
        FROM 
            campana_tienda_multiplicador ctm
            INNER JOIN campana c ON ctm.ID_CAMPANA = c.ID_CAMPANA
            INNER JOIN tienda t ON ctm.ID_TIENDA = t.ID_TIENDA
        WHERE 
            ctm.ID_CAMPANA_TIENDA_MULTIPLICADOR = @ID_CAMPANA_TIENDA_MULTIPLICADOR
            AND ctm.MONEDA = @MONEDA;
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_campana_tienda_multiplicadores]...';


GO
/*
=============================================================================
Procedimiento: sp_get_campana_tienda_multiplicadores
=============================================================================
Descripción: 
Obtiene una lista paginada de multiplicadores con filtros opcionales desde la tabla campana_tienda_multiplicador.

Parámetros:
- @PAGE_SIZE: Tamaño de página para la paginación
- @PAGE_INDEX: Índice de página para la paginación (base 0)
- @ID_CAMPANA: (Opcional) Filtro por ID de campaña
- @ID_TIENDA: (Opcional) Filtro por ID de tienda
- @ACTIVO: (Opcional) Filtro por estado activo/inactivo
- @MONEDA: (Opcional) Filtro por moneda, por defecto 'PEN'

Retorno:
- Lista paginada de multiplicadores que cumplen con los filtros

Ejemplos de uso:
- Obtener todos los multiplicadores (primera página, 10 por página):
  EXEC sp_get_campana_tienda_multiplicadores 10, 0, NULL, NULL, NULL
  
- Obtener multiplicadores activos para una campaña específica:
  EXEC sp_get_campana_tienda_multiplicadores 10, 0, 5, NULL, 1
  
- Obtener multiplicadores para una tienda específica en USD:
  EXEC sp_get_campana_tienda_multiplicadores 10, 0, NULL, 3, NULL, 'USD'

Historial de cambios:
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_campana_tienda_multiplicadores
    @PAGE_SIZE INT,
    @PAGE_INDEX INT,
    @ID_CAMPANA INT = NULL,
    @ID_TIENDA INT = NULL,
    @ACTIVO BIT = NULL,
    @MONEDA VARCHAR(3) = 'PEN'
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        DECLARE @OFFSET INT = @PAGE_INDEX * @PAGE_SIZE;
        
        SELECT 
            ctm.ID_CAMPANA_TIENDA_MULTIPLICADOR,
            ctm.ID_CAMPANA,
            ctm.ID_TIENDA,
            ctm.MULTIPLICADOR,
            ctm.MONEDA,
            ctm.ACTIVO,
            c.NOMBRE AS NOMBRE_CAMPANA,
            t.NOMBRE AS NOMBRE_TIENDA,
            t.RUC,
            ctm.USUARIO_CREACION,
            ctm.FECHA_CREACION,
            ctm.USUARIO_MODIFICACION,
            ctm.FECHA_MODIFICACION
        FROM 
            campana_tienda_multiplicador ctm
            INNER JOIN campana c ON ctm.ID_CAMPANA = c.ID_CAMPANA
            INNER JOIN tienda t ON ctm.ID_TIENDA = t.ID_TIENDA
        WHERE 
            (@ID_CAMPANA IS NULL OR ctm.ID_CAMPANA = @ID_CAMPANA)
            AND (@ID_TIENDA IS NULL OR ctm.ID_TIENDA = @ID_TIENDA)
            AND (@ACTIVO IS NULL OR ctm.ACTIVO = @ACTIVO)
            AND ctm.MONEDA = @MONEDA
        ORDER BY 
            ctm.ID_CAMPANA_TIENDA_MULTIPLICADOR DESC
        OFFSET @OFFSET ROWS
        FETCH NEXT @PAGE_SIZE ROWS ONLY;
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_campana_tienda_multiplicadores_by_campana]...';


GO
/*
=============================================================================
Procedimiento: sp_get_campana_tienda_multiplicadores_by_campana
=============================================================================
Descripción: 
Obtiene todos los multiplicadores configurados para una campaña específica,
incluyendo información de las tiendas asociadas. Soporta paginación.

Parámetros:
- @ID_CAMPANA: ID de la campaña para la cual se obtendrán los multiplicadores
- @PAGE_SIZE: Tamaño de página para la paginación
- @PAGE_INDEX: Índice de página para la paginación (base 0)
- @ACTIVO: (Opcional) Filtro por estado activo/inactivo
- @MONEDA: (Opcional) Filtro por moneda, por defecto 'PEN'

Retorno:
- 0: Ejecución exitosa
- 1: Error en la ejecución
- Un conjunto de resultados con los multiplicadores y sus tiendas asociadas

Ejemplos de uso:
- Obtener todos los multiplicadores de una campaña en PEN (primera página, 10 por página):
  EXEC sp_get_campana_tienda_multiplicadores_by_campana @ID_CAMPANA = 1, @PAGE_SIZE = 10, @PAGE_INDEX = 0, @ACTIVO = NULL
  
- Obtener solo los multiplicadores activos de una campaña:
  EXEC sp_get_campana_tienda_multiplicadores_by_campana @ID_CAMPANA = 1, @PAGE_SIZE = 10, @PAGE_INDEX = 0, @ACTIVO = 1
  
- Obtener los multiplicadores de una campaña en USD:
  EXEC sp_get_campana_tienda_multiplicadores_by_campana @ID_CAMPANA = 1, @PAGE_SIZE = 10, @PAGE_INDEX = 0, @ACTIVO = NULL, @MONEDA = 'USD'

Historial de cambios:
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_get_campana_tienda_multiplicadores_by_campana]
    @ID_CAMPANA INT,
    @PAGE_SIZE INT,
    @PAGE_INDEX INT,
    @ACTIVO BIT = NULL,
    @MONEDA VARCHAR(3) = 'PEN'
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    
    BEGIN TRY
        -- Verificar que la campaña exista
        IF NOT EXISTS (SELECT 1 FROM campana WHERE ID_CAMPANA = @ID_CAMPANA)
        BEGIN
            RAISERROR('La campaña especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Calcular el offset para la paginación
        DECLARE @OFFSET INT = @PAGE_INDEX * @PAGE_SIZE;
        
        -- Obtener los multiplicadores para la campaña especificada con paginación
        SELECT 
            ctm.ID_CAMPANA_TIENDA_MULTIPLICADOR,
            ctm.ID_CAMPANA,
            ctm.ID_TIENDA,
            ctm.MULTIPLICADOR,
            ctm.MONEDA,
            ctm.ACTIVO,
            c.NOMBRE AS NOMBRE_CAMPANA,
            t.NOMBRE AS NOMBRE_TIENDA,
            t.RUC,
            ctm.USUARIO_CREACION,
            ctm.FECHA_CREACION,
            ctm.USUARIO_MODIFICACION,
            ctm.FECHA_MODIFICACION
        FROM 
            campana_tienda_multiplicador ctm
        INNER JOIN 
            campana c ON ctm.ID_CAMPANA = c.ID_CAMPANA
        INNER JOIN 
            tienda t ON ctm.ID_TIENDA = t.ID_TIENDA
        WHERE 
            ctm.ID_CAMPANA = @ID_CAMPANA
            AND (@ACTIVO IS NULL OR ctm.ACTIVO = @ACTIVO)
            AND ctm.MONEDA = @MONEDA
        ORDER BY 
            t.NOMBRE, ctm.ACTIVO DESC, ctm.FECHA_CREACION DESC
        OFFSET @OFFSET ROWS
        FETCH NEXT @PAGE_SIZE ROWS ONLY;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
        
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_campana_tienda_multiplicadores_by_campana_tienda]...';


GO
/*
=============================================================================
Procedimiento: sp_get_campana_tienda_multiplicadores_by_campana_tienda
=============================================================================
Descripción: 
Obtiene una lista paginada de multiplicadores para una campaña y tienda específicas, 
incluyendo todas las monedas disponibles.

Parámetros:
- @PAGE_SIZE: Tamaño de página para la paginación
- @PAGE_INDEX: Índice de página para la paginación (base 0)
- @ID_CAMPANA: ID de la campaña para filtrar los multiplicadores
- @ID_TIENDA: ID de la tienda para filtrar los multiplicadores

Retorno:
- Lista paginada de multiplicadores para la campaña y tienda especificadas en todas las monedas

Ejemplos de uso:
- Obtener multiplicadores para una campaña y tienda específicas (primera página, 10 por página):
  EXEC sp_get_campana_tienda_multiplicadores_by_campana_tienda 10, 0, 5, 3

Historial de cambios:
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_campana_tienda_multiplicadores_by_campana_tienda
    @PAGE_SIZE INT,
    @PAGE_INDEX INT,
    @ID_CAMPANA INT,
    @ID_TIENDA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        DECLARE @OFFSET INT = @PAGE_INDEX * @PAGE_SIZE;
        
        SELECT 
            ctm.ID_CAMPANA_TIENDA_MULTIPLICADOR,
            ctm.ID_CAMPANA,
            ctm.ID_TIENDA,
            ctm.MULTIPLICADOR,
            ctm.MONEDA,
            ctm.ACTIVO,
            c.NOMBRE AS NOMBRE_CAMPANA,
            t.NOMBRE AS NOMBRE_TIENDA,
            t.RUC,
            ctm.USUARIO_CREACION,
            ctm.FECHA_CREACION,
            ctm.USUARIO_MODIFICACION,
            ctm.FECHA_MODIFICACION
        FROM 
            campana_tienda_multiplicador ctm
            INNER JOIN campana c ON ctm.ID_CAMPANA = c.ID_CAMPANA
            INNER JOIN tienda t ON ctm.ID_TIENDA = t.ID_TIENDA
        WHERE 
            ctm.ID_CAMPANA = @ID_CAMPANA
            AND ctm.ID_TIENDA = @ID_TIENDA
        ORDER BY 
            ctm.MONEDA ASC,
            ctm.ID_CAMPANA_TIENDA_MULTIPLICADOR DESC
        OFFSET @OFFSET ROWS
        FETCH NEXT @PAGE_SIZE ROWS ONLY;
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_campanas_puntos]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:     18/06/2022
-- Description:     Listar puntos por campanas (Modificado para agrupar puntos por cliente-campaña)
-- EXEC [dbo].[sp_get_campanas_puntos]
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_campanas_puntos]
    @PAGE_SIZE INT,
    @PAGE_INDEX INT,
    @ID_EMPRESA INT = NULL,
    @ID_CAMPANA INT = NULL,
    @FECHA_INICIO DATETIME = NULL,
    @FECHA_FIN DATETIME = NULL,
    @TIPO_DOCUMENTO INT = NULL,
    @NUMERO_DOCUMENTO NVARCHAR(20) = NULL
AS
BEGIN
    ;WITH DataCampanas as (
        SELECT 
            ROW_NUMBER() OVER(ORDER BY C.ID_CAMPANA DESC) AS ROW_INDEX,
            C.ID_CAMPANA,
            CLC.ID_CLIENTE_CAMPANA,
            CLC.[NOMBRES] + ' ' + CLC.[APELLIDO_PATERNO] + ' ' + CLC.[APELLIDO_MATERNO] AS CLIENTE,
            CLC.[ID_CLIENTE],
            CLC.[ID_TIPO_DOCUMENTO] AS TIPO_DOCUMENTO,
            TD.[DESCRIPCION] AS TIPO_DOCUMENTO_NOMBRE,
            CLC.[NUMERO_DOCUMENTO],
            E.[ID_EMPRESA],
            E.[DESCRIPCION] AS EMPRESA,
            C.[NOMBRE] AS CAMPANA,
            C.[FECHA_INICIO],
            C.[FECHA_FIN],
            -- Sumar todos los puntos por cliente-campaña para consolidar
            SUM(CLCP.[PUNTOS_TOTALES]) AS PUNTOS
        FROM [dbo].[campana] C WITH(NOLOCK)
        INNER JOIN [dbo].[empresa] E WITH(NOLOCK) on C.ID_EMPRESA = E.ID_EMPRESA
        LEFT JOIN [dbo].[cliente_campana] CLC WITH(NOLOCK) on CLC.ID_CAMPANA = C.ID_CAMPANA
        LEFT JOIN [dbo].[tipo_documento] TD WITH(NOLOCK) on TD.ID_TIPO_DOCUMENTO = CLC.ID_TIPO_DOCUMENTO
        LEFT JOIN [dbo].[cliente_campana_puntos] CLCP WITH(NOLOCK) on CLCP.ID_CLIENTE_CAMPANA = CLC.ID_CLIENTE_CAMPANA
        WHERE C.[ID_CAMPANA_ESTADO] != 4 AND CLCP.PUNTOS_TOTALES IS NOT NULL
            AND (C.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA = 0 OR @ID_EMPRESA is null)
            AND (C.ID_CAMPANA = @ID_CAMPANA OR @ID_CAMPANA = 0 OR @ID_CAMPANA is null)
			AND (CLC.ID_TIPO_DOCUMENTO = @TIPO_DOCUMENTO OR @TIPO_DOCUMENTO = 0 OR @TIPO_DOCUMENTO is null)
			AND (CLC.NUMERO_DOCUMENTO = @NUMERO_DOCUMENTO OR @NUMERO_DOCUMENTO = '' OR @NUMERO_DOCUMENTO is null)
            AND (
                --solo fecha inicio
                (
                    @FECHA_INICIO is not null and @FECHA_FIN is null and
                        (
                            (C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_FIN is null)
                            OR (C.FECHA_INICIO >= @FECHA_INICIO)
                        )
                )
                OR  --solo fecha fin
                (
                    @FECHA_INICIO is null and @FECHA_FIN is not null and
                        (
                            (C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN is null)
                            OR (C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN > @FECHA_FIN)
                        )
                )
                OR  --rango
                (
                    @FECHA_INICIO is not null and @FECHA_FIN is not null and
                        (
                            (C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN is null)
                            OR (C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_FIN < DATEADD(Day, 1, @FECHA_FIN))
                        )
                )
                OR --ninguno
                (
                    @FECHA_INICIO is null and @FECHA_FIN is null
                )
            )
        -- Agrupar por cliente-campaña para consolidar puntos
        GROUP BY 
            C.ID_CAMPANA,
            CLC.ID_CLIENTE_CAMPANA,
            CLC.[NOMBRES],
            CLC.[APELLIDO_PATERNO],
            CLC.[APELLIDO_MATERNO],
            CLC.[ID_CLIENTE],
            CLC.[ID_TIPO_DOCUMENTO],
            TD.[DESCRIPCION],
            CLC.[NUMERO_DOCUMENTO],
            E.[ID_EMPRESA],
           E.[DESCRIPCION],
            C.[NOMBRE],
            C.[FECHA_INICIO],
            C.[FECHA_FIN]
    )
    , CountDataCampanas AS (SELECT COUNT(*) AS ROWS_COUNT FROM DataCampanas)

    SELECT
        A.ROW_INDEX,
        B.ROWS_COUNT,
        @PAGE_SIZE AS PAGE_SIZE,
        @PAGE_INDEX AS PAGE_INDEX,
        A.[ID_CAMPANA],
        A.[ID_CLIENTE_CAMPANA],
        A.[CAMPANA],
        A.[ID_EMPRESA],
        A.[EMPRESA],
        A.[FECHA_INICIO],
        A.[FECHA_FIN],
        A.[ID_CLIENTE],
        A.[CLIENTE],
        A.[TIPO_DOCUMENTO],
        A.[TIPO_DOCUMENTO_NOMBRE],
        A.[NUMERO_DOCUMENTO],
        A.[PUNTOS]
    FROM DataCampanas A
    CROSS JOIN CountDataCampanas B
    ORDER BY A.ID_CAMPANA DESC

    OFFSET ((@PAGE_INDEX + 1) - 1) * @PAGE_SIZE ROWS
    FETCH NEXT @PAGE_SIZE ROWS ONLY

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_campanas_puntos_by_ticket_ids]...';


GO
-- =============================================
-- Author:          Giordan Arredondo
-- Create date:     04/09/2025
-- Description:     Listar puntos por lista de IDs
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_campanas_puntos_by_ticket_ids]
    @POINTS_IDS         dbo.PointsIdList READONLY,
    @ID_EMPRESA         INT = NULL,
    @ID_CAMPANA         INT = NULL,
    @TIPO_DOCUMENTO     INT = NULL,
    @NUMERO_DOCUMENTO   NVARCHAR(20) = NULL
AS
BEGIN
    SET NOCOUNT ON;

  ;WITH DataCampanas as (    
    SELECT 
        ROW_NUMBER() OVER(ORDER BY C.ID_CAMPANA DESC) AS ROW_INDEX 
        ,C.ID_CAMPANA
        ,CLC.[ID_CLIENTE_CAMPANA]
        ,CLC.[NOMBRES] + ' ' + CLC.[APELLIDO_PATERNO] + ' ' + CLC.[APELLIDO_MATERNO] AS CLIENTE
        ,CLC.[ID_CLIENTE]
        ,CLC.[ID_TIPO_DOCUMENTO] AS TIPO_DOCUMENTO
        ,TD.[DESCRIPCION] AS TIPO_DOCUMENTO_NOMBRE
        ,CLC.[NUMERO_DOCUMENTO]
        ,E.[ID_EMPRESA] 
        ,E.[DESCRIPCION] AS EMPRESA
        ,C.[NOMBRE] AS CAMPANA
        ,C.[FECHA_INICIO]
        ,C.[FECHA_FIN]
        -- Sumar todos los puntos por cliente-campaña para consolidar
        ,SUM(CLCP.[PUNTOS_TOTALES]) AS PUNTOS
    FROM [dbo].[campana] C WITH(NOLOCK)
    INNER JOIN [dbo].[empresa] E WITH(NOLOCK) on C.ID_EMPRESA = E.ID_EMPRESA
        LEFT JOIN [dbo].[cliente_campana] CLC WITH(NOLOCK) on CLC.ID_CAMPANA = C.ID_CAMPANA
        LEFT JOIN [dbo].[tipo_documento] TD WITH(NOLOCK) on TD.ID_TIPO_DOCUMENTO = CLC.ID_TIPO_DOCUMENTO
        LEFT JOIN [dbo].[cliente_campana_puntos] CLCP WITH(NOLOCK) on CLCP.ID_CLIENTE_CAMPANA = CLC.ID_CLIENTE_CAMPANA
    WHERE 
        C.[ID_CAMPANA_ESTADO] != 4 
        AND CLCP.PUNTOS_TOTALES IS NOT NULL
        AND C.[TIPO_CAMPANA_ESTRATEGICA] = 1
        AND (
            NOT EXISTS (SELECT 1 FROM @POINTS_IDS) 
            OR CLC.ID_CLIENTE_CAMPANA  IN (SELECT ID FROM @POINTS_IDS)
        )
        AND (C.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA = 0 OR @ID_EMPRESA is null)
        AND (C.ID_CAMPANA = @ID_CAMPANA OR @ID_CAMPANA = 0 OR @ID_CAMPANA is null)
		AND (CLC.ID_TIPO_DOCUMENTO = @TIPO_DOCUMENTO OR @TIPO_DOCUMENTO = 0 OR @TIPO_DOCUMENTO is null)
		AND (CLC.NUMERO_DOCUMENTO = @NUMERO_DOCUMENTO OR @NUMERO_DOCUMENTO = '' OR @NUMERO_DOCUMENTO is null)
        -- Agrupar por cliente-campaña para consolidar puntos
        GROUP BY 
            C.ID_CAMPANA,
            CLC.[ID_CLIENTE_CAMPANA],
            CLC.[NOMBRES],
            CLC.[APELLIDO_PATERNO],
            CLC.[APELLIDO_MATERNO],
            CLC.[ID_CLIENTE],
            CLC.[ID_TIPO_DOCUMENTO],
            TD.[DESCRIPCION],
            CLC.[NUMERO_DOCUMENTO],
            E.[ID_EMPRESA],
            E.[DESCRIPCION],
            C.[NOMBRE],
            C.[FECHA_INICIO],
            C.[FECHA_FIN]
  )

  SELECT 
    A.ROW_INDEX
    ,A.[ID_CAMPANA]
    ,A.[ID_CLIENTE_CAMPANA]
        ,A.[CAMPANA]
    ,A.[ID_EMPRESA]
        ,A.[EMPRESA]
    ,A.[FECHA_INICIO]
    ,A.[FECHA_FIN]
        ,A.[ID_CLIENTE]
        ,A.[CLIENTE]
        ,A.[TIPO_DOCUMENTO]
        ,A.[TIPO_DOCUMENTO_NOMBRE]
        ,A.[NUMERO_DOCUMENTO]
        ,A.[PUNTOS]
  FROM DataCampanas A
  ORDER BY A.ID_CAMPANA DESC

  
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_campanas_puntos_descarga]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2022
-- Description:     Listar puntos por campanas para descarga (Modificado para agrupar puntos por cliente-campaña)
-- EXEC [dbo].[sp_get_campanas_puntos_descarga] 
-- =============================================
CREATE   PROCEDURE [dbo].[sp_get_campanas_puntos_descarga]
	@ID_EMPRESA			INT = NULL,
    @ID_CAMPANA			INT = NULL,
    @FECHA_INICIO		DATETIME = NULL,
    @FECHA_FIN			DATETIME = NULL,
    @TIPO_DOCUMENTO		INT = NULL,
    @NUMERO_DOCUMENTO	VARCHAR = NULL
AS
BEGIN
	;WITH DataCampanas as (		
		SELECT ROW_NUMBER() OVER(ORDER BY C.ID_CAMPANA DESC) AS ROW_INDEX 
            ,C.ID_CAMPANA
            ,CLC.[NOMBRES] AS CLIENTE
            ,CLC.[ID_CLIENTE]
            ,CLC.[ID_TIPO_DOCUMENTO] AS TIPO_DOCUMENTO
            ,TD.[DESCRIPCION] AS TIPO_DOCUMENTO_NOMBRE
            ,CLC.[NUMERO_DOCUMENTO]
            ,E.[ID_EMPRESA] 
			,E.[DESCRIPCION] AS EMPRESA
			,C.[NOMBRE] AS CAMPANA
			,C.[FECHA_INICIO]
			,C.[FECHA_FIN]
            -- Sumar todos los puntos por cliente-campaña para consolidar
            ,SUM(CLCP.[PUNTOS_TOTALES]) AS PUNTOS
		FROM [dbo].[campana] C WITH(NOLOCK)
		INNER JOIN [dbo].[empresa] E WITH(NOLOCK) on C.ID_EMPRESA = E.ID_EMPRESA
        LEFT JOIN [dbo].[cliente_campana] CLC WITH(NOLOCK) on CLC.ID_CAMPANA = C.ID_CAMPANA
        LEFT JOIN [dbo].[tipo_documento] TD WITH(NOLOCK) on TD.ID_TIPO_DOCUMENTO = CLC.ID_TIPO_DOCUMENTO
        LEFT JOIN [dbo].[cliente_campana_puntos] CLCP WITH(NOLOCK) on CLCP.ID_CLIENTE_CAMPANA = CLC.ID_CLIENTE_CAMPANA
		WHERE C.[ID_CAMPANA_ESTADO] != 4 AND CLCP.PUNTOS_TOTALES IS NOT NULL
			AND (C.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA = 0 OR @ID_EMPRESA is null)
			AND (C.ID_CAMPANA = @ID_CAMPANA OR @ID_CAMPANA = 0 OR @ID_CAMPANA is null)
			AND  (
			  --solo fecha inicio
			  (
				@FECHA_INICIO is not null and @FECHA_FIN is null and 
					(
						(C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO >= @FECHA_INICIO)
					)
			  )
			  OR  --solo fecha fin
			  (
				@FECHA_INICIO is null and @FECHA_FIN is not null and
					(
						(C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN > @FECHA_FIN)
					)
			  )
			  OR  --rango
			  (
				@FECHA_INICIO is not null and @FECHA_FIN is not null and
					(
						(C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_FIN < DATEADD(Day, 1, @FECHA_FIN))
					)
			  )
			  OR --ninguno
			  (
				@FECHA_INICIO is null and @FECHA_FIN is null
			  )
			  	  
			  )
        -- Agrupar por cliente-campaña para consolidar puntos
        GROUP BY 
            C.ID_CAMPANA,
            CLC.[NOMBRES],
            CLC.[APELLIDO_PATERNO],
            CLC.[APELLIDO_MATERNO],
            CLC.[ID_CLIENTE],
            CLC.[ID_TIPO_DOCUMENTO],
            TD.[DESCRIPCION],
            CLC.[NUMERO_DOCUMENTO],
            E.[ID_EMPRESA],
            E.[DESCRIPCION],
            C.[NOMBRE],
            C.[FECHA_INICIO],
            C.[FECHA_FIN]
	)

	SELECT 
		A.ROW_INDEX
		,A.[ID_CAMPANA]
        ,A.[CAMPANA]
		,A.[ID_EMPRESA]
        ,A.[EMPRESA]
		,A.[FECHA_INICIO]
		,A.[FECHA_FIN]
        ,A.[ID_CLIENTE]
        ,A.[CLIENTE]
        ,A.[TIPO_DOCUMENTO]
        ,A.[TIPO_DOCUMENTO_NOMBRE]
        ,A.[NUMERO_DOCUMENTO]
        ,A.[PUNTOS]
	FROM DataCampanas A
	ORDER BY A.ID_CAMPANA DESC

	
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_campanas_tickets]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2022
-- Description:     Listar tickets or campanas
-- EXEC [dbo].[sp_get_campanas_tickets] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_campanas_tickets]
	@PAGE_SIZE			INT,
	@PAGE_INDEX			INT,
	@ID_EMPRESA			INT = NULL,
    @ID_CAMPANA			INT = NULL,
    @FECHA_INICIO		DATETIME = NULL,
    @FECHA_FIN			DATETIME = NULL,
    @TIPO_DOCUMENTO		INT = NULL,
    @NUMERO_DOCUMENTO	NVARCHAR(20) = NULL
AS
BEGIN
	;WITH DataCampanas as (		
		SELECT ROW_NUMBER() OVER(ORDER BY C.ID_CAMPANA DESC) AS ROW_INDEX 
            ,C.ID_CAMPANA
            ,CLC.[NOMBRES] + ' ' + CLC.[APELLIDO_PATERNO] + ' ' + CLC.[APELLIDO_MATERNO] AS CLIENTE
            ,CLC.[ID_CLIENTE]
            ,CLC.[ID_TIPO_DOCUMENTO] AS TIPO_DOCUMENTO
            ,TD.[DESCRIPCION] AS TIPO_DOCUMENTO_NOMBRE
            ,CLC.[NUMERO_DOCUMENTO]
            ,E.[ID_EMPRESA] 
			,E.[DESCRIPCION] AS EMPRESA
			,C.[NOMBRE] AS CAMPANA
            ,CASE 
                WHEN COM.[INGRESO_MANUAL]  = 1 THEN 'Manual'
                WHEN COM.[INGRESO_MANUAL]  = 0 THEN 'QR'
            END AS MODO_CAPTURA
            ,COM.[ID_ARCHIVO] AS ID_TICKET
            ,CASE 
			    WHEN COM.[INGRESO_MANUAL] = 1 
			    	THEN A.[NOMBRE] 
			    WHEN COM.[INGRESO_MANUAL] = 0 
			    	THEN CAST(COM.[SERIE] AS NVARCHAR(50)) + '-' + CAST(COM.[CORRELATIVO] AS NVARCHAR(50))
			END AS TICKET
            ,COM.[FECHA_CREACION] AS FECHA_REGISTRO
            ,COM.[FECHA_EMISION]  AS FECHA_COMPRA 
            ,COM.[MONEDA]
            ,COM.[MONTO_TOTAL] AS MONTO  
            ,COM.ID_COMPROBANTE
            ,COM.RUC
            ,COM.IGV
            ,T.[NOMBRE] AS TIENDA
			,C.[FECHA_INICIO]
			,C.[FECHA_FIN]
            ,COMP.[PUNTOS_OTORGADOS] AS PUNTOS
		FROM [dbo].[campana] C WITH(NOLOCK)
		INNER JOIN [dbo].[empresa] E WITH(NOLOCK) on C.ID_EMPRESA = E.ID_EMPRESA
        LEFT JOIN [dbo].[cliente_campana] CLC WITH(NOLOCK) on CLC.ID_CAMPANA = C.ID_CAMPANA
        INNER JOIN [dbo].[comprobante] COM WITH(NOLOCK) on COM.ID_CLIENTE_CAMPANA = CLC.ID_CLIENTE_CAMPANA
        LEFT JOIN [dbo].[comprobante_puntos] COMP WITH(NOLOCK) on COMP.ID_COMPROBANTE = COM.ID_COMPROBANTE
        LEFT JOIN [dbo].[tienda] T WITH(NOLOCK) on T.ID_TIENDA = COM.ID_TIENDA
        LEFT JOIN [dbo].[tipo_documento] TD WITH(NOLOCK) on TD.ID_TIPO_DOCUMENTO = CLC.ID_TIPO_DOCUMENTO
        LEFT JOIN [dbo].[archivo] A WITH(NOLOCK) on A.ID_ARCHIVO = COM.ID_ARCHIVO 
		WHERE C.[ID_CAMPANA_ESTADO] != 4 AND CLC.[ID_CLIENTE] IS NOT NULL
			AND C.[TIPO_CAMPANA_ESTRATEGICA] = 1
			AND (C.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA = 0 OR @ID_EMPRESA is null)
			AND (C.ID_CAMPANA = @ID_CAMPANA OR @ID_CAMPANA = 0 OR @ID_CAMPANA is null)
			AND (CLC.ID_TIPO_DOCUMENTO = @TIPO_DOCUMENTO OR @TIPO_DOCUMENTO = 0 OR @TIPO_DOCUMENTO is null)
			AND (CLC.NUMERO_DOCUMENTO = @NUMERO_DOCUMENTO OR @NUMERO_DOCUMENTO = '' OR @NUMERO_DOCUMENTO is null)
            AND (
                (@FECHA_INICIO IS NULL OR COM.FECHA_EMISION >= @FECHA_INICIO)
                AND (@FECHA_FIN IS NULL OR COM.FECHA_EMISION < DATEADD(DAY, 1, @FECHA_FIN))
            )
	)
	, CountDataCampanas AS (SELECT COUNT(*) AS ROWS_COUNT FROM DataCampanas)

	SELECT 
		A.ROW_INDEX
		,B.ROWS_COUNT
		,@PAGE_SIZE AS PAGE_SIZE
		,@PAGE_INDEX AS PAGE_INDEX
		,A.[ID_CAMPANA]
        ,A.[CAMPANA]
		,A.[ID_EMPRESA]
        ,A.[EMPRESA]
		,A.[FECHA_INICIO]
		,A.[FECHA_FIN]
        ,A.[ID_CLIENTE]
        ,A.[CLIENTE]
        ,A.[TIPO_DOCUMENTO]
        ,A.[TIPO_DOCUMENTO_NOMBRE]
        ,A.[NUMERO_DOCUMENTO]
        ,A.[MODO_CAPTURA]
        ,A.[ID_TICKET]
        ,A.[TICKET]
        ,A.[FECHA_REGISTRO]
        ,A.[FECHA_COMPRA]
        ,A.[MONEDA]
        ,A.[MONTO]
        ,A.[ID_COMPROBANTE]
        ,A.[TIENDA]
		,A.[RUC]
        ,A.[IGV]
        ,A.[PUNTOS]
	FROM DataCampanas A
	CROSS JOIN CountDataCampanas B
	ORDER BY A.ID_CAMPANA DESC

	OFFSET ((@PAGE_INDEX + 1) - 1) * @PAGE_SIZE ROWS
	FETCH NEXT @PAGE_SIZE ROWS ONLY
	
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_campanas_tickets_by_ticket_ids]...';


GO

-- =============================================
-- Author:          Carlos Lazaro
-- Create date:     03/09/2025
-- Description:     Listar tickets por lista de IDs
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_campanas_tickets_by_ticket_ids]
    @TICKET_IDS         dbo.TicketIdList READONLY,
    @ID_EMPRESA         INT = NULL,
    @ID_CAMPANA         INT = NULL,
    @FECHA_INICIO       DATETIME = NULL,
    @FECHA_FIN          DATETIME = NULL,
    @TIPO_DOCUMENTO     INT = NULL,
    @NUMERO_DOCUMENTO   NVARCHAR(20) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    ;WITH DataCampanas AS (
        SELECT  
            C.ID_CAMPANA,
            CLC.[NOMBRES] + ' ' + CLC.[APELLIDO_PATERNO] + ' ' + CLC.[APELLIDO_MATERNO] AS CLIENTE,
            CLC.[ID_CLIENTE],
            CLC.[ID_TIPO_DOCUMENTO] AS TIPO_DOCUMENTO,
            TD.[DESCRIPCION] AS TIPO_DOCUMENTO_NOMBRE,
            CLC.[NUMERO_DOCUMENTO],
            E.[ID_EMPRESA],
            E.[DESCRIPCION] AS EMPRESA,
            C.[NOMBRE] AS CAMPANA,
            CASE 
                WHEN COM.[INGRESO_MANUAL] = 1 THEN 'Manual'
                WHEN COM.[INGRESO_MANUAL] = 0 THEN 'QR'
            END AS MODO_CAPTURA,
            COM.[ID_ARCHIVO] AS ID_TICKET,
            CASE 
                WHEN COM.[INGRESO_MANUAL] = 1 
                    THEN A.[NOMBRE] 
                WHEN COM.[INGRESO_MANUAL] = 0 
                    THEN CAST(COM.[SERIE] AS NVARCHAR(50)) + '-' + CAST(COM.[CORRELATIVO] AS NVARCHAR(50))
            END AS TICKET,
            COM.[FECHA_CREACION] AS FECHA_REGISTRO,
            COM.[FECHA_EMISION]  AS FECHA_COMPRA,
            COM.[MONEDA],
            COM.[MONTO_TOTAL] AS MONTO,
            T.[NOMBRE] AS TIENDA,
            C.[FECHA_INICIO],
            C.[FECHA_FIN],
            COMP.[PUNTOS_OTORGADOS] AS PUNTOS,
            COM.[SERIE],
            COM.[CORRELATIVO],
            COM.[IGV],
            COM.[TIPO_DOCUMENTO_CLIENTE],
            COM.[DOCUMENTO_CLIENTE],
            COM.[TIPO_COMPROBANTE],
            COM.[RUC]
        FROM [dbo].[campana] C WITH(NOLOCK)
        INNER JOIN [dbo].[empresa] E WITH(NOLOCK) ON C.ID_EMPRESA = E.ID_EMPRESA
        LEFT JOIN [dbo].[cliente_campana] CLC WITH(NOLOCK) ON CLC.ID_CAMPANA = C.ID_CAMPANA
        INNER JOIN [dbo].[comprobante] COM WITH(NOLOCK) ON COM.ID_CLIENTE_CAMPANA = CLC.ID_CLIENTE_CAMPANA
        LEFT JOIN [dbo].[comprobante_puntos] COMP WITH(NOLOCK) ON COMP.ID_COMPROBANTE = COM.ID_COMPROBANTE
        LEFT JOIN [dbo].[tienda] T WITH(NOLOCK) ON T.ID_TIENDA = COM.ID_TIENDA
        LEFT JOIN [dbo].[tipo_documento] TD WITH(NOLOCK) ON TD.ID_TIPO_DOCUMENTO = CLC.ID_TIPO_DOCUMENTO
        LEFT JOIN [dbo].[archivo] A WITH(NOLOCK) ON A.ID_ARCHIVO = COM.ID_ARCHIVO 
        WHERE 
            C.[ID_CAMPANA_ESTADO] != 4
            AND CLC.[ID_CLIENTE] IS NOT NULL
            AND C.[TIPO_CAMPANA_ESTRATEGICA] = 1

            -- Filtro dinámico por lista de tickets
            AND (
                NOT EXISTS (SELECT 1 FROM @TICKET_IDS) 
                OR COM.ID_COMPROBANTE IN (SELECT ID FROM @TICKET_IDS)
            )

            AND (C.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA = 0 OR @ID_EMPRESA is null)
			AND (C.ID_CAMPANA = @ID_CAMPANA OR @ID_CAMPANA = 0 OR @ID_CAMPANA is null)
			AND (CLC.ID_TIPO_DOCUMENTO = @TIPO_DOCUMENTO OR @TIPO_DOCUMENTO = 0 OR @TIPO_DOCUMENTO is null)
			AND (CLC.NUMERO_DOCUMENTO = @NUMERO_DOCUMENTO OR @NUMERO_DOCUMENTO = '' OR @NUMERO_DOCUMENTO is null)
            AND (
                (@FECHA_INICIO IS NULL OR COM.FECHA_EMISION >= @FECHA_INICIO)
                AND (@FECHA_FIN IS NULL OR COM.FECHA_EMISION < DATEADD(DAY, 1, @FECHA_FIN))
            )
    )
    SELECT 
        A.[ID_CAMPANA],
        A.[CAMPANA],
        A.[ID_EMPRESA],
        A.[EMPRESA],
        A.[FECHA_INICIO],
        A.[FECHA_FIN],
        A.[ID_CLIENTE],
        A.[CLIENTE],
        A.[TIPO_DOCUMENTO],
        A.[TIPO_DOCUMENTO_NOMBRE],
        A.[NUMERO_DOCUMENTO],
        A.[MODO_CAPTURA],
        A.[ID_TICKET],
        A.[TICKET],
        A.[FECHA_REGISTRO],
        A.[FECHA_COMPRA],
        A.[MONEDA],
        A.[MONTO],
        A.[TIENDA],
        A.[PUNTOS],
        A.[SERIE],
        A.[CORRELATIVO],
        A.[IGV],
        A.[TIPO_DOCUMENTO_CLIENTE],
        A.[DOCUMENTO_CLIENTE],
        A.[TIPO_COMPROBANTE],
        A.[RUC]
    FROM DataCampanas A
    ORDER BY A.ID_CAMPANA DESC;
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_campanas_tickets_descarga]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2022
-- Description:     Listar tickets or campanas
-- EXEC [dbo].[sp_get_campanas_tickets_descarga] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_campanas_tickets_descarga]
	@ID_EMPRESA			INT = NULL,
    @ID_CAMPANA			INT = NULL,
    @FECHA_INICIO		DATETIME = NULL,
    @FECHA_FIN			DATETIME = NULL,
    @TIPO_DOCUMENTO		INT = NULL,
    @NUMERO_DOCUMENTO	VARCHAR = NULL
AS
BEGIN
	;WITH DataCampanas as (		
		SELECT ROW_NUMBER() OVER(ORDER BY C.ID_CAMPANA DESC) AS ROW_INDEX 
            ,C.ID_CAMPANA
            ,CLC.[NOMBRES] AS CLIENTE
            ,CLC.[ID_CLIENTE]
            ,CLC.[ID_TIPO_DOCUMENTO] AS TIPO_DOCUMENTO
            ,TD.[DESCRIPCION] AS TIPO_DOCUMENTO_NOMBRE
            ,CLC.[NUMERO_DOCUMENTO]
            ,E.[ID_EMPRESA] 
			,E.[DESCRIPCION] AS EMPRESA
			,C.[NOMBRE] AS CAMPANA
            ,CASE 
                WHEN COM.[INGRESO_MANUAL]  = 1 THEN 'Manual'
                WHEN COM.[INGRESO_MANUAL]  = 0 THEN 'QR'
            END AS MODO_CAPTURA
            ,COM.[NOMBRE_IMAGEN] AS TICKET
            ,COM.[FECHA_CREACION] AS FECHA_REGISTRO
            ,COM.[FECHA_EMISION]  AS FECHA_COMPRA 
            ,COM.[MONEDA]
            ,COM.[MONTO_TOTAL] AS MONTO  
            ,T.[NOMBRE] AS TIENDA
			,C.[FECHA_INICIO]
			,C.[FECHA_FIN]
            ,COMP.[PUNTOS_OTORGADOS] AS PUNTOS
		FROM [dbo].[campana] C WITH(NOLOCK)
		INNER JOIN [dbo].[empresa] E WITH(NOLOCK) on C.ID_EMPRESA = E.ID_EMPRESA
        LEFT JOIN [dbo].[cliente_campana] CLC WITH(NOLOCK) on CLC.ID_CAMPANA = C.ID_CAMPANA
        LEFT JOIN [dbo].[comprobante] COM WITH(NOLOCK) on COM.ID_CLIENTE_CAMPANA = CLC.ID_CLIENTE_CAMPANA
        LEFT JOIN [dbo].[comprobante_puntos] COMP WITH(NOLOCK) on COMP.ID_COMPROBANTE = COM.ID_COMPROBANTE
        LEFT JOIN [dbo].[tienda] T WITH(NOLOCK) on T.ID_TIENDA = COM.ID_TIENDA
        LEFT JOIN [dbo].[tipo_documento] TD WITH(NOLOCK) on TD.ID_TIPO_DOCUMENTO = CLC.ID_TIPO_DOCUMENTO
		WHERE C.[ID_CAMPANA_ESTADO] != 4 AND CLC.[ID_CLIENTE] IS NOT NULL AND COM.[ID_ARCHIVO] IS NOT NULL
			AND C.[TIPO_CAMPANA_ESTRATEGICA] = 1
			AND (C.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA = 0 OR @ID_EMPRESA is null)
			AND (C.ID_CAMPANA = @ID_CAMPANA OR @ID_CAMPANA = 0 OR @ID_CAMPANA is null)
			AND  (
			  --solo fecha inicio
			  (
				@FECHA_INICIO is not null and @FECHA_FIN is null and 
					(
						(C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO >= @FECHA_INICIO)
					)
			  )
			  OR  --solo fecha fin
			  (
				@FECHA_INICIO is null and @FECHA_FIN is not null and
					(
						(C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN > @FECHA_FIN)
					)
			  )
			  OR  --rango
			  (
				@FECHA_INICIO is not null and @FECHA_FIN is not null and
					(
						(C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_INICIO < DATEADD(Day, 1, @FECHA_FIN) and C.FECHA_FIN is null)
						OR (C.FECHA_INICIO >= @FECHA_INICIO and C.FECHA_FIN < DATEADD(Day, 1, @FECHA_FIN))
					)
			  )
			  OR --ninguno
			  (
				@FECHA_INICIO is null and @FECHA_FIN is null
			  )
			  	  
			  )
	)


	SELECT 
		A.ROW_INDEX
		,A.[ID_CAMPANA]
        ,A.[CAMPANA]
		,A.[ID_EMPRESA]
        ,A.[EMPRESA]
		,A.[FECHA_INICIO]
		,A.[FECHA_FIN]
        ,A.[ID_CLIENTE]
        ,A.[CLIENTE]
        ,A.[TIPO_DOCUMENTO]
        ,A.[TIPO_DOCUMENTO_NOMBRE]
        ,A.[NUMERO_DOCUMENTO]
        ,A.[MODO_CAPTURA]
        ,A.[TICKET]
        ,A.[FECHA_REGISTRO]
        ,A.[FECHA_COMPRA]
        ,A.[MONEDA]
        ,A.[MONTO]
        ,A.[TIENDA]
        ,A.[PUNTOS]
	FROM DataCampanas A
	ORDER BY A.ID_CAMPANA DESC
	
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_categorias_documentos_legales]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2022
-- Description:     Listar campanas 
-- EXEC [dbo].[sp_get_categorias_documentos_legales]
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_categorias_documentos_legales]
	@PAGE_SIZE			INT,
	@PAGE_INDEX			INT,
    @NOMBRE				NVARCHAR(100) = null,
    @PAGINADO			INT=1
AS
BEGIN
    IF @PAGINADO = 1
    BEGIN
    ;WITH DataCategorias as (		
		SELECT ROW_NUMBER() OVER(ORDER BY C.ID_CATEGORIA_DOCUMENTO_LEGAL DESC) AS ROW_INDEX 
			,C.[ID_CATEGORIA_DOCUMENTO_LEGAL]
			,C.[NOMBRE]
		FROM [dbo].[categoria_documento_legal] C WITH(NOLOCK)
		WHERE
			(C.NOMBRE LIKE '%' + ltrim(rtrim(@NOMBRE)) + '%' OR @NOMBRE is null)
            AND C.VIGENTE = 1

	)
	, CountDataCategorias AS (SELECT COUNT(*) AS ROWS_COUNT FROM DataCategorias)

	SELECT 
		A.ROW_INDEX
		,A.[ID_CATEGORIA_DOCUMENTO_LEGAL]
		,B.ROWS_COUNT
		,@PAGE_SIZE AS PAGE_SIZE
		,@PAGE_INDEX AS PAGE_INDEX
		,A.[NOMBRE]
	FROM DataCategorias A
	CROSS JOIN CountDataCategorias B
	ORDER BY A.ID_CATEGORIA_DOCUMENTO_LEGAL DESC

	OFFSET ((@PAGE_INDEX + 1) - 1) * @PAGE_SIZE ROWS
	FETCH NEXT @PAGE_SIZE ROWS ONLY
    END
    ELSE
    BEGIN
    SELECT ROW_NUMBER() OVER(ORDER BY C.ID_CATEGORIA_DOCUMENTO_LEGAL DESC) AS ROW_INDEX 
			,C.[ID_CATEGORIA_DOCUMENTO_LEGAL]
			,C.[NOMBRE]
		FROM [dbo].[categoria_documento_legal] C WITH(NOLOCK)
		WHERE
			(C.NOMBRE LIKE '%' + ltrim(rtrim(@NOMBRE)) + '%' OR @NOMBRE is null)
            AND C.VIGENTE = 1
    END
	
	
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_cliente_campana_por_documento_web]...';


GO
/*
=============================================================================
Procedimiento: sp_get_cliente_campana_por_documento_web
=============================================================================
Descripción: 
Obtiene el registro más reciente de cliente_campana por tipo y número de documento
y opcionalmente filtrado por campaña.
Primero busca el cliente más reciente con el documento especificado y luego
obtiene su participación más reciente en una campaña.

Parámetros:
- @ID_TIPO_DOCUMENTO: ID del tipo de documento
- @NUMERO_DOCUMENTO: Número de documento del cliente
- @ID_CAMPANA: (Opcional) ID de la campaña para filtrar los resultados

Retorno:
- El registro más reciente de cliente_campana asociado al cliente con el tipo 
  y número de documento especificados, y opcionalmente filtrado por campaña

Ejemplos de uso:
- Obtener un cliente específico por su documento:
  EXEC sp_get_cliente_campana_por_documento_web 1, '12345678', NULL
  
- Obtener un cliente específico por su documento y campaña:
  EXEC sp_get_cliente_campana_por_documento_web 1, '12345678', 5

Historial de cambios:
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Agregado parámetro @ID_CAMPANA opcional para filtrar por campaña
- Fecha: 2025-07-22 | Autor: Carlos Lázaro | Descripción: Modificación para considerar FECHA_MODIFICACION y obtener solo el registro más reciente
- Fecha: 2025-07-22 | Autor: Carlos Lázaro | Descripción: Modificación para buscar primero en cliente y ordenar resultados por fecha descendente
- Fecha: 2025-07-22 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_cliente_campana_por_documento_web
    @ID_TIPO_DOCUMENTO INT,
    @NUMERO_DOCUMENTO NVARCHAR(20),
    @ID_CAMPANA INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Declarar variable para almacenar el ID_CLIENTE
        DECLARE @ID_CLIENTE INT;
        
        -- Obtener el ID_CLIENTE más reciente que coincida con el tipo y número de documento
        -- Considerando primero FECHA_MODIFICACION (si no es NULL) y luego FECHA_CREACION
        SELECT TOP 1 @ID_CLIENTE = c.ID_CLIENTE
        FROM cliente c
        WHERE c.ID_TIPO_DOCUMENTO = @ID_TIPO_DOCUMENTO
          AND c.NUMERO_DOCUMENTO = @NUMERO_DOCUMENTO
        ORDER BY 
            CASE WHEN c.FECHA_MODIFICACION IS NULL THEN 0 ELSE 1 END DESC,
            c.FECHA_MODIFICACION DESC,
            c.FECHA_CREACION DESC;
        
        -- Si no se encontró un cliente, retornar un conjunto vacío
        IF @ID_CLIENTE IS NULL
        BEGIN
            SELECT TOP 0 * FROM cliente_campana;
            RETURN 0;
        END
        
        -- Obtener el registro más reciente de cliente_campana asociado al ID_CLIENTE encontrado
        -- y opcionalmente filtrado por ID_CAMPANA
        -- Considerando primero FECHA_MODIFICACION (si no es NULL) y luego FECHA_CREACION
        SELECT TOP 1
            cc.ID_CLIENTE_CAMPANA,
            cc.ID_CLIENTE,
            cc.ID_CAMPANA,
            cc.ID_RED,
            cc.ID_ARCHIVO_TYC,
            cc.ID_ARCHIVO_LEY,
            cc.ACEPTO_TYC,
            cc.CONFIRMADO,
            cc.ID_TIPO_DOCUMENTO,
            cc.NUMERO_DOCUMENTO,
            cc.NOMBRES,
            cc.APELLIDO_PATERNO,
            cc.APELLIDO_MATERNO,
            cc.CORREO,
            cc.CELULAR,
            cc.COD_DEPARTAMENTO,
            cc.COD_PROVINCIA,
            cc.COD_DISTRITO,
            cc.DIRECCION,
            cc.MAPS_X,
            cc.MAPS_Y,
            cc.VIGENTE,
            cc.IP_CLIENTE,
            cc.ID_ARCHIVO_LEY_EXTRA,
            cc.ACEPTO_LEY_EXTRA,
            cc.FECHA_CREACION,
            cc.FECHA_MODIFICACION,
            cc.OBLIGATORIO_TYC,
            cc.OBLIGATORIO_LEY,
            cc.OBLIGATORIO_LEY_EXTRA,
            cc.HABILITAR_SUBCAMPANAS,
            cc.ID_SUBCAMPANA
        FROM cliente_campana cc
        WHERE cc.ID_CLIENTE = @ID_CLIENTE
          AND (@ID_CAMPANA IS NULL OR cc.ID_CAMPANA = @ID_CAMPANA)
        ORDER BY 
            CASE WHEN cc.FECHA_MODIFICACION IS NULL THEN 0 ELSE 1 END DESC,
            cc.FECHA_MODIFICACION DESC,
            cc.FECHA_CREACION DESC;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_cupon]...';


GO
/*
==============================================================================
Procedimiento: sp_get_cupon
Descripción: Obtiene el registro completo del cupón asignado a un cliente específico
             para una campaña y tienda determinada
Parámetros:
    - @ID_CLIENTE: ID del cliente
    - @ID_CAMPANA: ID de la campaña
    - @ID_TIENDA: ID de la tienda
Retorno:
    - Registro completo del cupón si existe
    - Conjunto vacío si no se encuentra cupón asignado
Ejemplos de uso:
    EXEC sp_get_cupon 
        @ID_CLIENTE = 1,
        @ID_CAMPANA = 1,
        @ID_TIENDA = 1;
Historial de cambios:
- 27-08-2025 | Carlos Lazaro | Creación inicial
- 27-08-2025 | Carlos Lazaro | Refactorización para retornar registro completo
==============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_get_cupon]
    @ID_CLIENTE INT,
    @ID_CAMPANA INT,
    @ID_TIENDA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        
        SELECT TOP 1 c.*
        FROM [dbo].[cupon] c
        INNER JOIN [dbo].[campana_cliente_cupon] ccc ON ccc.[ID_CUPON] = c.[ID_CUPON]
        WHERE ccc.[ID_CLIENTE] = @ID_CLIENTE
          AND ccc.[ID_CAMPANA] = @ID_CAMPANA
          AND ccc.[ID_TIENDA] = @ID_TIENDA
        ORDER BY ccc.[FECHA_CREACION] DESC;
        
    END TRY
    BEGIN CATCH
        
        -- Re-lanzar el error
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_cupon_campana_por_id]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/05/2025
-- Description:     Obtener cupon
-- EXEC [dbo].[sp_get_cupon_campana_por_id] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_cupon_campana_por_id]
	@ID_CAMPANA_CUPON	INT
AS
BEGIN

	SELECT	TOP 1
        C.[ID_CUPON]
		,C.[DESCRIPCION]
        ,C.[NOMBRE]
        ,C.[ID_IMAGEN_CUPON]
        ,C.[REDIRECT_URL]
	FROM [dbo].[campana_cupon_tienda] CCT WITH(NOLOCK)
	LEFT JOIN [dbo].[cupon] C WITH(NOLOCK) on C.ID_CUPON = CCT.ID_CUPON
	WHERE CCT.ID_CAMPANA_CUPON_TIENDA = @ID_CAMPANA_CUPON

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_cupones_por_campana]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/08/2025
-- Description:     Listar cupones por campana
-- EXEC [dbo].[sp_get_cupones_por_campana] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_cupones_por_campana]
	@PAGE_SIZE			INT,
	@PAGE_INDEX			INT,
	@ID_CAMPANA  		INT 
AS
BEGIN
	;WITH DataCupones as (		
		SELECT ROW_NUMBER() OVER(ORDER BY CCC.ID_CAMPANA_CUPON_TIENDA DESC) AS ROW_INDEX 
			,CCC.[ID_CAMPANA_CUPON_TIENDA]
			,C.[NOMBRE]
            ,C.[ID_CUPON]
            ,C.[DESCRIPCION]
            ,C.[REDIRECT_URL]
            ,C.[ID_IMAGEN_CUPON]
            ,T.[ID_TIENDA]
            ,T.[NOMBRE] AS TIENDA
			,A.NOMBRE AS NOMBRE_IMAGEN
			,A.RUTA
            ,CCC.[ID_CAMPANA]
		FROM [dbo].[campana_cupon_tienda] CCC WITH(NOLOCK)
		LEFT JOIN [dbo].[cupon] C WITH(NOLOCK) on C.ID_CUPON = CCC.ID_CUPON
        LEFT JOIN [dbo].[tienda] T WITH(NOLOCK) on T.ID_TIENDA = CCC.ID_TIENDA
		LEFT JOIN [dbo].[archivo] A WITH(NOLOCK) on A.ID_ARCHIVO = c.ID_IMAGEN_CUPON
        WHERE CCC.ID_CAMPANA=@ID_CAMPANA AND C.VIGENTE = 1

	)
	, CountDataCupones AS (SELECT COUNT(*) AS ROWS_COUNT FROM DataCupones)

	SELECT 
		A.ROW_INDEX
		,B.ROWS_COUNT
		,@PAGE_SIZE AS PAGE_SIZE
		,@PAGE_INDEX AS PAGE_INDEX
		,A.[ID_CAMPANA_CUPON_TIENDA]
		,A.[NOMBRE]
        ,A.[ID_CUPON]
        ,A.[DESCRIPCION]
        ,A.[REDIRECT_URL]
        ,A.[ID_IMAGEN_CUPON]
        ,A.[ID_TIENDA]
        ,A.[TIENDA]
		,A.[NOMBRE_IMAGEN]
		,A.[RUTA]
        ,A.[ID_CAMPANA]
	FROM DataCupones A
	CROSS JOIN CountDataCupones B
	ORDER BY A.ID_CAMPANA_CUPON_TIENDA DESC

	OFFSET ((@PAGE_INDEX + 1) - 1) * @PAGE_SIZE ROWS
	FETCH NEXT @PAGE_SIZE ROWS ONLY
	
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_dato_capturado_por_campana_nuevo]...';


GO
/*
=============================================================================
Procedimiento: sp_get_dato_capturado_por_campana_nuevo
=============================================================================
Descripción: 
Obtiene los datos capturados de los clientes de una campaña específica,
incluyendo documentos legales dinámicos y datos captura configurados para la campaña.
Este procedimiento genera columnas dinámicamente basadas en:
1. Documentos legales asociados a la campaña
2. Datos captura fijos (DOCUMENTO, NOMBRES, APELLIDO_PATERNO, etc.)
3. Datos captura variables configurados específicamente para la campaña

Parámetros de entrada:
- @ID_CAMPANA: ID de la campaña para obtener los datos capturados

Parámetros de salida:
- Ninguno (procedimiento de consulta)

Retorno:
- Dataset con información completa de clientes, documentos legales y datos captura dinámicos
- Columnas base: ID_CLIENTE_CAMPANA, ID_CLIENTE, CONFIRMADO, MULTI_REGISTRO_CLIENTES, 
  ID_TIPO_DOCUMENTO, TIPO_DOCUMENTO, NUMERO_DOCUMENTO, NOMBRES, APELLIDO_PATERNO, 
  APELLIDO_MATERNO, CORREO, CELULAR, COD_DEPARTAMENTO, COD_PROVINCIA, COD_DISTRITO, 
  DIRECCION, MAPS_X, MAPS_Y, FECHA_CREACION, DEPARTAMENTO, PROVINCIA, DISTRITO, RED, 
  PARTICIPACION_COMPROBANTE (indica si la participación se completó exitosamente)
- Columnas dinámicas de documentos legales: OBLIGATORIEDAD_[DOCUMENTO], ACEPTO_[DOCUMENTO], ARCHIVO_[DOCUMENTO]
- Columnas dinámicas de datos captura fijos: DC_FIJO_[CODIGO_FIJO] (ej: DC_FIJO_DOCUMENTO, DC_FIJO_NOMBRES)
- Columnas dinámicas de datos captura variables: DC_VAR_[ETIQUETA] (ej: DC_VAR_EDAD, DC_VAR_PROFESION)
- Columnas adicionales: CLIENTE_NUEVO, ID_SUBCAMPANA, SUBCAMPANA

Ejemplos de uso:
- Obtener datos de campaña específica:
  EXEC [dbo].[sp_get_dato_capturado_por_campana_nuevo] 79;
  
- Para reportes Excel con columnas dinámicas:
  EXEC [dbo].[sp_get_dato_capturado_por_campana_nuevo] 123;

- Análisis de documentos legales por campaña:
  EXEC [dbo].[sp_get_dato_capturado_por_campana_nuevo] 456;

Lógica de negocio:
1. Construye dinámicamente las columnas base con información del cliente
2. Genera columnas dinámicas para cada documento legal de la campaña:
   - OBLIGATORIEDAD_[DOC]: Indica si el documento es obligatorio (SI/NO)
   - ACEPTO_[DOC]: Indica si el cliente aceptó el documento (SI/NO)
   - ARCHIVO_[DOC]: Nombre del archivo asociado al documento
3. Genera dinámicamente columnas para datos captura fijos configurados para la campaña:
   - DC_FIJO_[CODIGO_FIJO]: Valor del dato captura fijo desde cliente_campana
   - Solo incluye datos captura fijos que estén configurados en campana_datos_captura
   - Tipos disponibles: DOCUMENTO, NOMBRES, APELLIDO_PATERNO, APELLIDO_MATERNO, DIRECCION, CORREO, CELULAR, UBIGEO
4. Genera dinámicamente columnas para datos captura variables:
   - DC_VAR_[ETIQUETA]: Valor del dato captura variable desde datos_cliente_campana
   - Basado en la configuración específica de la campaña en campana_datos_captura
5. Normaliza nombres de columnas (espacios → _, acentos → sin acentos)
6. Maneja valores NULL mostrándolos como "-- SIN INFORMACION --"
7. Incluye información de ubigeo concatenado y clasificación de cliente nuevo
8. Evalúa participación completada según tipo de campaña estratégica:
   - Campaña IC (TIPO_CAMPANA_ESTRATEGICA = 2): Siempre 'NO' (no requiere comprobantes)
   - Campaña Transaccional/Marketing (TIPO_CAMPANA_ESTRATEGICA = 1): 'SI' si completó participación (subió imagen o escaneó QR), 'NO' si quedó incompleta
   - Otros tipos: Aplica lógica estándar basada en existencia de comprobantes
9. Utiliza JOINs optimizados para cada documento legal específico
10. Ordena resultados por tipo de documento, número de documento y subcampaña

Historial de cambios:
- Fecha: 2025-01-28 | Autor: Carlos Lázaro | Descripción: Añadido LEFT JOIN con comprobante para mostrar todos los registros de cliente_campana, incluyendo aquellos sin comprobantes (campañas IC y campañas de marketing sin participación). Mantenida lógica original de PARTICIPACION_COMPROBANTE que evalúa existencia de tickets por tipo de campaña.
- Fecha: 2025-01-28 | Autor: Carlos Lázaro | Descripción: Agregada columna PARTICIPACION_COMPROBANTE para indicar si la participación se completó exitosamente (subió comprobante o escaneó QR) con lógica específica por tipo de campaña estratégica (IC siempre NO, Transaccional/Marketing según existencia de comprobantes) (SI/NO)
- Fecha: 2025-01-28 | Autor: Carlos Lázaro | Descripción: Agregado ordenamiento por fecha de captura descendente (más recientes primero)
- Fecha: 2025-01-28 | Autor: Carlos Lázaro | Descripción: Corrección del ORDER BY para mantener el ordenamiento original de columnas dinámicas
- Fecha: 2025-01-28 | Autor: Carlos Lázaro | Descripción: Corrección crítica para manejar documentos con ID_DOCUMENTO_LEGAL = 0 (configurados sin documento legal asociado)
- Fecha: 2025-01-28 | Autor: Carlos Lázaro | Descripción: Remoción temporal de filtros de vigencia para incluir todos los documentos configurados
- Fecha: 2025-01-28 | Autor: Carlos Lázaro | Descripción: Corrección final en lógica de generación de columnas para mostrar documentos sin archivo
- Fecha: 2025-01-28 | Autor: Carlos Lázaro | Descripción: Corrección para incluir todos los documentos legales de la campaña independientemente de si tienen archivo asociado
- Fecha: 2025-01-28 | Autor: Carlos Lázaro | Descripción: Modificación para usar NOMBRE en lugar de RUTA en columnas ARCHIVO_
- Fecha: 2025-01-27 | Autor: Carlos Lázaro | Descripción: Implementación de generación dinámica de columnas para documentos legales
- Fecha: 2025-01-27 | Autor: Carlos Lázaro | Descripción: Optimización de JOINs y normalización de nombres de columnas
- Fecha: 2025-01-27 | Autor: Carlos Lázaro | Descripción: Creación inicial del procedimiento
- Fecha: 2025-01-15 | Autor: Carlos Lázaro | Descripción: Refactorización mayor: Agregada funcionalidad de datos captura dinámicos
  * Implementadas columnas dinámicas para datos captura fijos (DC_FIJO_[CODIGO_FIJO])
  * Implementadas columnas dinámicas para datos captura variables (DC_VAR_[ETIQUETA])
  * Integración con configuración de campaña en campana_datos_captura
  * Mantenida compatibilidad con columnas de documentos legales existentes
  * Mejorada arquitectura para soportar configuraciones flexibles de datos captura
- Fecha: 2025-01-15 | Autor: Carlos Lázaro | Descripción: Mejora en lógica de datos captura fijos: Ahora verifica configuración específica por campaña
  * Los datos captura fijos solo se incluyen si están configurados en campana_datos_captura
  * Permite mayor flexibilidad al excluir datos captura fijos no requeridos por campaña específica
- Fecha: 2025-01-15 | Autor: Carlos Lázaro | Descripción: Corrección de errores de sintaxis en SQL dinámico
  * Agregados saltos de línea apropiados en generación de columnas dinámicas
  * Corregido formato de JOINs para datos variables
  * Solucionados problemas de concatenación en consulta generada
- Fecha: 2025-01-15 | Autor: Carlos Lázaro | Descripción: Corrección adicional de sintaxis en concatenación de columnas dinámicas
  * Agregada lógica para remover comas finales en @DatosFijosColumns y @DatosVariablesColumns
  * Mejorada construcción de consulta SQL para evitar errores de sintaxis
  * Corregida concatenación condicional de columnas dinámicas
- Fecha: 2025-01-15 | Autor: Carlos Lázaro | Descripción: Reordenación específica de columnas dinámicas según posición de MAPS
  * Columnas DC_FIJO insertadas antes de MAPS_X y MAPS_Y
  * Columnas DC_VAR insertadas después de MAPS_X y MAPS_Y
  * Nuevo orden de columnas: base, DC_FIJO, MAPS_X/MAPS_Y, DC_VAR, resto de columnas, documentos legales
  * Reestructurada construcción de @selectColumns en múltiples variables para mayor flexibilidad
- Fecha: 2025-01-15 | Autor: Carlos Lázaro | Descripción: Optimización estructural de columnas dinámicas
  * Removidas columnas fijas redundantes (NUMERO_DOCUMENTO, NOMBRES, APELLIDO_PATERNO, etc.) ya manejadas dinámicamente
  * Modificado manejo de UBIGEO para generar columnas separadas: DC_FIJO_COD_DEPARTAMENTO, DC_FIJO_COD_PROVINCIA, DC_FIJO_COD_DISTRITO
  * Mantenido formato de trimming y padding para códigos de ubigeo
  * Optimizado orden de columnas: base, DC_FIJO, documentos legales, DC_VAR
=============================================================================
*/
CREATE    PROCEDURE [dbo].[sp_get_dato_capturado_por_campana_nuevo]
	@ID_CAMPANA  		INT
AS
BEGIN
		SET NOCOUNT ON;
	
	-- Variables para construcción dinámica
	DECLARE @sql NVARCHAR(MAX) = ''
	DECLARE @selectColumns NVARCHAR(MAX) = ''
	DECLARE @joinTables NVARCHAR(MAX) = ''
	DECLARE @documentColumns NVARCHAR(MAX) = ''
	
	-- Variables para datos captura fijos
	DECLARE @DatosFijosColumns NVARCHAR(MAX) = ''
	DECLARE @CodigoFijo NVARCHAR(200)
	DECLARE @CodigoFijoNormalizado NVARCHAR(200)
	
	-- Variables para datos captura variables
	DECLARE @DatosVariablesColumns NVARCHAR(MAX) = ''
	DECLARE @DatosVariablesJoins NVARCHAR(MAX) = ''
	DECLARE @EtiquetaVariable NVARCHAR(300)
	DECLARE @EtiquetaVariableNormalizada NVARCHAR(300)
	DECLARE @IdDatosCaptura INT
	
	-- Construir columnas base (parte 1: antes de DC_FIJO)
	SET @selectColumns = '
		SELECT CC.ID_CLIENTE_CAMPANA
			,CC.ID_CLIENTE
			,CC.CONFIRMADO
			,ISNULL(CC.MULTI_REGISTRO_CLIENTES,0) MULTI_REGISTRO_CLIENTES
			,CC.ID_TIPO_DOCUMENTO
			,TD.DESCRIPCION as TIPO_DOCUMENTO'
	
	-- Parte 2: MAPS_X y MAPS_Y (se insertarán después de DC_FIJO)
	DECLARE @mapsColumns NVARCHAR(MAX) = '
			,CC.MAPS_X
			,CC.MAPS_Y'
	
	-- Parte 3: resto de columnas (después de DC_VAR)
	DECLARE @restColumns NVARCHAR(MAX) = '
			,CC.FECHA_CREACION
			,DCC.ID_DATOS_CAPTURA
			,DCC.VALOR
			,DCC.DATA_EXTRA
			,DC.TIPO_DATO
			,(CASE 
				WHEN (DC.TIPO_DATO = ''check'' OR DC.TIPO_DATO = ''radio'' OR DC.TIPO_DATO = ''select'')
				THEN (SELECT STUFF(
						(SELECT '', '' + DCV.DESCRIPCION
						FROM [dbo].[datos_captura_valor] DCV
						INNER JOIN [dbo].[datos_captura] DC ON DC.ID_DATOS_CAPTURA = DCV.ID_DATOS_CAPTURA
						WHERE DC.ID_DATOS_CAPTURA = DCC.ID_DATOS_CAPTURA
						and DCC.VALOR = DCV.ID_DATOS_CAPTURA_VALOR
						FOR XML PATH ('''')),
					1,2, ''''))
				ELSE '''' END) as VALOR_DATO
			,U.DEPARTAMENTO
			,U.PROVINCIA
			,U.DISTRITO
			,R.DESCRIPCION as RED
			,(CASE 
				-- Si es campaña IC (TIPO_CAMPANA_ESTRATEGICA = 2), siempre es NO
				WHEN CAM.TIPO_CAMPANA_ESTRATEGICA = 2 THEN ''NO''
				-- Si es campaña Transaccional/Marketing (TIPO_CAMPANA_ESTRATEGICA = 1)
				WHEN CAM.TIPO_CAMPANA_ESTRATEGICA = 1 THEN 
					(CASE WHEN EXISTS (
						SELECT 1 FROM comprobante C 
						WHERE C.ID_CLIENTE_CAMPANA = CC.ID_CLIENTE_CAMPANA
					) THEN ''SI'' ELSE ''NO'' END)
				-- Para otros casos o valores NULL, aplicar lógica estándar
				ELSE (CASE WHEN EXISTS (
					SELECT 1 FROM comprobante C 
					WHERE C.ID_CLIENTE_CAMPANA = CC.ID_CLIENTE_CAMPANA
				) THEN ''SI'' ELSE ''NO'' END)
			END) as PARTICIPACION_COMPROBANTE'
	
	-- Generar columnas dinámicas para datos captura fijos configurados para la campaña
    DECLARE cursor_datos_fijos CURSOR FOR
    SELECT dc.CODIGO_FIJO
    FROM campana_datos_captura cdc
    INNER JOIN datos_captura dc ON cdc.ID_DATOS_CAPTURA = dc.ID_DATOS_CAPTURA
    WHERE cdc.ID_CAMPANA = @ID_CAMPANA
      AND cdc.VIGENTE = 1
      AND dc.CODIGO_FIJO IS NOT NULL 
      AND dc.VIGENTE = 1 
      AND dc.HABILITADO = 1
      AND dc.CATEGORIA = 1 -- Solo datos captura fijos
    ORDER BY cdc.ORDEN
	
	OPEN cursor_datos_fijos
	FETCH NEXT FROM cursor_datos_fijos INTO @CodigoFijo
	
	WHILE @@FETCH_STATUS = 0
	BEGIN
		-- Normalizar nombre de columna
		SET @CodigoFijoNormalizado = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@CodigoFijo, ' ', '_'), 'á', 'a'), 'é', 'e'), 'í', 'i'), 'ó', 'o'), 'ú', 'u'), 'ñ', 'n'), 'Á', 'A'), 'É', 'E'), 'Í', 'I')
		SET @CodigoFijoNormalizado = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@CodigoFijoNormalizado, 'Ó', 'O'), 'Ú', 'U'), 'Ñ', 'N'), '(', ''), ')', '')
		
		-- Generar columna según el tipo de dato captura fijo
		IF @CodigoFijo = 'DOCUMENTO'
			SET @DatosFijosColumns = @DatosFijosColumns + 'ISNULL(cc.NUMERO_DOCUMENTO, ''-- SIN INFORMACION --'') AS DC_FIJO_' + @CodigoFijoNormalizado + ',' + CHAR(13) + CHAR(10)
		ELSE IF @CodigoFijo = 'NOMBRES'
			SET @DatosFijosColumns = @DatosFijosColumns + 'ISNULL(cc.NOMBRES, ''-- SIN INFORMACION --'') AS DC_FIJO_' + @CodigoFijoNormalizado + ',' + CHAR(13) + CHAR(10)
		ELSE IF @CodigoFijo = 'APELLIDO_PATERNO'
			SET @DatosFijosColumns = @DatosFijosColumns + 'ISNULL(cc.APELLIDO_PATERNO, ''-- SIN INFORMACION --'') AS DC_FIJO_' + @CodigoFijoNormalizado + ',' + CHAR(13) + CHAR(10)
		ELSE IF @CodigoFijo = 'APELLIDO_MATERNO'
			SET @DatosFijosColumns = @DatosFijosColumns + 'ISNULL(cc.APELLIDO_MATERNO, ''-- SIN INFORMACION --'') AS DC_FIJO_' + @CodigoFijoNormalizado + ',' + CHAR(13) + CHAR(10)
		ELSE IF @CodigoFijo IN ('DIRECCION', 'DIRECCION_GOOGLE')
			SET @DatosFijosColumns = @DatosFijosColumns + 'ISNULL(cc.DIRECCION, ''-- SIN INFORMACION --'') AS DC_FIJO_' + @CodigoFijoNormalizado + ',' + CHAR(13) + CHAR(10)
		ELSE IF @CodigoFijo = 'CORREO'
			SET @DatosFijosColumns = @DatosFijosColumns + 'ISNULL(cc.CORREO, ''-- SIN INFORMACION --'') AS DC_FIJO_' + @CodigoFijoNormalizado + ',' + CHAR(13) + CHAR(10)
		ELSE IF @CodigoFijo = 'CELULAR'
			SET @DatosFijosColumns = @DatosFijosColumns + 'ISNULL(cc.CELULAR, ''-- SIN INFORMACION --'') AS DC_FIJO_' + @CodigoFijoNormalizado + ',' + CHAR(13) + CHAR(10)
		ELSE IF @CodigoFijo = 'UBIGEO'
		BEGIN
			-- Generar tres columnas separadas para UBIGEO
			SET @DatosFijosColumns = @DatosFijosColumns + 'ISNULL(RIGHT(''00'' + LTRIM(RTRIM(cc.COD_DEPARTAMENTO)), 2), ''-- SIN INFORMACION --'') AS DC_FIJO_COD_DEPARTAMENTO,' + CHAR(13) + CHAR(10)
			SET @DatosFijosColumns = @DatosFijosColumns + 'ISNULL(RIGHT(''00'' + LTRIM(RTRIM(cc.COD_PROVINCIA)), 2), ''-- SIN INFORMACION --'') AS DC_FIJO_COD_PROVINCIA,' + CHAR(13) + CHAR(10)
			SET @DatosFijosColumns = @DatosFijosColumns + 'ISNULL(RIGHT(''00'' + LTRIM(RTRIM(cc.COD_DISTRITO)), 2), ''-- SIN INFORMACION --'') AS DC_FIJO_COD_DISTRITO,' + CHAR(13) + CHAR(10)
		END
		
		FETCH NEXT FROM cursor_datos_fijos INTO @CodigoFijo
	END
	
	CLOSE cursor_datos_fijos
	DEALLOCATE cursor_datos_fijos
	
	-- Generar columnas dinámicas para documentos legales de la campaña específica
	-- Incluye documentos con ID_DOCUMENTO_LEGAL = 0 (configurados sin documento legal asociado)
	SELECT 
	    @documentColumns = @documentColumns + 
	    ',(' + 
	        'CASE WHEN doc_'
	            + CAST(cdl.ID_CAMPANA_DOCUMENTO_LEGAL AS VARCHAR(10))
	            + '_' 
	            + CAST(ISNULL(cdl.ID_DOCUMENTO_LEGAL,0) AS VARCHAR(10))
	            + '.OBLIGATORIO = 1 THEN ''SI'' ELSE ''NO'' END' +
	    ') as OBLIGATORIEDAD_' + 
	    UPPER(
	        REPLACE(
	            REPLACE(
	                REPLACE(
	                    TRANSLATE(
	                        CASE 
	                            WHEN cdl.ID_DOCUMENTO_LEGAL = 0 OR cdl.ID_DOCUMENTO_LEGAL IS NULL 
	                                 THEN ISNULL(cat.NOMBRE, 'DOCUMENTO_' + CAST(cdl.ID_CAMPANA_DOCUMENTO_LEGAL AS VARCHAR(10)))
	                            ELSE ISNULL(cat.NOMBRE, dl.NOMBRE)
	                        END,
	                        'ÁÉÍÓÚÑÜáéíóúñü !¡?¿-.,()/#@+"',
	                        'AEIOUNUaeiouñu_______________'
	                    ),
	                    '&', 'Y'
	                ),
	                '%', 'PORCENTAJE'
	            ),
	            ' ', '_'
	        )
	    ) + CHAR(13) + CHAR(10) +
	
	    ',(' + 
	        'CASE WHEN doc_'
	            + CAST(cdl.ID_CAMPANA_DOCUMENTO_LEGAL AS VARCHAR(10))
	            + '_' 
	            + CAST(ISNULL(cdl.ID_DOCUMENTO_LEGAL,0) AS VARCHAR(10))
	            + '.ACEPTO = 1 THEN ''SI'' ' +
	        'WHEN doc_'
	            + CAST(cdl.ID_CAMPANA_DOCUMENTO_LEGAL AS VARCHAR(10))
	            + '_' 
	            + CAST(ISNULL(cdl.ID_DOCUMENTO_LEGAL,0) AS VARCHAR(10))
	            + '.ACEPTO = 0 THEN ''NO'' ' +
	        'ELSE ''-- SIN INFORMACION --'' END' +
	    ') as ACEPTO_' + 
	    UPPER(
	        REPLACE(
	            REPLACE(
	                REPLACE(
	                    TRANSLATE(
	                        CASE 
	                            WHEN cdl.ID_DOCUMENTO_LEGAL = 0 OR cdl.ID_DOCUMENTO_LEGAL IS NULL 
	                                 THEN ISNULL(cat.NOMBRE, 'DOCUMENTO_' + CAST(cdl.ID_CAMPANA_DOCUMENTO_LEGAL AS VARCHAR(10)))
	                            ELSE ISNULL(cat.NOMBRE, dl.NOMBRE)
	                        END,
	                        'ÁÉÍÓÚÑÜáéíóúñü !¡?¿-.,()/#@+"',
	                        'AEIOUNUaeiouñu_______________'
	                    ),
	                    '&', 'Y'
	                ),
	                '%', 'PORCENTAJE'
	            ),
	            ' ', '_'
	        )
	    ) + CHAR(13) + CHAR(10) +
	
	    ',(' + 
	        'ISNULL(doc_'
	            + CAST(cdl.ID_CAMPANA_DOCUMENTO_LEGAL AS VARCHAR(10))
	            + '_' 
	            + CAST(ISNULL(cdl.ID_DOCUMENTO_LEGAL,0) AS VARCHAR(10))
	            + '.NOMBRE, ''-- SIN INFORMACION --'')' +
	    ') as ARCHIVO_' + 
	    UPPER(
	        REPLACE(
	            REPLACE(
	                REPLACE(
	                    TRANSLATE(
	                        CASE 
	                            WHEN cdl.ID_DOCUMENTO_LEGAL = 0 OR cdl.ID_DOCUMENTO_LEGAL IS NULL 
	                                 THEN ISNULL(cat.NOMBRE, 'DOCUMENTO_' + CAST(cdl.ID_CAMPANA_DOCUMENTO_LEGAL AS VARCHAR(10)))
	                            ELSE ISNULL(cat.NOMBRE, dl.NOMBRE)
	                        END,
	                        'ÁÉÍÓÚÑÜáéíóúñü !¡?¿-.,()/#@+"',
	                        'AEIOUNUaeiouñu_______________'
	                    ),
	                    '&', 'Y'
	                ),
	                '%', 'PORCENTAJE'
	            ),
	            ' ', '_'
	        )
	    ) + CHAR(13) + CHAR(10)
	FROM campana_documento_legal cdl
	LEFT JOIN documento_legal dl 
	       ON cdl.ID_DOCUMENTO_LEGAL = dl.ID_DOCUMENTO_LEGAL 
	      AND cdl.ID_DOCUMENTO_LEGAL > 0
	      AND dl.VIGENTE = 1
	LEFT JOIN categoria_documento_legal cat 
	       ON ISNULL(dl.ID_CATEGORIA_DOCUMENTO_LEGAL, cdl.ID_CATEGORIA_DOCUMENTO_LEGAL) = cat.ID_CATEGORIA_DOCUMENTO_LEGAL
	      AND cat.VIGENTE = 1
	WHERE cdl.ID_CAMPANA = @ID_CAMPANA
	  AND cdl.VIGENTE = 1
	ORDER BY cdl.ORDEN, cdl.ID_DOCUMENTO_LEGAL;


	
	-- Generar JOINs dinámicos optimizados para documentos legales
	-- Incluye documentos con ID_DOCUMENTO_LEGAL = 0 (configurados sin documento legal asociado)
	SELECT @joinTables = @joinTables + 
	    'LEFT JOIN (' + CHAR(13) + CHAR(10) +
	    '    SELECT cdl.ID_CAMPANA_DOCUMENTO_LEGAL, cdl.ID_DOCUMENTO_LEGAL, cdl.OBLIGATORIO, ' + CHAR(13) + CHAR(10) +
	    '           ccdl.ID_CLIENTE_CAMPANA, ccdl.ACEPTO, a.NOMBRE ' + CHAR(13) + CHAR(10) +
	    '    FROM campana_documento_legal cdl ' + CHAR(13) + CHAR(10) +
	    '    LEFT JOIN cliente_campana_documento_legal ccdl ON cdl.ID_CAMPANA_DOCUMENTO_LEGAL = ccdl.ID_CAMPANA_DOCUMENTO_LEGAL ' + CHAR(13) + CHAR(10) +
	    '    LEFT JOIN documento_legal dl ON cdl.ID_DOCUMENTO_LEGAL = dl.ID_DOCUMENTO_LEGAL AND cdl.ID_DOCUMENTO_LEGAL > 0 ' + CHAR(13) + CHAR(10) +
	    '    LEFT JOIN archivo a ON dl.ID_ARCHIVO_DOCUMENTO = a.ID_ARCHIVO ' + CHAR(13) + CHAR(10) +
	    '    WHERE cdl.ID_CAMPANA = ' + CAST(@ID_CAMPANA AS VARCHAR(10)) + CHAR(13) + CHAR(10) +
	    '          AND cdl.ID_CAMPANA_DOCUMENTO_LEGAL = ' + CAST(cdl.ID_CAMPANA_DOCUMENTO_LEGAL AS VARCHAR(10)) + CHAR(13) + CHAR(10) +
	    ') doc_' + CAST(cdl.ID_CAMPANA_DOCUMENTO_LEGAL AS VARCHAR(10)) + '_' + CAST(ISNULL(cdl.ID_DOCUMENTO_LEGAL,0) AS VARCHAR(10)) + CHAR(13) + CHAR(10) +
	    'ON doc_' + CAST(cdl.ID_CAMPANA_DOCUMENTO_LEGAL AS VARCHAR(10)) + '_' + CAST(ISNULL(cdl.ID_DOCUMENTO_LEGAL,0) AS VARCHAR(10)) + '.ID_CLIENTE_CAMPANA = CC.ID_CLIENTE_CAMPANA ' + CHAR(13) + CHAR(10)
	FROM campana_documento_legal cdl
	LEFT JOIN documento_legal dl ON cdl.ID_DOCUMENTO_LEGAL = dl.ID_DOCUMENTO_LEGAL AND cdl.ID_DOCUMENTO_LEGAL > 0
	LEFT JOIN categoria_documento_legal cat ON ISNULL(dl.ID_CATEGORIA_DOCUMENTO_LEGAL, cdl.ID_CATEGORIA_DOCUMENTO_LEGAL) = cat.ID_CATEGORIA_DOCUMENTO_LEGAL
	WHERE cdl.ID_CAMPANA = @ID_CAMPANA
	ORDER BY cdl.ORDEN, cdl.ID_DOCUMENTO_LEGAL;

	-- Generar columnas dinámicas para datos captura variables de la campaña
	DECLARE cursor_datos_variables CURSOR FOR
	SELECT cdc.ETIQUETA, cdc.ID_DATOS_CAPTURA
	FROM campana_datos_captura cdc
	INNER JOIN datos_captura dc ON cdc.ID_DATOS_CAPTURA = dc.ID_DATOS_CAPTURA
	WHERE cdc.ID_CAMPANA = @ID_CAMPANA
	  AND cdc.VIGENTE = 1
	  AND dc.VIGENTE = 1
	  AND dc.HABILITADO = 1
	  AND dc.CATEGORIA = 2 -- Solo datos captura variables
	ORDER BY cdc.ORDEN
	
	OPEN cursor_datos_variables
	FETCH NEXT FROM cursor_datos_variables INTO @EtiquetaVariable, @IdDatosCaptura
	
	WHILE @@FETCH_STATUS = 0
	BEGIN
		-- Normalizar nombre de columna
		SET @EtiquetaVariableNormalizada = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@EtiquetaVariable, ' ', '_'), 'á', 'a'), 'é', 'e'), 'í', 'i'), 'ó', 'o'), 'ú', 'u'), 'ñ', 'n'), 'Á', 'A'), 'É', 'E'), 'Í', 'I')
		SET @EtiquetaVariableNormalizada = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@EtiquetaVariableNormalizada, 'Ó', 'O'), 'Ú', 'U'), 'Ñ', 'N'), '(', ''), ')', '')
		
		-- Agregar columna dinámica
		SET @DatosVariablesColumns = @DatosVariablesColumns + 'ISNULL(dcc' + CAST(@IdDatosCaptura AS NVARCHAR(10)) + '.VALOR, ''-- SIN INFORMACION --'') AS DC_VAR_' + @EtiquetaVariableNormalizada + ',' + CHAR(13) + CHAR(10)
		
		-- Agregar JOIN dinámico
		SET @DatosVariablesJoins = @DatosVariablesJoins + CHAR(13) + CHAR(10) +
			'LEFT JOIN datos_cliente_campana dcc' + CAST(@IdDatosCaptura AS NVARCHAR(10)) + ' ON cc.ID_CLIENTE_CAMPANA = dcc' + CAST(@IdDatosCaptura AS NVARCHAR(10)) + '.ID_CLIENTE_CAMPANA AND dcc' + CAST(@IdDatosCaptura AS NVARCHAR(10)) + '.ID_DATOS_CAPTURA = ' + CAST(@IdDatosCaptura AS NVARCHAR(10)) + ' AND dcc' + CAST(@IdDatosCaptura AS NVARCHAR(10)) + '.VIGENTE = 1 ' + CHAR(13) + CHAR(10)
		
		FETCH NEXT FROM cursor_datos_variables INTO @EtiquetaVariable, @IdDatosCaptura
	END
	
	CLOSE cursor_datos_variables
	DEALLOCATE cursor_datos_variables
	
	-- Remover comas finales de las columnas dinámicas
	IF LEN(ISNULL(@DatosFijosColumns, '')) > 0
		SET @DatosFijosColumns = LEFT(@DatosFijosColumns, LEN(@DatosFijosColumns) - 3) -- Remover última coma y CRLF
	
	IF LEN(ISNULL(@DatosVariablesColumns, '')) > 0
		SET @DatosVariablesColumns = LEFT(@DatosVariablesColumns, LEN(@DatosVariablesColumns) - 3) -- Remover última coma y CRLF
	
	-- Construir la consulta SQL dinámica completa con el orden correcto
	SET @sql = @selectColumns + 
		CASE WHEN LEN(ISNULL(@DatosFijosColumns, '')) > 0 THEN ',' + CHAR(13) + CHAR(10) + @DatosFijosColumns ELSE '' END +
		@mapsColumns +
		CASE WHEN LEN(ISNULL(@DatosVariablesColumns, '')) > 0 THEN ',' + CHAR(13) + CHAR(10) + @DatosVariablesColumns ELSE '' END +
		@restColumns +
		ISNULL(@documentColumns, '') +
		',' + CHAR(13) + CHAR(10) + '(' + 
		'CASE (select count(cc2.ID_CLIENTE) from ' +
			'(select cc1.ID_CLIENTE, min(cc1.FECHA_CREACION) as FECHA_CREACION ' +
			'from cliente_campana cc1 WITH(NOLOCK) ' +
			'group by cc1.ID_CLIENTE) as A ' +
			'inner join cliente_campana cc2 WITH(NOLOCK) on cc2.ID_CLIENTE = A.ID_CLIENTE and cc2.FECHA_CREACION = A.FECHA_CREACION ' +
			'inner join cliente cc3 WITH(NOLOCK) on cc3.ID_CLIENTE = A.ID_CLIENTE ' +
			'where cc3.USUARIO_CREACION not like ''%INICIAL%'' and cc2.ID_CAMPANA = CC.ID_CAMPANA and cc2.ID_CLIENTE = CC.ID_CLIENTE) ' +
		'WHEN 0 THEN ''NO'' ELSE ''SI'' END) as CLIENTE_NUEVO ' + CHAR(13) + CHAR(10) +
		',CC.ID_SUBCAMPANA ' + CHAR(13) + CHAR(10) +
		',SC.NOMBRE as SUBCAMPANA ' + CHAR(13) + CHAR(10) +
		'FROM [dbo].[cliente_campana] CC WITH(NOLOCK) ' + CHAR(13) + CHAR(10) +
		'LEFT JOIN [dbo].[comprobante] COMP WITH(NOLOCK) ON CC.ID_CLIENTE_CAMPANA = COMP.ID_CLIENTE_CAMPANA ' + CHAR(13) + CHAR(10) +

		'LEFT JOIN [dbo].[datos_cliente_campana] DCC WITH(NOLOCK) ON CC.ID_CLIENTE_CAMPANA = DCC.ID_CLIENTE_CAMPANA ' + CHAR(13) + CHAR(10) +
		'INNER JOIN [dbo].[tipo_documento] TD WITH(NOLOCK) ON CC.ID_TIPO_DOCUMENTO = TD.ID_TIPO_DOCUMENTO ' + CHAR(13) + CHAR(10) +
		'LEFT JOIN [dbo].[datos_captura] DC WITH(NOLOCK) ON DCC.ID_DATOS_CAPTURA = DC.ID_DATOS_CAPTURA ' + CHAR(13) + CHAR(10) +
		'LEFT JOIN [dbo].[ubigeo] U WITH(NOLOCK) on RIGHT(''00'' + Ltrim(Rtrim(CC.COD_DEPARTAMENTO)),2) = U.COD_DEPARTAMENTO ' + CHAR(13) + CHAR(10) +
						'and RIGHT(''00'' + Ltrim(Rtrim(CC.COD_PROVINCIA)),2) = U.COD_PROVINCIA ' + CHAR(13) + CHAR(10) +
						'and RIGHT(''00'' + Ltrim(Rtrim(CC.COD_DISTRITO)),2) = U.COD_DISTRITO ' + CHAR(13) + CHAR(10) +
		'LEFT JOIN [dbo].[red] R WITH(NOLOCK) ON CC.ID_RED = R.ID_RED ' + CHAR(13) + CHAR(10) +
		'INNER JOIN [dbo].[campana] CAM WITH(NOLOCK) ON CC.ID_CAMPANA = CAM.ID_CAMPANA ' + CHAR(13) + CHAR(10) +
		ISNULL(@joinTables, '') +
		ISNULL(@DatosVariablesJoins, '') +
		'LEFT JOIN [dbo].[subcampana] SC WITH(NOLOCK) on CC.ID_SUBCAMPANA = SC.ID_SUBCAMPANA ' + CHAR(13) + CHAR(10) +
		'WHERE CC.ID_CAMPANA = ' + CAST(@ID_CAMPANA AS VARCHAR(10)) + ' ' + CHAR(13) + CHAR(10) +
		'ORDER BY CC.FECHA_CREACION DESC, CC.ID_TIPO_DOCUMENTO, CC.NUMERO_DOCUMENTO, CC.ID_SUBCAMPANA';
	
	-- Debug: Imprimir consulta generada (opcional, comentar en producción)
	 --PRINT 'Consulta generada:';
	 --PRINT @sql;
	
	-- Ejecutar consulta dinámica
	EXEC sp_executesql @sql;
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_documento_legal_por_id]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/06/2025
-- Description:     Insert documento legal
-- EXEC [dbo].[sp_get_documento_legal_por_id] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_documento_legal_por_id]
	@ID_DOCUMENTO_LEGAL	INT
AS
BEGIN

	SELECT	
		DL.[ID_DOCUMENTO_LEGAL]
        ,DL.[NOMBRE]
        ,DL.[DESCRIPCION]
		,DL.[ID_EMPRESA]
		,E.[DESCRIPCION] as NOMBRE_EMPRESA
		,DL.[ID_CATEGORIA_DOCUMENTO_LEGAL]
		,CDL.[NOMBRE] as CATEGORIA_DOCUMENTO_LEGAL
        ,DL.[VIGENTE] 
        ,A.[ID_ARCHIVO] as ID_ARCHIVO_DOCUMENTO
        ,A.[TIPO] as TIPO_ARCHIVO_DOCUMENTO
        ,A.[DESCRIPCION] as DESCRIPCION_ARCHIVO_DOCUMENTO
        ,A.[RUTA] as RUTA_ARCHIVO_DOCUMENTO
        ,A.[NOMBRE] as NOMBRE_ARCHIVO_DOCUMENTO
        ,A.[TIPO_MIME] as TIPO_MIME_ARCHIVO_DOCUMENTO
	FROM [dbo].[documento_legal] DL WITH(NOLOCK)
	LEFT JOIN [dbo].[empresa] E WITH(NOLOCK) on DL.ID_EMPRESA = E.ID_EMPRESA
	LEFT JOIN [dbo].[categoria_documento_legal] CDL WITH(NOLOCK) on DL.ID_CATEGORIA_DOCUMENTO_LEGAL = CDL.ID_CATEGORIA_DOCUMENTO_LEGAL
	LEFT JOIN [dbo].[archivo] A WITH(NOLOCK) ON DL.ID_ARCHIVO_DOCUMENTO = A.ID_ARCHIVO
	WHERE DL.ID_DOCUMENTO_LEGAL = @ID_DOCUMENTO_LEGAL

END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_documentos_legales]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2022
-- Description:     Listar documentos legales
-- EXEC [dbo].[sp_get_documentos_legales] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_documentos_legales]
	@PAGE_SIZE			INT,
	@PAGE_INDEX			INT,
	@ID_EMPRESA  		INT = null,
    @NOMBRE				NVARCHAR(100) = null,
    @PAGINADO  		    INT = 1
AS
BEGIN

    IF @PAGINADO = 1
    BEGIN
	;WITH DataDocumentos as (		
		SELECT ROW_NUMBER() OVER(ORDER BY DL.ID_DOCUMENTO_LEGAL DESC) AS ROW_INDEX 
			,DL.[ID_DOCUMENTO_LEGAL]
			,DL.[NOMBRE]
			,DL.[DESCRIPCION]
            ,E.[ID_EMPRESA]
            ,E.[DESCRIPCION] as NOMBRE_EMPRESA
            ,CDL.[ID_CATEGORIA_DOCUMENTO_LEGAL]
            ,CDL.[NOMBRE] as CATEGORIA_DOCUMENTO_LEGAL
            ,DL.[VIGENTE]
            ,A.[ID_ARCHIVO] as ID_ARCHIVO_DOCUMENTO
            ,A.[TIPO] as TIPO_ARCHIVO_DOCUMENTO
            ,A.[DESCRIPCION] as DESCRIPCION_ARCHIVO_DOCUMENTO
            ,A.[RUTA] as RUTA_ARCHIVO_DOCUMENTO
            ,A.[NOMBRE] as NOMBRE_ARCHIVO_DOCUMENTO
            ,A.[TIPO_MIME] as TIPO_MIME_ARCHIVO_DOCUMENTO
		FROM [dbo].[documento_legal] DL WITH(NOLOCK)
		LEFT JOIN [dbo].[empresa] E WITH(NOLOCK) on DL.ID_EMPRESA = E.ID_EMPRESA
        LEFT JOIN [dbo].[categoria_documento_legal] CDL WITH(NOLOCK) on DL.ID_CATEGORIA_DOCUMENTO_LEGAL = CDL.ID_CATEGORIA_DOCUMENTO_LEGAL
        LEFT JOIN [dbo].[archivo] A WITH(NOLOCK) ON DL.ID_ARCHIVO_DOCUMENTO = A.ID_ARCHIVO
		WHERE
			(DL.NOMBRE LIKE '%' + ltrim(rtrim(@NOMBRE)) + '%' OR @NOMBRE is null)
            AND (DL.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA is null)
            AND DL.ESTADO = 1

	)
	, CountDataDocumentos AS (SELECT COUNT(*) AS ROWS_COUNT FROM DataDocumentos)

	SELECT 
		A.ROW_INDEX
		,A.[ID_DOCUMENTO_LEGAL]
		,B.ROWS_COUNT
		,@PAGE_SIZE AS PAGE_SIZE
		,@PAGE_INDEX AS PAGE_INDEX
		,A.[NOMBRE]
		,A.[DESCRIPCION]
        ,A.[ID_EMPRESA]
        ,A.[NOMBRE_EMPRESA]
        ,A.[ID_CATEGORIA_DOCUMENTO_LEGAL]
        ,A.[CATEGORIA_DOCUMENTO_LEGAL]
        ,A.[VIGENTE]
        ,A.[ID_ARCHIVO_DOCUMENTO]
        ,A.[TIPO_ARCHIVO_DOCUMENTO]
        ,A.[DESCRIPCION_ARCHIVO_DOCUMENTO]
        ,A.[RUTA_ARCHIVO_DOCUMENTO]
        ,A.[NOMBRE_ARCHIVO_DOCUMENTO]
        ,A.[TIPO_MIME_ARCHIVO_DOCUMENTO]
	FROM DataDocumentos A
	CROSS JOIN CountDataDocumentos B
	ORDER BY A.ID_DOCUMENTO_LEGAL DESC

	OFFSET ((@PAGE_INDEX + 1) - 1) * @PAGE_SIZE ROWS
	FETCH NEXT @PAGE_SIZE ROWS ONLY
	END
    ELSE
    BEGIN
    SELECT ROW_NUMBER() OVER(ORDER BY DL.ID_DOCUMENTO_LEGAL DESC) AS ROW_INDEX 
			,DL.[ID_DOCUMENTO_LEGAL]
			,DL.[NOMBRE]
			,DL.[DESCRIPCION]
            ,E.[ID_EMPRESA]
            ,E.[DESCRIPCION] as NOMBRE_EMPRESA
            ,CDL.[ID_CATEGORIA_DOCUMENTO_LEGAL]
            ,CDL.[NOMBRE] as CATEGORIA_DOCUMENTO_LEGAL
            ,DL.[VIGENTE]
            ,A.[ID_ARCHIVO] as ID_ARCHIVO_DOCUMENTO
            ,A.[TIPO] as TIPO_ARCHIVO_DOCUMENTO
            ,A.[DESCRIPCION] as DESCRIPCION_ARCHIVO_DOCUMENTO
            ,A.[RUTA] as RUTA_ARCHIVO_DOCUMENTO
            ,A.[NOMBRE] as NOMBRE_ARCHIVO_DOCUMENTO
            ,A.[TIPO_MIME] as TIPO_MIME_ARCHIVO_DOCUMENTO
		FROM [dbo].[documento_legal] DL WITH(NOLOCK)
		LEFT JOIN [dbo].[empresa] E WITH(NOLOCK) on DL.ID_EMPRESA = E.ID_EMPRESA
        LEFT JOIN [dbo].[categoria_documento_legal] CDL WITH(NOLOCK) on DL.ID_CATEGORIA_DOCUMENTO_LEGAL = CDL.ID_CATEGORIA_DOCUMENTO_LEGAL
        LEFT JOIN [dbo].[archivo] A WITH(NOLOCK) ON DL.ID_ARCHIVO_DOCUMENTO = A.ID_ARCHIVO
		WHERE
			(DL.NOMBRE LIKE '%' + ltrim(rtrim(@NOMBRE)) + '%' OR @NOMBRE is null)
            AND (DL.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA is null)
            AND DL.ESTADO = 1
    END
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_documentos_legales_por_campana]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2025
-- Description:     Listar documentos legales por campaña
-- EXEC [dbo].[sp_get_documentos_legales_por_campana] 19
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_documentos_legales_por_campana]
	@ID_CAMPANA		    INT
AS
BEGIN		
    SELECT CDL.[ID_CAMPANA_DOCUMENTO_LEGAL]
			,DL.[ID_ARCHIVO_DOCUMENTO]
            ,DL.[NOMBRE]
            ,CTDL.[NOMBRE] as CATEGORIA_DOCUMENTO_LEGAL
            ,CTDL.[ID_CATEGORIA_DOCUMENTO_LEGAL]
            ,CDL.[OBLIGATORIO]
            ,CDL.[TEXTO]
		FROM [dbo].[campana_documento_legal] CDL WITH(NOLOCK)
		LEFT JOIN [dbo].[documento_legal] DL WITH(NOLOCK) 
			ON CDL.ID_DOCUMENTO_LEGAL = DL.ID_DOCUMENTO_LEGAL
        LEFT JOIN [dbo].[categoria_documento_legal] CTDL WITH(NOLOCK) 
			ON CTDL.ID_CATEGORIA_DOCUMENTO_LEGAL = ISNULL(DL.ID_CATEGORIA_DOCUMENTO_LEGAL, CDL.ID_CATEGORIA_DOCUMENTO_LEGAL)
		WHERE
            CDL.ID_CAMPANA = @ID_CAMPANA
            AND CDL.VIGENTE = 1
            AND (DL.ESTADO = 1 OR CDL.ID_DOCUMENTO_LEGAL = 0)
        ORDER BY CDL.ORDEN ASC
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_documentos_legales_por_campana_admin]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2025
-- Description:     Listar documentos legales por campaña
-- EXEC [dbo].[sp_get_documentos_legales_por_campana] 19
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_documentos_legales_por_campana_admin]
	@ID_CAMPANA		    INT
AS
BEGIN		
    SELECT CDL.[ID_CAMPANA_DOCUMENTO_LEGAL]
            ,CDL.[TEXTO]
            ,CDL.[ID_DOCUMENTO_LEGAL]
			,DL.[NOMBRE]
            ,CTDL.[ID_CATEGORIA_DOCUMENTO_LEGAL]
            ,CTDL.[NOMBRE] as CATEGORIA_DOCUMENTO_LEGAL
            ,CDL.[OBLIGATORIO]
            ,CDL.[ORDEN]
            ,E.[ID_EMPRESA]
            ,E.[DESCRIPCION] as NOMBRE_EMPRESA
            ,DL.[VIGENTE]
            ,A.[ID_ARCHIVO] as ID_ARCHIVO_DOCUMENTO
            ,A.[TIPO] as TIPO_ARCHIVO_DOCUMENTO
            ,A.[DESCRIPCION] as DESCRIPCION_ARCHIVO_DOCUMENTO
            ,A.[RUTA] as RUTA_ARCHIVO_DOCUMENTO
            ,A.[NOMBRE] as NOMBRE_ARCHIVO_DOCUMENTO
            ,A.[TIPO_MIME] as TIPO_MIME_ARCHIVO_DOCUMENTO
		FROM [dbo].[campana_documento_legal] CDL WITH(NOLOCK)
        LEFT JOIN [dbo].[documento_legal] DL WITH(NOLOCK) 
        	on DL.ID_DOCUMENTO_LEGAL = CDL.ID_DOCUMENTO_LEGAL
		LEFT JOIN [dbo].[empresa] E WITH(NOLOCK) 
			on DL.ID_EMPRESA = E.ID_EMPRESA
        LEFT JOIN [dbo].[categoria_documento_legal] CTDL 
       		ON CTDL.ID_CATEGORIA_DOCUMENTO_LEGAL = ISNULL(DL.ID_CATEGORIA_DOCUMENTO_LEGAL, CDL.ID_CATEGORIA_DOCUMENTO_LEGAL)
        LEFT JOIN [dbo].[archivo] A WITH(NOLOCK) 
        	ON DL.ID_ARCHIVO_DOCUMENTO = A.ID_ARCHIVO
		WHERE
			CDL.ID_CAMPANA = @ID_CAMPANA AND CDL.VIGENTE=1

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_documentos_legales_por_campana_web]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2025
-- Description:     Listar documentos legales por campaña
-- EXEC [dbo].[sp_get_documentos_legales_por_campana] 19
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_documentos_legales_por_campana_web]
	@ID_CAMPANA		    INT
AS
BEGIN		
    SELECT CDL.[ID_CAMPANA_DOCUMENTO_LEGAL]
			,DL.[ID_ARCHIVO_DOCUMENTO]
            ,CTDL.[NOMBRE] as NOMBRE
            ,CDL.[OBLIGATORIO]
		FROM [dbo].[campana_documento_legal] CDL WITH(NOLOCK)
		LEFT JOIN [dbo].[documento_legal] DL WITH(NOLOCK) on CDL.ID_DOCUMENTO_LEGAL = DL.ID_DOCUMENTO_LEGAL
        LEFT JOIN [dbo].[categoria_documento_legal] CTDL WITH(NOLOCK) on DL.ID_CATEGORIA_DOCUMENTO_LEGAL = CTDL.ID_CATEGORIA_DOCUMENTO_LEGAL
		WHERE
            CDL.ID_CAMPANA = @ID_CAMPANA
            AND DL.ESTADO = 1 AND CDL.VIGENTE=1

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_multiplicador_by_id]...';


GO
/*
=============================================================================
Procedimiento: sp_get_multiplicador_by_id
=============================================================================
Descripción: 
Obtiene un multiplicador por su ID.

Parámetros:
- @ID_CONFIGURACION_MULTIPLICADOR: ID del multiplicador a consultar

Retorno:
- Registro del multiplicador con el ID especificado

Ejemplos de uso:
- Obtener un multiplicador específico:
  EXEC sp_get_multiplicador_by_id 1

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_multiplicador_by_id
    @ID_CONFIGURACION_MULTIPLICADOR INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        SELECT 
            cm.ID_CONFIGURACION_MULTIPLICADOR,
            cm.ID_CAMPANA_TIENDA,
            cm.MULTIPLICADOR,
            cm.ACTIVO,
            cm.USUARIO_CREACION,
            cm.FECHA_CREACION,
            cm.USUARIO_MODIFICACION,
            cm.FECHA_MODIFICACION
        FROM configuracion_multiplicador cm
        WHERE cm.ID_CONFIGURACION_MULTIPLICADOR = @ID_CONFIGURACION_MULTIPLICADOR;
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_multiplicadores]...';


GO
/*
=============================================================================
Procedimiento: sp_get_multiplicadores
=============================================================================
Descripción: 
Obtiene una lista paginada de multiplicadores con filtros opcionales.

Parámetros:
- @PAGE_SIZE: Tamaño de página para la paginación
- @PAGE_INDEX: Índice de página para la paginación (base 0)
- @ID_CAMPANA_TIENDA: (Opcional) Filtro por ID de campaña-tienda
- @ACTIVO: (Opcional) Filtro por estado activo/inactivo

Retorno:
- Lista paginada de multiplicadores que cumplen con los filtros

Ejemplos de uso:
- Obtener todos los multiplicadores (primera página, 10 por página):
  EXEC sp_get_multiplicadores 10, 0, NULL, NULL
  
- Obtener multiplicadores activos para una campaña-tienda específica:
  EXEC sp_get_multiplicadores 10, 0, 5, 1

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_multiplicadores
    @PAGE_SIZE INT,
    @PAGE_INDEX INT,
    @ID_CAMPANA_TIENDA INT = NULL,
    @ACTIVO BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        DECLARE @OFFSET INT = @PAGE_INDEX * @PAGE_SIZE;
        
        SELECT 
            cm.ID_CONFIGURACION_MULTIPLICADOR,
            cm.ID_CAMPANA_TIENDA,
            cm.MULTIPLICADOR,
            cm.ACTIVO,
            cm.USUARIO_CREACION,
            cm.FECHA_CREACION,
            cm.USUARIO_MODIFICACION,
            cm.FECHA_MODIFICACION
        FROM configuracion_multiplicador cm
        WHERE (@ID_CAMPANA_TIENDA IS NULL OR cm.ID_CAMPANA_TIENDA = @ID_CAMPANA_TIENDA)
          AND (@ACTIVO IS NULL OR cm.ACTIVO = @ACTIVO)
        ORDER BY cm.ID_CONFIGURACION_MULTIPLICADOR DESC
        OFFSET @OFFSET ROWS
        FETCH NEXT @PAGE_SIZE ROWS ONLY;
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_multiplicadores_by_campana]...';


GO
/*
=============================================================================
Procedimiento: sp_get_multiplicadores_by_campana
=============================================================================
Descripción: 
Obtiene todos los multiplicadores configurados para una campaña específica,
incluyendo información de las tiendas asociadas. Soporta paginación.

Parámetros:
- @ID_CAMPANA: ID de la campaña para la cual se obtendrán los multiplicadores
- @PAGE_SIZE: Tamaño de página para la paginación
- @PAGE_INDEX: Índice de página para la paginación (base 0)
- @ACTIVO: (Opcional) Filtro por estado activo/inactivo

Retorno:
- 0: Ejecución exitosa
- 1: Error en la ejecución
- Un conjunto de resultados con los multiplicadores y sus tiendas asociadas

Ejemplos de uso:
- Obtener todos los multiplicadores de una campaña (primera página, 10 por página):
  EXEC sp_get_multiplicadores_by_campana @ID_CAMPANA = 1, @PAGE_SIZE = 10, @PAGE_INDEX = 0, @ACTIVO = NULL
  
- Obtener solo los multiplicadores activos de una campaña:
  EXEC sp_get_multiplicadores_by_campana @ID_CAMPANA = 1, @PAGE_SIZE = 10, @PAGE_INDEX = 0, @ACTIVO = 1

Historial de cambios:
- Fecha: 2025-07-17 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_get_multiplicadores_by_campana]
    @ID_CAMPANA INT,
    @PAGE_SIZE INT,
    @PAGE_INDEX INT,
    @ACTIVO BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    
    BEGIN TRY
        -- Verificar que la campaña exista
        IF NOT EXISTS (SELECT 1 FROM campana WHERE ID_CAMPANA = @ID_CAMPANA)
        BEGIN
            RAISERROR('La campaña especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Calcular el offset para la paginación
        DECLARE @OFFSET INT = @PAGE_INDEX * @PAGE_SIZE;
        
        -- Obtener los multiplicadores para la campaña especificada con paginación
        SELECT 
            t.ID_TIENDA,
            t.NOMBRE AS NOMBRE_TIENDA,
            ct.ID_CAMPANA,
            ct.ID_CAMPANA_TIENDA,
            cm.ID_CONFIGURACION_MULTIPLICADOR,
            cm.MULTIPLICADOR,
            cm.ACTIVO,
            cm.FECHA_CREACION,
            cm.USUARIO_CREACION,
            cm.FECHA_MODIFICACION,
            cm.USUARIO_MODIFICACION
        FROM 
            campana_tienda ct
        INNER JOIN 
            tienda t ON ct.ID_TIENDA = t.ID_TIENDA
        INNER JOIN 
            configuracion_multiplicador cm ON ct.ID_CAMPANA_TIENDA = cm.ID_CAMPANA_TIENDA
        WHERE 
            ct.ID_CAMPANA = @ID_CAMPANA
            AND (@ACTIVO IS NULL OR cm.ACTIVO = @ACTIVO)
        ORDER BY 
            t.NOMBRE, cm.ACTIVO DESC, cm.FECHA_CREACION DESC
        OFFSET @OFFSET ROWS
        FETCH NEXT @PAGE_SIZE ROWS ONLY;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
        
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_multiplicadores_by_campana_tienda]...';


GO
/*
=============================================================================
Procedimiento: sp_get_multiplicadores_by_campana_tienda
=============================================================================
Descripción: 
Obtiene una lista paginada de multiplicadores para una campaña-tienda específica.

Parámetros:
- @PAGE_SIZE: Tamaño de página para la paginación
- @PAGE_INDEX: Índice de página para la paginación (base 0)
- @ID_CAMPANA_TIENDA: ID de la campaña-tienda para filtrar los multiplicadores

Retorno:
- Lista paginada de multiplicadores para la campaña-tienda especificada

Ejemplos de uso:
- Obtener multiplicadores para una campaña-tienda específica (primera página, 10 por página):
  EXEC sp_get_multiplicadores_by_campana_tienda 10, 0, 5

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_multiplicadores_by_campana_tienda
    @PAGE_SIZE INT,
    @PAGE_INDEX INT,
    @ID_CAMPANA_TIENDA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        DECLARE @OFFSET INT = @PAGE_INDEX * @PAGE_SIZE;
        
        SELECT 
            cm.ID_CONFIGURACION_MULTIPLICADOR,
            cm.ID_CAMPANA_TIENDA,
            cm.MULTIPLICADOR,
            cm.ACTIVO,
            cm.USUARIO_CREACION,
            cm.FECHA_CREACION,
            cm.USUARIO_MODIFICACION,
            cm.FECHA_MODIFICACION
        FROM configuracion_multiplicador cm
        WHERE cm.ID_CAMPANA_TIENDA = @ID_CAMPANA_TIENDA
        ORDER BY cm.ID_CONFIGURACION_MULTIPLICADOR DESC
        OFFSET @OFFSET ROWS
        FETCH NEXT @PAGE_SIZE ROWS ONLY;
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_qr_plantilla_activa]...';


GO
/*
=============================================================================
Procedimiento: sp_get_qr_plantilla_activa
=============================================================================
Descripción: 
Obtiene la plantilla QR activa según el parámetro proporcionado:
- Si se proporciona RUC_TIENDA, busca la plantilla activa para esa tienda.
- Si no se encuentra una plantilla activa para la tienda o si RUC_TIENDA es NULL,
  devuelve la plantilla global activa.

Parámetros:
- @RUC_TIENDA: RUC opcional de la tienda. Si es NULL, devuelve directamente
  la plantilla global activa.

Retorno:
- Conjunto de resultados con la plantilla QR activa correspondiente.

Ejemplos de uso:
- Obtener la plantilla activa de una tienda específica (con fallback a global):
  EXEC sp_get_qr_plantilla_activa @RUC_TIENDA = '20123456789'
  
- Obtener directamente la plantilla global activa:
  EXEC sp_get_qr_plantilla_activa

Historial de cambios:
- Fecha: 2025-08-27 | Autor: Carlos Lázaro | Descripción: Refactorización para trabajar con RUC_TIENDA en lugar de ID_TIENDA.
- Fecha: 2025-07-30 | Autor: Carlos Lázaro | Descripción: Creación del procedimiento.
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_get_qr_plantilla_activa]
    @RUC_TIENDA VARCHAR(11) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        DECLARE @ID_QR_PLANTILLA INT;
        DECLARE @FECHA_REFERENCIA DATETIME;
        
        -- Si se proporciona RUC_TIENDA, intentar obtener la plantilla activa para esa tienda
        IF @RUC_TIENDA IS NOT NULL
        BEGIN
            -- Calcular fecha de referencia (GETDATE() - 5 horas)
            SET @FECHA_REFERENCIA = DATEADD(HOUR, -5, GETDATE());
            
            -- Verificar que la tienda con el RUC especificado exista y esté activa
            IF EXISTS (
                SELECT 1 
                FROM tienda 
                WHERE RUC = @RUC_TIENDA
                  AND @FECHA_REFERENCIA >= FECHA_DESDE 
                  AND @FECHA_REFERENCIA <= FECHA_HASTA
            )
            BEGIN
                -- Buscar plantilla activa para la tienda específica
                SELECT TOP 1 @ID_QR_PLANTILLA = ID_QR_PLANTILLA
                FROM qr_plantilla
                WHERE RUC_TIENDA = @RUC_TIENDA
                  AND ACTIVO = 1
                ORDER BY FECHA_MODIFICACION DESC, FECHA_CREACION DESC;
            END
        END
        
        -- Si no se encontró una plantilla activa para la tienda o si RUC_TIENDA es NULL,
        -- buscar la plantilla global activa
        IF @ID_QR_PLANTILLA IS NULL
        BEGIN
            SELECT TOP 1 @ID_QR_PLANTILLA = ID_QR_PLANTILLA
            FROM qr_plantilla
            WHERE RUC_TIENDA IS NULL
              AND ACTIVO = 1
            ORDER BY FECHA_MODIFICACION DESC, FECHA_CREACION DESC;
        END
        
        -- Devolver la plantilla encontrada (específica o global)
        IF @ID_QR_PLANTILLA IS NOT NULL
        BEGIN
            SELECT
                ID_QR_PLANTILLA,
                RUC_TIENDA,
                DESCRIPCION,
                ACTIVO,
                USUARIO_CREACION,
                FECHA_CREACION,
                USUARIO_MODIFICACION,
                FECHA_MODIFICACION
            FROM 
                qr_plantilla
            WHERE 
                ID_QR_PLANTILLA = @ID_QR_PLANTILLA;
        END
        ELSE
        BEGIN
            -- No se encontró ninguna plantilla (ni específica ni global)
            SELECT 
                NULL AS ID_QR_PLANTILLA,
                NULL AS RUC_TIENDA,
                NULL AS DESCRIPCION,
                NULL AS ACTIVO,
                NULL AS USUARIO_CREACION,
                NULL AS FECHA_CREACION,
                NULL AS USUARIO_MODIFICACION,
                NULL AS FECHA_MODIFICACION
            WHERE 1 = 0;
        END
    END TRY
    BEGIN CATCH
        -- En caso de error, devolver un conjunto vacío
        SELECT 
            NULL AS ID_QR_PLANTILLA,
            NULL AS RUC_TIENDA,
            NULL AS DESCRIPCION,
            NULL AS ACTIVO,
            NULL AS USUARIO_CREACION,
            NULL AS FECHA_CREACION,
            NULL AS USUARIO_MODIFICACION,
            NULL AS FECHA_MODIFICACION
        WHERE 1 = 0;
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_qr_plantilla_activa_by_tienda]...';


GO
/*
=============================================================================
Procedimiento: sp_get_qr_plantilla_activa_by_tienda
=============================================================================
Descripción: 
Obtiene la plantilla QR activa para una tienda específica basándose en su RUC.
Si la tienda no tiene una plantilla activa, devuelve la plantilla global por defecto.
Incluye validación de que la tienda esté activa (dentro del rango de fechas con ajuste de 5 horas).

Parámetros:
- @RUC_TIENDA: RUC de la tienda para la cual se busca la plantilla activa.

Retorno:
- Conjunto de resultados con la plantilla QR activa de la tienda o la plantilla global por defecto.

Ejemplos de uso:
EXEC sp_get_qr_plantilla_activa_by_tienda @RUC_TIENDA = '20123456789'

Historial de cambios:
- Fecha: 2025-08-27 | Autor: Carlos Lázaro | Descripción: Refactorización para usar RUC_TIENDA en lugar de ID_TIENDA.
- Fecha: 2025-07-30 | Autor: Carlos Lázaro | Descripción: Modificación para soportar plantilla global por defecto.
- Fecha: 2025-07-22 | Autor: Carlos Lázaro | Descripción: Creación del procedimiento.
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_get_qr_plantilla_activa_by_tienda]
    @RUC_TIENDA VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        DECLARE @ID_QR_PLANTILLA INT;
        DECLARE @FECHA_REFERENCIA DATETIME = DATEADD(HOUR, -5, GETDATE());
        DECLARE @RUC_VALIDADO VARCHAR(20);
        
        -- Validar que la tienda existe y está activa
        SELECT TOP 1 @RUC_VALIDADO = RUC
        FROM tienda
        WHERE RUC = @RUC_TIENDA
          AND @FECHA_REFERENCIA BETWEEN FECHA_DESDE AND FECHA_HASTA;
        
        -- Solo buscar plantilla si la tienda es válida
        IF @RUC_VALIDADO IS NOT NULL
        BEGIN
            -- Intentar obtener la plantilla QR activa para la tienda específica
            SELECT TOP 1 @ID_QR_PLANTILLA = ID_QR_PLANTILLA
            FROM qr_plantilla
            WHERE RUC_TIENDA = @RUC_VALIDADO
              AND ACTIVO = 1
            ORDER BY FECHA_MODIFICACION DESC, FECHA_CREACION DESC;
        END
        
        -- Si no se encontró una plantilla activa para la tienda, buscar la plantilla global por defecto
        IF @ID_QR_PLANTILLA IS NULL
        BEGIN
            SELECT TOP 1 @ID_QR_PLANTILLA = ID_QR_PLANTILLA
            FROM qr_plantilla
            WHERE RUC_TIENDA IS NULL
              AND ID_TIENDA IS NULL
              AND ACTIVO = 1
            ORDER BY FECHA_MODIFICACION DESC, FECHA_CREACION DESC;
        END
        
        -- Devolver la plantilla encontrada (específica o global)
        IF @ID_QR_PLANTILLA IS NOT NULL
        BEGIN
            SELECT
                ID_QR_PLANTILLA,
                ID_TIENDA,
                RUC_TIENDA,
                DESCRIPCION,
                ACTIVO,
                USUARIO_CREACION,
                FECHA_CREACION,
                USUARIO_MODIFICACION,
                FECHA_MODIFICACION
            FROM 
                qr_plantilla
            WHERE 
                ID_QR_PLANTILLA = @ID_QR_PLANTILLA;
        END
        ELSE
        BEGIN
            -- No se encontró ninguna plantilla (ni específica ni global)
            SELECT 
                NULL AS ID_QR_PLANTILLA,
                NULL AS ID_TIENDA,
                NULL AS RUC_TIENDA,
                NULL AS DESCRIPCION,
                NULL AS ACTIVO,
                NULL AS USUARIO_CREACION,
                NULL AS FECHA_CREACION,
                NULL AS USUARIO_MODIFICACION,
                NULL AS FECHA_MODIFICACION
            WHERE 1 = 0;
        END
    END TRY
    BEGIN CATCH
        -- En caso de error, devolver un conjunto vacío
        SELECT 
            NULL AS ID_QR_PLANTILLA,
            NULL AS ID_TIENDA,
            NULL AS RUC_TIENDA,
            NULL AS DESCRIPCION,
            NULL AS ACTIVO,
            NULL AS USUARIO_CREACION,
            NULL AS FECHA_CREACION,
            NULL AS USUARIO_MODIFICACION,
            NULL AS FECHA_MODIFICACION
        WHERE 1 = 0;
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_qr_plantilla_campos]...';


GO
/*
=============================================================================
Procedimiento: sp_get_qr_plantilla_campos
=============================================================================
Descripción: 
Obtiene todos los campos definidos para una plantilla QR específica.

Parámetros:
- @ID_QR_PLANTILLA: Identificador de la plantilla QR para la cual se buscan los campos.

Retorno:
- Conjunto de resultados con todos los campos de la plantilla QR ordenados por posición.

Ejemplos de uso:
EXEC sp_get_qr_plantilla_campos @ID_QR_PLANTILLA = 1

Historial de cambios:
- Fecha: 2025-07-22 | Autor: Carlos Lázaro | Descripción: Creación del procedimiento.
- Fecha: 2025-07-28 | Autor: Carlos Lázaro | Descripción: Se agregaron campos TRANSFORMACION y FORMATO_ESPERADO.
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_get_qr_plantilla_campos]
    @ID_QR_PLANTILLA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Obtener todos los campos de la plantilla QR ordenados por posición
        SELECT 
            ID_QR_PLANTILLA_CAMPO,
            ID_QR_PLANTILLA,
            POSICION,
            NOMBRE_CAMPO,
            TRANSFORMACION,
            FORMATO_ESPERADO,
            USUARIO_CREACION,
            FECHA_CREACION,
            USUARIO_MODIFICACION,
            FECHA_MODIFICACION
        FROM 
            qr_plantilla_campo
        WHERE 
            ID_QR_PLANTILLA = @ID_QR_PLANTILLA
        ORDER BY 
            POSICION ASC;
    END TRY
    BEGIN CATCH
        -- En caso de error, devolver un conjunto vacío
        SELECT 
            NULL AS ID_QR_PLANTILLA_CAMPO,
            NULL AS ID_QR_PLANTILLA,
            NULL AS POSICION,
            NULL AS NOMBRE_CAMPO,
            NULL AS TRANSFORMACION,
            NULL AS FORMATO_ESPERADO,
            NULL AS USUARIO_CREACION,
            NULL AS FECHA_CREACION,
            NULL AS USUARIO_MODIFICACION,
            NULL AS FECHA_MODIFICACION
        WHERE 1 = 0;
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_qr_plantillas]...';


GO
/*
=============================================================================
Procedimiento: sp_get_qr_plantillas
=============================================================================
Descripción: 
Obtiene plantillas QR aplicando filtros opcionales: por tienda específica (ID o RUC),
plantillas globales y/o estado de activación.

Parámetros:
- @ID_TIENDA: Filtro opcional por ID de tienda. Si se proporciona, devuelve plantillas de esa tienda.
- @RUC_TIENDA: Filtro opcional por RUC de tienda. Si se proporciona, devuelve plantillas de esa tienda.
- @ES_GLOBAL: Filtro opcional por plantillas globales. Si es 1, devuelve solo plantillas globales.
              Si es 0, devuelve solo plantillas específicas de tienda.
              Si es NULL, no aplica este filtro.
- @ACTIVO: Filtro opcional por estado de activación. Si es 1, devuelve solo plantillas activas.
           Si es 0, devuelve solo plantillas inactivas.
           Si es NULL, no aplica este filtro.

Retorno:
- Conjunto de resultados con las plantillas QR que cumplen los criterios de filtrado.

Ejemplos de uso:
- Obtener todas las plantillas:
  EXEC sp_get_qr_plantillas

- Obtener plantillas de una tienda específica por ID:
  EXEC sp_get_qr_plantillas @ID_TIENDA = 1

- Obtener plantillas de una tienda específica por RUC:
  EXEC sp_get_qr_plantillas @RUC_TIENDA = '20123456789'

- Obtener solo plantillas globales:
  EXEC sp_get_qr_plantillas @ES_GLOBAL = 1

- Obtener plantillas activas de una tienda específica por RUC:
  EXEC sp_get_qr_plantillas @RUC_TIENDA = '20123456789', @ACTIVO = 1

- Obtener la plantilla global activa:
  EXEC sp_get_qr_plantillas @ES_GLOBAL = 1, @ACTIVO = 1

Historial de cambios:
- Fecha: 2025-07-30 | Autor: Carlos Lázaro | Descripción: Creación del procedimiento.
- Fecha: 2025-01-XX | Autor: Carlos Lázaro | Descripción: Agregado parámetro RUC_TIENDA y campo en SELECT.
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_get_qr_plantillas]
    @ID_TIENDA INT = NULL,
    @RUC_TIENDA VARCHAR(20) = NULL,
    @ES_GLOBAL BIT = NULL,
    @ACTIVO BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Construir la consulta con filtros opcionales
        SELECT 
            ID_QR_PLANTILLA,
            ID_TIENDA,
            RUC_TIENDA,
            DESCRIPCION,
            ACTIVO,
            USUARIO_CREACION,
            FECHA_CREACION,
            USUARIO_MODIFICACION,
            FECHA_MODIFICACION
        FROM 
            qr_plantilla
        WHERE 
            -- Filtro por tienda (ID o RUC, si se especifica)
            (
                (@ID_TIENDA IS NULL AND @RUC_TIENDA IS NULL) 
                OR 
                (@ID_TIENDA IS NOT NULL AND ID_TIENDA = @ID_TIENDA)
                OR 
                (@RUC_TIENDA IS NOT NULL AND RUC_TIENDA = @RUC_TIENDA)
            )
            
            -- Filtro por plantillas globales/específicas
            AND (
                @ES_GLOBAL IS NULL 
                OR 
                (@ES_GLOBAL = 1 AND ID_TIENDA IS NULL AND RUC_TIENDA IS NULL) 
                OR 
                (@ES_GLOBAL = 0 AND (ID_TIENDA IS NOT NULL OR RUC_TIENDA IS NOT NULL))
            )
            
            -- Filtro por estado de activación
            AND (@ACTIVO IS NULL OR ACTIVO = @ACTIVO)
            
        ORDER BY 
            -- Ordenar primero por plantillas activas
            ACTIVO DESC,
            -- Luego por fecha de modificación/creación
            FECHA_MODIFICACION DESC,
            FECHA_CREACION DESC;
    END TRY
    BEGIN CATCH
        -- En caso de error, devolver un conjunto vacío
        SELECT 
            NULL AS ID_QR_PLANTILLA,
            NULL AS ID_TIENDA,
            NULL AS RUC_TIENDA,
            NULL AS DESCRIPCION,
            NULL AS ACTIVO,
            NULL AS USUARIO_CREACION,
            NULL AS FECHA_CREACION,
            NULL AS USUARIO_MODIFICACION,
            NULL AS FECHA_MODIFICACION
        WHERE 1 = 0;
        
        -- Registrar el error en la tabla de errores
        INSERT INTO error (ACCION, ERROR, ENTIDAD, USUARIO_CREACION, FECHA_CREACION)
        VALUES ('sp_get_qr_plantillas', ERROR_MESSAGE(), 'qr_plantilla', SYSTEM_USER, GETDATE());
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_qr_plantillas_by_tienda]...';


GO
/*
=============================================================================
Procedimiento: sp_get_qr_plantillas_by_tienda
=============================================================================
Descripción: 
Obtiene todas las plantillas QR asociadas a una tienda específica.

Parámetros:
- @ID_TIENDA: Identificador de la tienda para la cual se buscan las plantillas.

Retorno:
- Conjunto de resultados con todas las plantillas QR de la tienda.

Ejemplos de uso:
EXEC sp_get_qr_plantillas_by_tienda @ID_TIENDA = 1

Historial de cambios:
- Fecha: 2025-07-22 | Autor: Carlos Lázaro | Descripción: Creación del procedimiento.
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_get_qr_plantillas_by_tienda]
    @ID_TIENDA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Obtener todas las plantillas QR asociadas a la tienda
        SELECT 
            ID_QR_PLANTILLA,
            ID_TIENDA,
            DESCRIPCION,
            ACTIVO,
            USUARIO_CREACION,
            FECHA_CREACION,
            USUARIO_MODIFICACION,
            FECHA_MODIFICACION
        FROM 
            qr_plantilla
        WHERE 
            ID_TIENDA = @ID_TIENDA
        ORDER BY 
            ACTIVO DESC, 
            FECHA_CREACION DESC;
    END TRY
    BEGIN CATCH
        -- En caso de error, devolver un conjunto vacío
        SELECT 
            NULL AS ID_QR_PLANTILLA,
            NULL AS ID_TIENDA,
            NULL AS DESCRIPCION,
            NULL AS ACTIVO,
            NULL AS USUARIO_CREACION,
            NULL AS FECHA_CREACION,
            NULL AS USUARIO_MODIFICACION,
            NULL AS FECHA_MODIFICACION
        WHERE 1 = 0;
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_regla_puntos_by_campana]...';


GO
/*
=============================================================================
Procedimiento: sp_get_regla_puntos_by_campana
=============================================================================
Descripción: 
Obtiene la regla de puntos asociada a una campaña específica.

Parámetros:
- @ID_CAMPANA: ID de la campaña para la cual se quiere obtener la regla de puntos

Retorno:
- Registro con la información de la regla de puntos para la campaña especificada

Ejemplos de uso:
- EXEC sp_get_regla_puntos_by_campana 1

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_regla_puntos_by_campana
    @ID_CAMPANA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Obtener la regla de puntos para la campaña especificada
        SELECT 
            ID_REGLA_PUNTOS,
            ID_CAMPANA,
            ID_TIENDA,
            MONEDA,
            MONTO_BASE,
            PUNTOS_EQUIVALENTES,
            MONTO_POR_PUNTO,
            FECHA_CREACION,
            USUARIO_CREACION,
            FECHA_MODIFICACION,
            USUARIO_MODIFICACION
        FROM regla_puntos
        WHERE ID_CAMPANA = @ID_CAMPANA;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_sponsor_por_id]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/05/2025
-- Description:     Obtener sponsor 
-- EXEC [dbo].[sp_get_sponsor_por_id] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_sponsor_por_id]
	@ID_SPONSOR	INT
AS
BEGIN

	SELECT	
		S.[ID_SPONSOR]
        ,S.[NOMBRE]
		,C.[ID_CAMPANA]
        ,C.[NOMBRE] as NOMBRE_CAMPANA
        ,E.[ID_EMPRESA]
		,E.[DESCRIPCION] as DESCRIPCION_EMPRESA
        ,A.[ID_ARCHIVO_ADMIN] as ID_ARCHIVO_LOGO
        ,A.[TIPO] as TIPO_ARCHIVO_LOGO
        ,A.[DESCRIPCION] as DESCRIPCION_ARCHIVO_LOGO
        ,A.[RUTA] as RUTA_ARCHIVO_LOGO
        ,A.[NOMBRE] as NOMBRE_ARCHIVO_LOGO
        ,A.[TIPO_MIME] as TIPO_MIME_ARCHIVO_LOGO
	FROM [dbo].[sponsor] S WITH(NOLOCK)
	LEFT JOIN [dbo].[empresa] E WITH(NOLOCK) on S.ID_EMPRESA = E.ID_EMPRESA
	LEFT JOIN [dbo].[campana] C WITH(NOLOCK) on S.ID_CAMPANA = C.ID_CAMPANA
	LEFT JOIN [dbo].[archivo_admin] A WITH(NOLOCK) ON S.ID_ARCHIVO_LOGO = A.ID_ARCHIVO_ADMIN
	WHERE S.ID_SPONSOR = @ID_SPONSOR

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_sponsors]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2022
-- Description:     Listar sponsors 
-- EXEC [dbo].[sp_get_sponsors] 10, 0, null, null, null, null, null, null
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_sponsors]
	@PAGE_SIZE			INT,
	@PAGE_INDEX			INT,
	@ID_EMPRESA  		INT = null,
    @NOMBRE				NVARCHAR(100) = null
AS
BEGIN
	;WITH DataSponsors as (		
		SELECT ROW_NUMBER() OVER(ORDER BY S.ID_SPONSOR DESC) AS ROW_INDEX 
			,S.[ID_SPONSOR]
			,S.[NOMBRE]
            ,C.[NOMBRE] as NOMBRE_CAMPANA
            ,E.[DESCRIPCION] as NOMBRE_EMPRESA
            ,S.[ORDEN]
            ,S.[FECHA_CREACION]
            ,S.[USUARIO_CREACION]
            ,S.[FECHA_MODIFICACION]
            ,S.[USUARIO_MODIFICACION]
		FROM [dbo].[sponsor] S WITH(NOLOCK)
		LEFT JOIN [dbo].[empresa] E WITH(NOLOCK) on S.ID_EMPRESA = E.ID_EMPRESA
		LEFT JOIN [dbo].[campana] C WITH(NOLOCK) on S.ID_CAMPANA = C.ID_CAMPANA
		WHERE
			(S.NOMBRE LIKE '%' + ltrim(rtrim(@NOMBRE)) + '%' OR @NOMBRE is null)
            AND (S.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA is null)
            AND S.VIGENTE = 1

	)
	, CountDataSponsors AS (SELECT COUNT(*) AS ROWS_COUNT FROM DataSponsors)

	SELECT 
		A.ROW_INDEX
		,A.[ID_SPONSOR]
		,B.ROWS_COUNT
		,@PAGE_SIZE AS PAGE_SIZE
		,@PAGE_INDEX AS PAGE_INDEX
		,A.[NOMBRE]
        ,A.[NOMBRE_CAMPANA]
        ,A.[NOMBRE_EMPRESA]
        ,A.[ORDEN]
        ,A.[FECHA_CREACION]
        ,A.[USUARIO_CREACION]
        ,A.[FECHA_MODIFICACION]
        ,A.[USUARIO_MODIFICACION]
	FROM DataSponsors A
	CROSS JOIN CountDataSponsors B
	ORDER BY A.ID_SPONSOR DESC

	OFFSET ((@PAGE_INDEX + 1) - 1) * @PAGE_SIZE ROWS
	FETCH NEXT @PAGE_SIZE ROWS ONLY
	
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_sponsors_por_campana]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2025
-- Description:     Listar sponsors por campaña
-- EXEC [dbo].[sp_get_sponsors_por_campana] 19
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_sponsors_por_campana]
    @PAGE_SIZE			INT=100,
	@PAGE_INDEX			INT=0,
	@ID_CAMPANA		    INT
AS
BEGIN		


    ;WITH DataSponsors as (		
		SELECT	
            ROW_NUMBER() OVER(ORDER BY S.ID_SPONSOR DESC) AS ROW_INDEX 
            ,CS.[ID_SPONSOR]
            ,S.[NOMBRE]
            ,CS.ORDEN
            ,A.[ID_ARCHIVO_ADMIN] as ID_ARCHIVO_LOGO
            ,A.[TIPO] as TIPO_ARCHIVO_LOGO
            ,A.[DESCRIPCION] as DESCRIPCION_ARCHIVO_LOGO
            ,A.[RUTA] as RUTA_ARCHIVO_LOGO
            ,A.[NOMBRE] as NOMBRE_ARCHIVO_LOGO
            ,A.[TIPO_MIME] as TIPO_MIME_ARCHIVO_LOGO
        FROM [dbo].[campana_sponsor] CS WITH(NOLOCK)
        LEFT JOIN [dbo].[sponsor] S WITH(NOLOCK) ON CS.ID_SPONSOR = S.ID_SPONSOR
        LEFT JOIN [dbo].[archivo_admin] A WITH(NOLOCK) ON S.ID_ARCHIVO_LOGO = A.ID_ARCHIVO_ADMIN
        WHERE CS.ID_CAMPANA = @ID_CAMPANA AND CS.VIGENTE=1
        

	)
	, CountDataSponsors AS (SELECT COUNT(*) AS ROWS_COUNT FROM DataSponsors)

	SELECT 
		A.ROW_INDEX
		,B.ROWS_COUNT
		,@PAGE_SIZE AS PAGE_SIZE
		,@PAGE_INDEX AS PAGE_INDEX
        ,A.[ID_SPONSOR]
		,A.[NOMBRE]
        ,ROW_NUMBER() OVER (ORDER BY A.ORDEN) AS ORDEN
        ,A.[ID_ARCHIVO_LOGO]
        ,A.[TIPO_ARCHIVO_LOGO]
        ,A.[DESCRIPCION_ARCHIVO_LOGO] 
        ,A.[RUTA_ARCHIVO_LOGO] 
        ,A.[NOMBRE_ARCHIVO_LOGO]
        ,A.[TIPO_MIME_ARCHIVO_LOGO]
	FROM DataSponsors A
	CROSS JOIN CountDataSponsors B
	ORDER BY A.ORDEN 

	OFFSET ((@PAGE_INDEX + 1) - 1) * @PAGE_SIZE ROWS
	FETCH NEXT @PAGE_SIZE ROWS ONLY
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_steps_by_campaign_id]...';


GO
CREATE   PROCEDURE sp_get_steps_by_campaign_id
    @CampaignId INT
AS
BEGIN
    -- 1. Info general de pasos de la campana
    SELECT
        cs.campaign_steps_id AS CampaignStepsId,
        cs.campaign_id AS CampaignId,
        cs.steps_title AS StepsTitle,
        cs.steps_description AS StepsDescription
    FROM campaign_steps cs
    WHERE cs.campaign_id = @CampaignId;

    -- 2. Pasos de la campana
    SELECT
        s.step_id AS StepId,
        s.title AS StepTitle,
        s.description AS StepDescription,
        s.path AS Path,
        s.step_order AS StepOrder,
        s.campaign_id AS CampaignId,
        s.id_archivo AS IdArchivo
    FROM step s
    WHERE s.campaign_id = @CampaignId
    ORDER BY s.step_order;
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_tienda_by_id_web]...';


GO
/*
=============================================================================
Procedimiento: sp_get_tienda_by_id_web
=============================================================================
Descripción: 
Obtiene los datos de una tienda por su ID.

Parámetros:
- @ID_TIENDA: ID de la tienda a consultar

Retorno:
- Registro de la tienda con el ID especificado

Ejemplos de uso:
- Obtener una tienda específica:
  EXEC sp_get_tienda_by_id_web 1

Historial de cambios:
- Fecha: 2025-07-22 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_tienda_by_id_web
    @ID_TIENDA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        SELECT 
            t.ID_TIENDA,
            t.NOMBRE,
            t.RUC,
            t.USUARIO_CREACION,
            t.FECHA_CREACION,
            t.USUARIO_MODIFICACION,
            t.FECHA_MODIFICACION
        FROM tienda t
        WHERE t.ID_TIENDA = @ID_TIENDA;
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_tiendas]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:     18/06/2022
-- Description:     Listar tiendas
-- EXEC [dbo].[sp_get_tiendas]
-- =============================================
CREATE   PROCEDURE [dbo].[sp_get_tiendas]
    @PAGE_SIZE          INT,
    @PAGE_INDEX         INT,
    @ID_EMPRESA         INT = NULL,
    @NOMBRE             NVARCHAR(255) = NULL,
    @RUC                NVARCHAR(50) = NULL
AS
BEGIN
    ;WITH DataTiendas AS (        
        SELECT 
             T.[ID_TIENDA]
            ,T.[NOMBRE]
            ,T.[NUMERO_CONTRATO]
            ,T.[NUMERO_LOCAL]
            ,T.[RAZON_SOCIAL]
            ,T.[RUC]
            ,T.[FECHA_DESDE]
            ,T.[FECHA_HASTA]
            ,T.[FECHA_SALIDA]
            ,E.[DESCRIPCION] AS NOMBRE_EMPRESA
        FROM [dbo].[tienda] T WITH(NOLOCK)
        LEFT JOIN [dbo].[empresa] E WITH(NOLOCK) ON T.ID_EMPRESA = E.ID_EMPRESA
        WHERE
            (T.NOMBRE LIKE '%' + LTRIM(RTRIM(@NOMBRE)) + '%' OR @NOMBRE IS NULL)
            AND (T.RUC LIKE '%' + LTRIM(RTRIM(@RUC)) + '%' OR @RUC IS NULL)
            AND (T.ID_EMPRESA = @ID_EMPRESA OR @ID_EMPRESA IS NULL)
            AND T.VIGENTE = 1
            AND (T.FECHA_SALIDA IS NULL OR T.FECHA_SALIDA > SYSDATETIME())
            AND (
                (
                    @ID_EMPRESA = 1 
                    AND T.TIPO_LOCAL NOT IN (
                        'ESPACIOS TEMPORALES','BODEGAS','ALMACENES',
                        'OFICINAS','OFICINAS CON SALA','OTROS'
                    )
                    AND T.RUBRO NOT IN (
                        'SIN CLASIFICAR / SIN CLASIFICAR / SIN CLASIFICAR',
                        'SERVICIOS / FINANCIERO / PRESTAMOS',
                        'SERVICIOS / FINANCIERO / BANCO - CAJA',
                        'SERVICIOS / FINANCIERO / ATENCION AL CLIENTE',
                        'SERVICIOS / FINANCIERO / CASA DE CAMBIO',
                        'SERVICIOS / FINANCIERO / CAJERO AUTOMATICO'
                    )
                )
                OR 
                (
                    @ID_EMPRESA = 2 
                    AND T.TIPO_LOCAL NOT IN (
                        'ESTACIONAMIENTO','PASEO','ALMACENES','OTROS'
                    )
                    AND T.RUBRO NOT IN (
                        'SIN CLASIFICAR / SIN CLASIFICAR / SIN CLASIFICAR',
                        'SERVICIOS / FINANCIERO / BANCO - CAJA',
                        'SERVICIOS / FINANCIERO / CAJERO AUTOMATICO',
                        'SERVICIOS / HOTEL / NO APLICA'
                    )
                )
                OR 
                (
                    (@ID_EMPRESA NOT IN (1,2) OR @ID_EMPRESA IS NULL) 
                    AND T.TIPO_LOCAL NOT IN (
                        'ESPACIOS TEMPORALES','BODEGAS','ALMACENES',
                        'OFICINAS','OFICINAS CON SALA','OTROS',
                        'ESTACIONAMIENTO','PASEO','ALMACENES','OTROS'
                    )
                    AND T.RUBRO NOT IN (
                        'SIN CLASIFICAR / SIN CLASIFICAR / SIN CLASIFICAR',
                        'SERVICIOS / FINANCIERO / PRESTAMOS',
                        'SERVICIOS / FINANCIERO / BANCO - CAJA',
                        'SERVICIOS / FINANCIERO / ATENCION AL CLIENTE',
                        'SERVICIOS / FINANCIERO / CASA DE CAMBIO',
                        'SERVICIOS / FINANCIERO / CAJERO AUTOMATICO',
                        'SERVICIOS / HOTEL / NO APLICA'
                    )
                )
            )
    )
    , DataTiendasDedup AS (
        SELECT
            *,
            ROW_NUMBER() OVER (
                PARTITION BY NOMBRE, RUC, NOMBRE_EMPRESA
                ORDER BY ID_TIENDA DESC
            ) AS rn
        FROM DataTiendas
    )
    , DataTiendasFinal AS (
        SELECT
            ROW_NUMBER() OVER (ORDER BY ID_TIENDA DESC) AS ROW_INDEX,
            ID_TIENDA,
            NOMBRE,
            NUMERO_CONTRATO,
            NUMERO_LOCAL,
            RAZON_SOCIAL,
            RUC,
            FECHA_DESDE,
            FECHA_HASTA,
            FECHA_SALIDA,
            NOMBRE_EMPRESA
        FROM DataTiendasDedup
        WHERE rn = 1
    )
    , CountDataTiendas AS (
        SELECT COUNT(*) AS ROWS_COUNT FROM DataTiendasFinal
    )
    SELECT 
        A.ROW_INDEX,
        B.ROWS_COUNT,
        @PAGE_SIZE  AS PAGE_SIZE,
        @PAGE_INDEX AS PAGE_INDEX,
        A.[ID_TIENDA],
        A.[NOMBRE],
        A.[NUMERO_CONTRATO],
        A.[NUMERO_LOCAL],
        A.[RAZON_SOCIAL],
        A.[RUC],
        A.[FECHA_DESDE],
        A.[FECHA_HASTA],
        A.[FECHA_SALIDA],
        A.[NOMBRE_EMPRESA]
    FROM DataTiendasFinal A
    CROSS JOIN CountDataTiendas B
    ORDER BY A.ID_TIENDA DESC
    OFFSET (@PAGE_INDEX * @PAGE_SIZE) ROWS
    FETCH NEXT @PAGE_SIZE ROWS ONLY;
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_tiendas_por_campana_total]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2025
-- Description:     Listar tiendas por campaña sin paginado
-- EXEC [dbo].[sp_get_tiendas_por_campana_total] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_tiendas_por_campana_total]
	@ID_CAMPANA		    INT
AS
BEGIN		
	
		SELECT	
            CT.[ID_TIENDA]
        FROM [dbo].[campana_tienda] CT WITH(NOLOCK)
        WHERE ID_CAMPANA = @ID_CAMPANA AND VIGENTE =1
    
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_tiendas_por_campana_web]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:     18/06/2025
-- Description:     Listar tiendas por campaña sin paginado (sin duplicados)
-- EXEC [dbo].[sp_get_tiendas_por_campana_web] @ID_CAMPANA, @ID_EMPRESA
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_tiendas_por_campana_web]
  	@ID_CAMPANA        	INT,
	@ID_EMPRESA         INT
AS
BEGIN    
    ;WITH DataTiendas AS (
        SELECT  
            CT.[ID_TIENDA],
            T.[NOMBRE],
            T.[RUC]
        FROM [dbo].[campana_tienda] CT WITH(NOLOCK)
        LEFT JOIN [dbo].[tienda] T ON T.ID_TIENDA = CT.ID_TIENDA
        WHERE CT.ID_CAMPANA = @ID_CAMPANA 
          AND CT.VIGENTE = 1
          AND T.VIGENTE = 1
          AND (T.FECHA_SALIDA IS NULL OR T.FECHA_SALIDA > SYSDATETIME())
          AND T.ID_EMPRESA = @ID_EMPRESA
          AND (
              (
                    T.ID_EMPRESA = 1
                    AND T.TIPO_LOCAL NOT IN (
                        'ESPACIOS TEMPORALES','BODEGAS','ALMACENES',
                        'OFICINAS','OFICINAS CON SALA','OTROS'
                    )
                    AND T.RUBRO NOT IN (
                        'SIN CLASIFICAR / SIN CLASIFICAR / SIN CLASIFICAR',
                        'SERVICIOS / FINANCIERO / PRESTAMOS',
                        'SERVICIOS / FINANCIERO / BANCO - CAJA',
                        'SERVICIOS / FINANCIERO / ATENCION AL CLIENTE',
                        'SERVICIOS / FINANCIERO / CASA DE CAMBIO',
                        'SERVICIOS / FINANCIERO / CAJERO AUTOMATICO'
                    )
                )
                OR
                (
                    T.ID_EMPRESA = 2
                    AND T.TIPO_LOCAL NOT IN (
                        'ESTACIONAMIENTO','PASEO','ALMACENES','OTROS'
                    )
                    AND T.RUBRO NOT IN (
                        'SIN CLASIFICAR / SIN CLASIFICAR / SIN CLASIFICAR',
                        'SERVICIOS / FINANCIERO / BANCO - CAJA',
                        'SERVICIOS / FINANCIERO / CAJERO AUTOMATICO',
                        'SERVICIOS / HOTEL / NO APLICA'
                    )
                )
                OR
                (
                    (T.ID_EMPRESA NOT IN (1,2) OR T.ID_EMPRESA IS NULL)
                    AND T.TIPO_LOCAL NOT IN (
                        'ESPACIOS TEMPORALES','BODEGAS','ALMACENES',
                        'OFICINAS','OFICINAS CON SALA','OTROS',
                        'ESTACIONAMIENTO','PASEO','ALMACENES','OTROS'
                    )
                    AND T.RUBRO NOT IN (
                        'SIN CLASIFICAR / SIN CLASIFICAR / SIN CLASIFICAR',
                        'SERVICIOS / FINANCIERO / PRESTAMOS',
                        'SERVICIOS / FINANCIERO / BANCO - CAJA',
                        'SERVICIOS / FINANCIERO / ATENCION AL CLIENTE',
                        'SERVICIOS / FINANCIERO / CASA DE CAMBIO',
                        'SERVICIOS / FINANCIERO / CAJERO AUTOMATICO',
                        'SERVICIOS / HOTEL / NO APLICA'
                    )
                )
          )
    )
    , DataTiendasDedup AS (
        SELECT 
            *,
            ROW_NUMBER() OVER (
                PARTITION BY NOMBRE, RUC
                ORDER BY ID_TIENDA DESC
            ) AS rn
        FROM DataTiendas
    )
    SELECT 
        ID_TIENDA,
        NOMBRE,
        RUC
    FROM DataTiendasDedup
    WHERE rn = 1
    ORDER BY ID_TIENDA ASC;
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_tiendas_sincronizacion]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2022
-- Description:     Listar tiendas para sincronizar
-- EXEC [dbo].[sp_get_tiendas_sincronizacion] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_get_tiendas_sincronizacion]

AS
BEGIN
	SELECT T.[ID_TIENDA]
	    ,T.[NOMBRE]
        ,T.[NUMERO_CONTRATO]
        ,T.[NUMERO_LOCAL]
        ,T.[RAZON_SOCIAL]
        ,T.[RUC]
	FROM [dbo].[tienda] T WITH(NOLOCK)
    WHERE T.VIGENTE=1
	
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_tiendas_total]...';


GO
-- =============================================
-- Author:          Giordan Arredondo
-- Create date:     15/07/2025
-- Description:     Listar tiendas (total, sin paginación)
-- EXEC [dbo].[sp_get_tiendas_total] 
-- =============================================
CREATE   PROCEDURE [dbo].[sp_get_tiendas_total]
AS
BEGIN
    ;WITH DataTiendas AS (
        SELECT 
            T.ID_TIENDA,
            T.NOMBRE,
            T.NUMERO_CONTRATO,
            T.NUMERO_LOCAL,
            T.RAZON_SOCIAL,
            T.RUC,
            E.DESCRIPCION AS NOMBRE_EMPRESA,
            T.TIPO_LOCAL,
            T.RUBRO
        FROM [dbo].[tienda] T WITH (NOLOCK)
        LEFT JOIN [dbo].[empresa] E WITH (NOLOCK) ON T.ID_EMPRESA = E.ID_EMPRESA
        WHERE 
            T.VIGENTE = 1
            AND (T.FECHA_SALIDA IS NULL OR T.FECHA_SALIDA > SYSDATETIME())
            AND (
                (
                    T.ID_EMPRESA = 1
                    AND T.TIPO_LOCAL NOT IN (
                        'ESPACIOS TEMPORALES','BODEGAS','ALMACENES',
                        'OFICINAS','OFICINAS CON SALA','OTROS'
                    )
                    AND T.RUBRO NOT IN (
                        'SIN CLASIFICAR / SIN CLASIFICAR / SIN CLASIFICAR',
                        'SERVICIOS / FINANCIERO / PRESTAMOS',
                        'SERVICIOS / FINANCIERO / BANCO - CAJA',
                        'SERVICIOS / FINANCIERO / ATENCION AL CLIENTE',
                        'SERVICIOS / FINANCIERO / CASA DE CAMBIO',
                        'SERVICIOS / FINANCIERO / CAJERO AUTOMATICO'
                    )
                )
                OR
                (
                    T.ID_EMPRESA = 2
                    AND T.TIPO_LOCAL NOT IN (
                        'ESTACIONAMIENTO','PASEO','ALMACENES','OTROS'
                    )
                    AND T.RUBRO NOT IN (
                        'SIN CLASIFICAR / SIN CLASIFICAR / SIN CLASIFICAR',
                        'SERVICIOS / FINANCIERO / BANCO - CAJA',
                        'SERVICIOS / FINANCIERO / CAJERO AUTOMATICO',
                        'SERVICIOS / HOTEL / NO APLICA'
                    )
                )
                OR
                (
                    (T.ID_EMPRESA NOT IN (1,2) OR T.ID_EMPRESA IS NULL)
                    AND T.TIPO_LOCAL NOT IN (
                        'ESPACIOS TEMPORALES','BODEGAS','ALMACENES',
                        'OFICINAS','OFICINAS CON SALA','OTROS',
                        'ESTACIONAMIENTO','PASEO','ALMACENES','OTROS'
                    )
                    AND T.RUBRO NOT IN (
                        'SIN CLASIFICAR / SIN CLASIFICAR / SIN CLASIFICAR',
                        'SERVICIOS / FINANCIERO / PRESTAMOS',
                        'SERVICIOS / FINANCIERO / BANCO - CAJA',
                        'SERVICIOS / FINANCIERO / ATENCION AL CLIENTE',
                        'SERVICIOS / FINANCIERO / CASA DE CAMBIO',
                        'SERVICIOS / FINANCIERO / CAJERO AUTOMATICO',
                        'SERVICIOS / HOTEL / NO APLICA'
                    )
                )
            )
    )
    , DataTiendasDedup AS (
        SELECT 
            *,
            ROW_NUMBER() OVER (
                PARTITION BY NOMBRE, RUC, NOMBRE_EMPRESA
                ORDER BY ID_TIENDA DESC
            ) AS rn
        FROM DataTiendas
    )
    SELECT 
        ROW_NUMBER() OVER (ORDER BY ID_TIENDA DESC) AS ROW_INDEX,
        ID_TIENDA,
        NOMBRE,
        NUMERO_CONTRATO,
        NUMERO_LOCAL,
        RAZON_SOCIAL,
        RUC,
        NOMBRE_EMPRESA
    FROM DataTiendasDedup
    WHERE rn = 1
    ORDER BY ID_TIENDA ASC;
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_total_campana_tienda_multiplicador_by_campana]...';


GO
/*
=============================================================================
Nombre: sp_get_total_campana_tienda_multiplicador_by_campana
=============================================================================

Descripción:
Obtiene el total de registros de configuración de multiplicadores por tienda para una campaña específica.

Parámetros:
- @ID_CAMPANA: ID de la campaña para la cual se desea obtener el total de configuraciones
- @ACTIVO: Filtro por estado activo (opcional)
- @MONEDA: Filtro por moneda (opcional, por defecto 'PEN')

Retorno:
- Valor entero con el total de registros

Ejemplo de uso:
EXEC sp_get_total_campana_tienda_multiplicador_by_campana @ID_CAMPANA = 1, @ACTIVO = 1
EXEC sp_get_total_campana_tienda_multiplicador_by_campana @ID_CAMPANA = 1, @ACTIVO = 1, @MONEDA = 'USD'

Historial de cambios:
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Creación inicial
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Modificado para usar 'PEN' como valor por defecto para @MONEDA
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_get_total_campana_tienda_multiplicador_by_campana]
(
    @ID_CAMPANA INT,
    @ACTIVO BIT = NULL,
    @MONEDA VARCHAR(3) = 'PEN'
)
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Validar que la campaña exista
        IF NOT EXISTS (SELECT 1 FROM CAMPANA WHERE ID_CAMPANA = @ID_CAMPANA)
        BEGIN
            RAISERROR('La campaña no existe.', 16, 1);
            RETURN;
        END;
        
        -- Consulta para obtener el total de registros
        SELECT COUNT(1) AS TOTAL
        FROM CAMPANA_TIENDA_MULTIPLICADOR ctm
        WHERE 
            ctm.ID_CAMPANA = @ID_CAMPANA
            AND (@ACTIVO IS NULL OR ctm.ACTIVO = @ACTIVO)
            AND ctm.MONEDA = @MONEDA;
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_total_campana_tienda_multiplicadores]...';


GO
/*
=============================================================================
Procedimiento: sp_get_total_campana_tienda_multiplicadores
=============================================================================
Descripción: 
Obtiene el total de multiplicadores que cumplen con los filtros especificados.
Utilizado para la paginación en conjunto con sp_get_campana_tienda_multiplicadores.

Parámetros:
- @ID_CAMPANA: (Opcional) Filtro por ID de campaña
- @ID_TIENDA: (Opcional) Filtro por ID de tienda
- @ACTIVO: (Opcional) Filtro por estado activo/inactivo
- @MONEDA: (Opcional) Filtro por moneda, por defecto 'PEN'

Retorno:
- Cantidad total de multiplicadores que cumplen con los filtros

Ejemplos de uso:
- Obtener el total de todos los multiplicadores en PEN:
  EXEC sp_get_total_campana_tienda_multiplicadores NULL, NULL, NULL
  
- Obtener el total de multiplicadores activos para una campaña específica:
  EXEC sp_get_total_campana_tienda_multiplicadores 5, NULL, 1
  
- Obtener el total de multiplicadores para una tienda específica en USD:
  EXEC sp_get_total_campana_tienda_multiplicadores NULL, 3, NULL, 'USD'

Historial de cambios:
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_total_campana_tienda_multiplicadores
    @ID_CAMPANA INT = NULL,
    @ID_TIENDA INT = NULL,
    @ACTIVO BIT = NULL,
    @MONEDA VARCHAR(3) = 'PEN'
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        SELECT COUNT(1) AS Total
        FROM campana_tienda_multiplicador ctm
        WHERE (@ID_CAMPANA IS NULL OR ctm.ID_CAMPANA = @ID_CAMPANA)
          AND (@ID_TIENDA IS NULL OR ctm.ID_TIENDA = @ID_TIENDA)
          AND (@ACTIVO IS NULL OR ctm.ACTIVO = @ACTIVO)
          AND ctm.MONEDA = @MONEDA;
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_total_campana_tienda_multiplicadores_by_campana_tienda]...';


GO
/*
=============================================================================
Procedimiento: sp_get_total_campana_tienda_multiplicadores_by_campana_tienda
=============================================================================
Descripción: 
Obtiene el total de multiplicadores para una campaña y tienda específicas, 
incluyendo todas las monedas disponibles.
Utilizado para la paginación en conjunto con sp_get_campana_tienda_multiplicadores_by_campana_tienda.

Parámetros:
- @ID_CAMPANA: ID de la campaña para filtrar los multiplicadores
- @ID_TIENDA: ID de la tienda para filtrar los multiplicadores

Retorno:
- Cantidad total de multiplicadores para la campaña y tienda especificadas en todas las monedas

Ejemplos de uso:
- Obtener el total de multiplicadores para una campaña y tienda específicas:
  EXEC sp_get_total_campana_tienda_multiplicadores_by_campana_tienda 5, 3

Historial de cambios:
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_total_campana_tienda_multiplicadores_by_campana_tienda
    @ID_CAMPANA INT,
    @ID_TIENDA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        SELECT COUNT(1) AS Total
        FROM campana_tienda_multiplicador ctm
        WHERE ctm.ID_CAMPANA = @ID_CAMPANA
          AND ctm.ID_TIENDA = @ID_TIENDA;
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_total_multiplicadores]...';


GO
/*
=============================================================================
Procedimiento: sp_get_total_multiplicadores
=============================================================================
Descripción: 
Obtiene el total de multiplicadores que cumplen con los filtros especificados.
Utilizado para la paginación en conjunto con sp_get_multiplicadores.

Parámetros:
- @ID_CAMPANA_TIENDA: (Opcional) Filtro por ID de campaña-tienda
- @ACTIVO: (Opcional) Filtro por estado activo/inactivo

Retorno:
- Cantidad total de multiplicadores que cumplen con los filtros

Ejemplos de uso:
- Obtener el total de todos los multiplicadores:
  EXEC sp_get_total_multiplicadores NULL, NULL
  
- Obtener el total de multiplicadores activos para una campaña-tienda específica:
  EXEC sp_get_total_multiplicadores 5, 1

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_total_multiplicadores
    @ID_CAMPANA_TIENDA INT = NULL,
    @ACTIVO BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        SELECT COUNT(1) AS Total
        FROM configuracion_multiplicador cm
        WHERE (@ID_CAMPANA_TIENDA IS NULL OR cm.ID_CAMPANA_TIENDA = @ID_CAMPANA_TIENDA)
          AND (@ACTIVO IS NULL OR cm.ACTIVO = @ACTIVO);
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_total_multiplicadores_by_campana]...';


GO
/*
=============================================================================
Procedimiento: sp_get_total_multiplicadores_by_campana
=============================================================================
Descripción: 
Obtiene el total de multiplicadores para una campaña específica que cumplen con los filtros.
Utilizado para la paginación en conjunto con sp_get_multiplicadores_by_campana.

Parámetros:
- @ID_CAMPANA: ID de la campaña para la cual se contarán los multiplicadores
- @ACTIVO: (Opcional) Filtro por estado activo/inactivo

Retorno:
- Cantidad total de multiplicadores que cumplen con los filtros

Ejemplos de uso:
- Obtener el total de todos los multiplicadores de una campaña:
  EXEC sp_get_total_multiplicadores_by_campana 1, NULL
  
- Obtener el total de multiplicadores activos de una campaña:
  EXEC sp_get_total_multiplicadores_by_campana 1, 1

Historial de cambios:
- Fecha: 2025-07-17 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_get_total_multiplicadores_by_campana]
    @ID_CAMPANA INT,
    @ACTIVO BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    
    BEGIN TRY
        -- Verificar que la campaña exista
        IF NOT EXISTS (SELECT 1 FROM campana WHERE ID_CAMPANA = @ID_CAMPANA)
        BEGIN
            RAISERROR('La campaña especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Obtener el total de multiplicadores para la campaña especificada
        SELECT COUNT(*) AS Total
        FROM 
            campana_tienda ct
        INNER JOIN 
            tienda t ON ct.ID_TIENDA = t.ID_TIENDA
        INNER JOIN 
            configuracion_multiplicador cm ON ct.ID_CAMPANA_TIENDA = cm.ID_CAMPANA_TIENDA
        WHERE 
            ct.ID_CAMPANA = @ID_CAMPANA
            AND (@ACTIVO IS NULL OR cm.ACTIVO = @ACTIVO);
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
        
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_get_total_multiplicadores_by_campana_tienda]...';


GO
/*
=============================================================================
Procedimiento: sp_get_total_multiplicadores_by_campana_tienda
=============================================================================
Descripción: 
Obtiene el total de multiplicadores para una campaña-tienda específica.
Utilizado para la paginación en conjunto con sp_get_multiplicadores_by_campana_tienda.

Parámetros:
- @ID_CAMPANA_TIENDA: ID de la campaña-tienda para filtrar los multiplicadores

Retorno:
- Cantidad total de multiplicadores para la campaña-tienda especificada

Ejemplos de uso:
- Obtener el total de multiplicadores para una campaña-tienda específica:
  EXEC sp_get_total_multiplicadores_by_campana_tienda 5

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_get_total_multiplicadores_by_campana_tienda
    @ID_CAMPANA_TIENDA INT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        SELECT COUNT(1) AS Total
        FROM configuracion_multiplicador cm
        WHERE cm.ID_CAMPANA_TIENDA = @ID_CAMPANA_TIENDA;
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_archivo_admin]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		17/06/2025
-- Description:     Insert archivo admin
-- EXEC [dbo].[sp_insert_archivo_admin] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_archivo_admin]
	@TIPO				INT,
	@DESCRIPCION		NVARCHAR(50),
	@RUTA				NVARCHAR(100),
	@NOMBRE			NVARCHAR(100),
	@TIPO_MIME			NVARCHAR(100),
	@USUARIO_CREACION		NVARCHAR(100),
	@ID_ARCHIVO_ADMIN			INT OUTPUT
AS
BEGIN		
	INSERT INTO [dbo].[archivo_admin]
           ([TIPO]
           ,[DESCRIPCION]
           ,[RUTA]
           ,[NOMBRE]
	     ,[TIPO_MIME]
           ,[VIGENTE]
           ,[USUARIO_CREACION]
           ,[FECHA_CREACION])
     VALUES
           (@TIPO
           ,@DESCRIPCION
           ,@RUTA
           ,@NOMBRE
	     ,@TIPO_MIME
           ,1
           ,@USUARIO_CREACION
           ,DATEADD(HH, -5, GETDATE()))
	
	SET @ID_ARCHIVO_ADMIN = SCOPE_IDENTITY();
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_campaign_steps_by_id]...';


GO
CREATE PROCEDURE sp_insert_campaign_steps_by_id
    @CampaignId INT,
    @StepsTitle NVARCHAR(200),
    @StepsDescription NVARCHAR(MAX),
    @ID_CAMPANA_STEPS INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT TOP 1 @ExistingId = campaign_steps_id
    FROM campaign_steps
    WHERE campaign_id = @CampaignId
    ORDER BY campaign_steps_id;

    IF @ExistingId IS NOT NULL
    BEGIN
        UPDATE campaign_steps
        SET 
            steps_title = @StepsTitle,
            steps_description = @StepsDescription
        WHERE campaign_steps_id = @ExistingId;

        SET @ID_CAMPANA_STEPS = @ExistingId;
    END
    ELSE
    BEGIN
        INSERT INTO campaign_steps (campaign_id, steps_title, steps_description)
        VALUES (@CampaignId, @StepsTitle, @StepsDescription);

        SET @ID_CAMPANA_STEPS = SCOPE_IDENTITY();
    END
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_campana_documento_legal]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		17/06/2025
-- Description:     Insert campaña documento legal
-- EXEC [dbo].[sp_insert_campana_documento_legal] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_campana_documento_legal]
	@ID_CAMPANA				        INT,
    @ID_DOCUMENTO_LEGAL				INT,
    @ID_CATEGORIA_DOCUMENTO_LEGAL 	INT,
    @ORDEN				            INT,
    @OBLIGATORIO				    BIT,
	@TEXTO			      NVARCHAR(300),
    @USUARIO_CREACION		NVARCHAR(100)
AS
BEGIN		

    DECLARE @COUNT INT;

    SELECT @COUNT = COUNT(1) 
    FROM [dbo].[campana_documento_legal]
    WHERE ID_CAMPANA = @ID_CAMPANA 
      AND (
          (@ID_DOCUMENTO_LEGAL > 0 AND ID_DOCUMENTO_LEGAL = @ID_DOCUMENTO_LEGAL)
          OR 
          (@ID_DOCUMENTO_LEGAL = 0 AND ID_CATEGORIA_DOCUMENTO_LEGAL = @ID_CATEGORIA_DOCUMENTO_LEGAL)
      );
    
    IF @COUNT >= 1
    BEGIN
        UPDATE [dbo].[campana_documento_legal]
        SET
            [ID_CATEGORIA_DOCUMENTO_LEGAL] = @ID_CATEGORIA_DOCUMENTO_LEGAL,
            [ID_DOCUMENTO_LEGAL] = @ID_DOCUMENTO_LEGAL,
            [ORDEN] = @ORDEN,
            [OBLIGATORIO] = @OBLIGATORIO,
            [TEXTO] = @TEXTO,
            [VIGENTE] = 1,
            [USUARIO_MODIFICACION] = @USUARIO_CREACION,
            [FECHA_MODIFICACION] = DATEADD(HOUR, -5, GETDATE())
        WHERE
            ID_CAMPANA = @ID_CAMPANA 
            AND (
                (@ID_DOCUMENTO_LEGAL > 0 AND ID_DOCUMENTO_LEGAL = @ID_DOCUMENTO_LEGAL)
                OR 
                (@ID_DOCUMENTO_LEGAL = 0 AND ID_CATEGORIA_DOCUMENTO_LEGAL = @ID_CATEGORIA_DOCUMENTO_LEGAL)
            );
    END
    ELSE
    BEGIN
    	INSERT INTO [dbo].[campana_documento_legal]
           ([ID_CAMPANA]
           ,[ID_DOCUMENTO_LEGAL]
           ,[ID_CATEGORIA_DOCUMENTO_LEGAL]
           ,[ORDEN]
           ,[OBLIGATORIO]
           ,[TEXTO]
           ,[VIGENTE]
           ,[USUARIO_CREACION]
           ,[FECHA_CREACION])
        VALUES(
            @ID_CAMPANA
            ,@ID_DOCUMENTO_LEGAL
            ,@ID_CATEGORIA_DOCUMENTO_LEGAL
            ,@ORDEN
            ,@OBLIGATORIO
            ,@TEXTO
            ,1
            ,@USUARIO_CREACION
            ,DATEADD(HH, -5, GETDATE())
        )
    END
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_campana_monto_minimo]...';


GO
/*
=============================================================================
Procedimiento: sp_insert_campana_monto_minimo
=============================================================================
Descripción: 
Inserta un nuevo monto mínimo para una campaña con una moneda específica.
El monto mínimo define el valor base requerido para participar en la campaña.

Parámetros:
- @ID_CAMPANA: ID de la campaña a la que se asignará el monto mínimo
- @MONEDA: Moneda del monto mínimo (ej: 'PEN', 'USD')
- @MONTO_MINIMO: Valor mínimo requerido para la campaña en la moneda especificada
- @USUARIO_CREACION: Usuario que crea el registro
- @FECHA_CREACION: (Opcional) Fecha de creación del registro, por defecto la fecha actual de la base de datos
- @ID_CAMPANA_MONTO_MINIMO: (Salida) ID del registro de monto mínimo creado

Retorno:
- No retorna valor específico, pero genera error si la campaña no existe o si ya existe un registro para la combinación de campaña y moneda

Ejemplos de uso:
- Insertar nuevo monto mínimo:
  DECLARE @ID INT
  EXEC sp_insert_campana_monto_minimo 1, 'PEN', 50.00, 'usuario_sistema', NULL, @ID OUTPUT

- Insertar monto mínimo con fecha específica:
  DECLARE @ID INT
  EXEC sp_insert_campana_monto_minimo 1, 'USD', 75.00, 'usuario_sistema', '2025-07-15', @ID OUTPUT

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Añadido campo de USUARIO_CREACION
- Fecha: 2025-07-09 | Autor: Carlos Lázaro | Descripción: Separación de funcionalidades (solo inserción)
- Fecha: 2025-07-09 | Autor: Carlos Lázaro | Descripción: Refactorización de documentación
- Fecha: 2025-07-03 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_insert_campana_monto_minimo
    @ID_CAMPANA INT,
    @MONEDA NVARCHAR(10),
    @MONTO_MINIMO DECIMAL(10,2),
    @USUARIO_CREACION NVARCHAR(100),
    @FECHA_CREACION DATETIME = NULL,
    @ID_CAMPANA_MONTO_MINIMO INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Si no se proporciona fecha de creación, usar la fecha actual
        IF @FECHA_CREACION IS NULL
            SET @FECHA_CREACION = GETDATE();
            
        -- Verificar si la campaña existe
        IF NOT EXISTS (SELECT 1 FROM campana WHERE ID_CAMPANA = @ID_CAMPANA)
        BEGIN
            RAISERROR('La campaña especificada no existe', 16, 1);
            RETURN 1;
        END
        
        -- Verificar si ya existe un registro para esta campaña y moneda
        IF EXISTS (SELECT 1 FROM campana_monto_minimo 
                  WHERE ID_CAMPANA = @ID_CAMPANA AND MONEDA = @MONEDA)
        BEGIN
            RAISERROR('Ya existe un monto mínimo para esta campaña y moneda. Use sp_update_campana_monto_minimo para actualizar.', 16, 1);
            RETURN 1;
        END
        ELSE
        BEGIN
            -- Insertar nuevo registro
            INSERT INTO campana_monto_minimo (
                ID_CAMPANA,
                MONEDA,
                MONTO_MINIMO,
                USUARIO_CREACION,
                FECHA_CREACION
            ) VALUES (
                @ID_CAMPANA,
                @MONEDA,
                @MONTO_MINIMO,
                @USUARIO_CREACION,
                @FECHA_CREACION
            );
            
            -- Obtener el ID generado
            SET @ID_CAMPANA_MONTO_MINIMO = SCOPE_IDENTITY();
            RETURN 0; -- Éxito
        END
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_campana_sponsor]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		17/06/2025
-- Description:     Insert campaña sponsor
-- EXEC [dbo].[sp_insert_campana_sponsor] 1, 1, 'admin'
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_campana_sponsor]
	@ID_CAMPANA				INT,
	@ID_SPONSOR			    INT,
    @USUARIO_CREACION		NVARCHAR(100)
AS
BEGIN		

    -- Validar si ya existe un registro con el mismo ID_SPONSOR y ID_CAMPANA
    IF EXISTS (
        SELECT 1
        FROM [dbo].[campana_sponsor]
        WHERE ID_CAMPANA = @ID_CAMPANA AND ID_SPONSOR = @ID_SPONSOR 
    )
    BEGIN
        -- Si existe, terminar el procedimiento exitosamente
        UPDATE [dbo].[campana_sponsor] SET
            VIGENTE = 1,
            USUARIO_MODIFICACION = @USUARIO_CREACION,
            FECHA_MODIFICACION = DATEADD(HH, -5, GETDATE())
        WHERE ID_CAMPANA = @ID_CAMPANA AND ID_SPONSOR = @ID_SPONSOR 
        RETURN;
    END

    DECLARE @MAX INT;

	SELECT @MAX = ISNULL(MAX(ORDEN), 0) + 1
	FROM [dbo].[campana_sponsor]
    WHERE ID_CAMPANA = @ID_CAMPANA AND VIGENTE = 1;

	INSERT INTO [dbo].[campana_sponsor]
           ([ID_CAMPANA]
           ,[ID_SPONSOR]
           ,[VIGENTE]
           ,[ORDEN]
           ,[USUARIO_CREACION]
           ,[FECHA_CREACION])
    VALUES(
           @ID_CAMPANA,
           @ID_SPONSOR,
		   1,
           @MAX,
           @USUARIO_CREACION,
           DATEADD(HH, -5, GETDATE())
    );

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_campana_sponsors]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		17/06/2025
-- Description:     Insert campaña sponsors
-- EXEC [dbo].[sp_insert_campana_sponsors] 1, '1,3,5', 'admin'
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_campana_sponsors]
	@ID_CAMPANA				INT,
	@LISTA_SPONSORS			NVARCHAR(100),
    @USUARIO_CREACION		NVARCHAR(100)
AS
BEGIN		

    DECLARE @MAX INT

	SELECT @MAX = isnull(MAX(ORDEN), 0) + 1
	FROM [dbo].[campana_sponsor]

	INSERT INTO [dbo].[campana_sponsor]
           ([ID_CAMPANA]
           ,[ID_SPONSOR]
           ,[VIGENTE]
           ,[ORDEN]
           ,[USUARIO_CREACION]
           ,[FECHA_CREACION])
    SELECT
           @ID_CAMPANA
           ,*
		   ,1
           ,@MAX
           ,@USUARIO_CREACION
           ,DATEADD(HH, -5, GETDATE())
	FROM string_split(@LISTA_SPONSORS, ',')

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_campana_tienda]...';


GO
/*
=============================================================================
Procedimiento: sp_insert_campana_tienda
=============================================================================
Descripción: 
Inserta un nuevo registro en la tabla campana_tienda y retorna el ID generado.

Parámetros:
- @ID_CAMPANA: ID de la campaña a la que pertenece la tienda
- @ID_TIENDA: ID de la tienda a asociar con la campaña
- @USUARIO_CREACION: Usuario que crea el registro
- @FECHA_CREACION: Fecha de creación del registro (opcional, por defecto usa la fecha actual)
- @ID_CAMPANA_TIENDA OUTPUT: ID del registro creado (parámetro de salida)

Retorno:
- 0: Ejecución exitosa
- 1: Error en la ejecución

Ejemplos de uso:
- Insertar una nueva relación campaña-tienda:
  DECLARE @ID_CAMPANA_TIENDA INT
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_insert_campana_tienda 
      @ID_CAMPANA = 1, 
      @ID_TIENDA = 2, 
      @USUARIO_CREACION = 'usuario_test',
      @ID_CAMPANA_TIENDA = @ID_CAMPANA_TIENDA OUTPUT
  
  IF @RESULTADO = 0
      SELECT 'Registro creado con éxito. ID: ' + CAST(@ID_CAMPANA_TIENDA AS VARCHAR(10))
  ELSE
      SELECT 'Error al crear el registro'

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Usuario | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_insert_campana_tienda]
    @ID_CAMPANA INT,
    @ID_TIENDA INT,
    @VIGENTE BIT,
    @USUARIO_CREACION NVARCHAR(100),
    @FECHA_CREACION DATETIME = NULL,
    @ID_CAMPANA_TIENDA INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Inicializar fecha de creación si es NULL
    IF @FECHA_CREACION IS NULL
        SET @FECHA_CREACION = GETDATE();
    
    BEGIN TRY
        -- Verificar si la campaña existe
        IF NOT EXISTS (SELECT 1 FROM campana WHERE ID_CAMPANA = @ID_CAMPANA)
        BEGIN
            RAISERROR('La campaña especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Verificar si la tienda existe
        IF NOT EXISTS (SELECT 1 FROM tienda WHERE ID_TIENDA = @ID_TIENDA)
        BEGIN
            RAISERROR('La tienda especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Verificar si ya existe la relación campaña-tienda
        IF EXISTS (SELECT 1 FROM campana_tienda WHERE ID_CAMPANA = @ID_CAMPANA AND ID_TIENDA = @ID_TIENDA)
        BEGIN
            RAISERROR('Ya existe una relación entre la campaña y tienda especificadas.', 16, 1);
            RETURN 1;
        END
        
        -- Insertar el registro
        INSERT INTO campana_tienda (
            ID_CAMPANA,
            ID_TIENDA,
            VIGENTE,
            USUARIO_CREACION,
            FECHA_CREACION
        ) VALUES (
            @ID_CAMPANA,
            @ID_TIENDA,
            @VIGENTE,
            @USUARIO_CREACION,
            @FECHA_CREACION
        );
        
        -- Obtener el ID generado
        SET @ID_CAMPANA_TIENDA = SCOPE_IDENTITY();
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
		DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
		DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
		DECLARE @ErrorState INT = ERROR_STATE();

		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
		RETURN 1; -- Error
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_campana_tienda_multiplicador]...';


GO
/*
=============================================================================
Procedimiento: sp_insert_campana_tienda_multiplicador
=============================================================================
Descripción: 
Inserta un nuevo multiplicador para una campaña y tienda específicas.

Parámetros:
- @ID_CAMPANA: ID de la campaña para el multiplicador
- @ID_TIENDA: ID de la tienda para el multiplicador
- @MULTIPLICADOR: Valor del multiplicador (ej: 1.5, 2.0)
- @MONEDA: Código de moneda (ej: 'PEN', 'USD'), por defecto 'PEN'
- @ACTIVO: Estado del multiplicador (1=activo, 0=inactivo)
- @USUARIO_CREACION: Usuario que crea el registro
- @FECHA_CREACION: Fecha de creación del registro (opcional, si es NULL se usa GETDATE())
- @ID_CAMPANA_TIENDA_MULTIPLICADOR: (Salida) ID del multiplicador creado

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Insertar un nuevo multiplicador en PEN:
  DECLARE @ID_NUEVO INT
  EXEC sp_insert_campana_tienda_multiplicador 5, 3, 2.0, 'PEN', 1, 'usuario_sistema', NULL, @ID_NUEVO OUTPUT
  SELECT @ID_NUEVO AS NuevoID
  
- Insertar un nuevo multiplicador en USD:
  DECLARE @ID_NUEVO INT
  EXEC sp_insert_campana_tienda_multiplicador 5, 3, 1.5, 'USD', 1, 'usuario_sistema', NULL, @ID_NUEVO OUTPUT
  SELECT @ID_NUEVO AS NuevoID

Historial de cambios:
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_insert_campana_tienda_multiplicador
    @ID_CAMPANA INT,
    @ID_TIENDA INT,
    @MULTIPLICADOR DECIMAL(5,2),
    @MONEDA VARCHAR(3) = 'PEN',
    @ACTIVO BIT,
    @USUARIO_CREACION NVARCHAR(100),
    @FECHA_CREACION DATETIME = NULL,
    @ID_CAMPANA_TIENDA_MULTIPLICADOR INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Si no se proporciona fecha de creación, usar la fecha actual
        IF @FECHA_CREACION IS NULL
            SET @FECHA_CREACION = GETDATE();

        -- Verificar que la campaña exista
        IF NOT EXISTS (SELECT 1 FROM campana WHERE ID_CAMPANA = @ID_CAMPANA)
        BEGIN
            RAISERROR('La campaña especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Verificar que la tienda exista
        IF NOT EXISTS (SELECT 1 FROM tienda WHERE ID_TIENDA = @ID_TIENDA)
        BEGIN
            RAISERROR('La tienda especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Insertar el nuevo multiplicador
        INSERT INTO campana_tienda_multiplicador (
            ID_CAMPANA,
            ID_TIENDA,
            MULTIPLICADOR,
            MONEDA,
            ACTIVO,
            USUARIO_CREACION,
            FECHA_CREACION
        ) VALUES (
            @ID_CAMPANA,
            @ID_TIENDA,
            @MULTIPLICADOR,
            @MONEDA,
            @ACTIVO,
            @USUARIO_CREACION,
            @FECHA_CREACION
        );
        
        -- Obtener el ID generado
        SET @ID_CAMPANA_TIENDA_MULTIPLICADOR = SCOPE_IDENTITY();
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_categoria_documento_legal]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/06/2025
-- Description:     Insert sponsor
-- EXEC [dbo].[sp_insert_categoria_documento_legal] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_categoria_documento_legal]
    @NOMBRE              NVARCHAR(100),
    @USUARIO_CREACION    NVARCHAR(100),
    @ID_CATEGORIA_DOCUMENTO_LEGAL          INT OUTPUT
AS
BEGIN		

    DECLARE @COUNT INT;

    SELECT @COUNT = COUNT(1) 
    FROM [dbo].[categoria_documento_legal]
    WHERE NOMBRE = @NOMBRE AND VIGENTE =1;
    IF @COUNT >= 1
    BEGIN
        THROW 50001, 'Hay un registro con el mismo nombre', 1;
    END


    INSERT INTO [dbo].[categoria_documento_legal]
           ([NOMBRE]
           ,[VIGENTE]
           ,[USUARIO_CREACION]
           ,[FECHA_CREACION])
     VALUES
           (@NOMBRE
           ,1
           ,@USUARIO_CREACION
           ,DATEADD(HH, -5, GETDATE()))

    SET @ID_CATEGORIA_DOCUMENTO_LEGAL = SCOPE_IDENTITY()
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_cliente_campana_documento_legal]...';


GO
/*
=============================================================================
Procedimiento: sp_insert_cliente_campana_documento_legal
=============================================================================
Descripción: 
Inserta un nuevo registro de aceptación de documento legal para un cliente en una campaña específica.
Permite registrar si un cliente ha aceptado un documento legal configurado para una campaña,
con fecha de aceptación y control de duplicados.

Parámetros:
- @ID_CLIENTE_CAMPANA: ID del cliente en la campaña
- @ID_CAMPANA_DOCUMENTO_LEGAL: ID de la configuración del documento legal para la campaña
- @ACEPTO: Indica si el cliente aceptó el documento (1=aceptado, 0=no aceptado)
- @FECHA_ACEPTACION: Fecha en que se realizó la aceptación (opcional, por defecto NULL)
- @USUARIO_CREACION: Usuario que crea el registro
- @FECHA_CREACION: Fecha de creación del registro (opcional, por defecto usa la fecha actual)
- @ID_CLIENTE_CAMPANA_DOCUMENTO_LEGAL OUTPUT: ID del registro creado (parámetro de salida)

Retorno:
- 0: Ejecución exitosa
- 1: Error en la ejecución
- 2: Ya existe un registro para esta combinación cliente-documento

Ejemplos de uso:
- Insertar una nueva aceptación de documento legal:
  DECLARE @ID_CLIENTE_CAMPANA_DOCUMENTO_LEGAL INT
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_insert_cliente_campana_documento_legal 
      @ID_CLIENTE_CAMPANA = 1, 
      @ID_CAMPANA_DOCUMENTO_LEGAL = 2,
      @ACEPTO = 1,
      @FECHA_ACEPTACION = '2025-01-15 10:30:00',
      @USUARIO_CREACION = 'usuario_test',
      @ID_CLIENTE_CAMPANA_DOCUMENTO_LEGAL = @ID_CLIENTE_CAMPANA_DOCUMENTO_LEGAL OUTPUT
  
  IF @RESULTADO = 0
      SELECT 'Aceptación registrada con éxito. ID: ' + CAST(@ID_CLIENTE_CAMPANA_DOCUMENTO_LEGAL AS VARCHAR(10))
  ELSE IF @RESULTADO = 2
      SELECT 'Ya existe un registro para esta combinación cliente-documento'
  ELSE
      SELECT 'Error al registrar la aceptación'

- Insertar rechazo de documento legal:
  DECLARE @ID_CLIENTE_CAMPANA_DOCUMENTO_LEGAL INT
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_insert_cliente_campana_documento_legal 
      @ID_CLIENTE_CAMPANA = 1, 
      @ID_CAMPANA_DOCUMENTO_LEGAL = 3,
      @ACEPTO = 0,
      @USUARIO_CREACION = 'usuario_test',
      @ID_CLIENTE_CAMPANA_DOCUMENTO_LEGAL = @ID_CLIENTE_CAMPANA_DOCUMENTO_LEGAL OUTPUT

Historial de cambios:
- Fecha: 2025-01-15 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_insert_cliente_campana_documento_legal]
    @ID_CLIENTE_CAMPANA INT,
    @ID_CAMPANA_DOCUMENTO_LEGAL INT,
    @ACEPTO BIT,
    @FECHA_ACEPTACION DATETIME = NULL,
    @USUARIO_CREACION NVARCHAR(100),
    @FECHA_CREACION DATETIME = NULL,
    @ID_CLIENTE_CAMPANA_DOCUMENTO_LEGAL INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Inicializar fecha de creación si es NULL
    IF @FECHA_CREACION IS NULL
        SET @FECHA_CREACION = GETDATE();
    
    -- Si se acepta el documento pero no se proporciona fecha de aceptación, usar la fecha actual
    IF @ACEPTO = 1 AND @FECHA_ACEPTACION IS NULL
        SET @FECHA_ACEPTACION = GETDATE();
    
    BEGIN TRY
        -- Verificar si el cliente_campana existe
        IF NOT EXISTS (SELECT 1 FROM cliente_campana WHERE ID_CLIENTE_CAMPANA = @ID_CLIENTE_CAMPANA)
        BEGIN
            RAISERROR('El cliente_campana especificado no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Verificar si la configuración campana_documento_legal existe
        IF NOT EXISTS (SELECT 1 FROM campana_documento_legal WHERE ID_CAMPANA_DOCUMENTO_LEGAL = @ID_CAMPANA_DOCUMENTO_LEGAL)
        BEGIN
            RAISERROR('La configuración de documento legal para la campaña especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Verificar si ya existe un registro para esta combinación
        IF EXISTS (
            SELECT 1 
            FROM cliente_campana_documento_legal 
            WHERE ID_CLIENTE_CAMPANA = @ID_CLIENTE_CAMPANA 
              AND ID_CAMPANA_DOCUMENTO_LEGAL = @ID_CAMPANA_DOCUMENTO_LEGAL
        )
        BEGIN
            RAISERROR('Ya existe un registro de aceptación para esta combinación de cliente y documento legal.', 16, 1);
            RETURN 2;
        END
        
        -- Validar coherencia: si no acepta, no debe tener fecha de aceptación
        IF @ACEPTO = 0 AND @FECHA_ACEPTACION IS NOT NULL
        BEGIN
            SET @FECHA_ACEPTACION = NULL;
        END
        
        -- Insertar el registro
        INSERT INTO cliente_campana_documento_legal (
            ID_CLIENTE_CAMPANA,
            ID_CAMPANA_DOCUMENTO_LEGAL,
            ACEPTO,
            FECHA_ACEPTACION,
            USUARIO_CREACION,
            FECHA_CREACION
        ) VALUES (
            @ID_CLIENTE_CAMPANA,
            @ID_CAMPANA_DOCUMENTO_LEGAL,
            @ACEPTO,
            @FECHA_ACEPTACION,
            @USUARIO_CREACION,
            @FECHA_CREACION
        );
        
        -- Obtener el ID generado
        SET @ID_CLIENTE_CAMPANA_DOCUMENTO_LEGAL = SCOPE_IDENTITY();
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_comprobante]...';


GO
/*
=============================================================================
Procedimiento: sp_insert_comprobante
=============================================================================
Descripción: 
Inserta un comprobante de pago y calcula automáticamente los puntos otorgados
según las reglas de la campaña, multiplicadores y montos residuales.

Parámetros de entrada:
- @ID_CLIENTE_CAMPANA: ID del cliente en la campaña
- @ID_TIENDA: ID de la tienda donde se realizó la compra
- @ID_EMPRESA: ID de la empresa (opcional, requerido solo para ingresos manuales con archivo)
- @RUC: RUC del emisor del comprobante
- @SERIE: (Opcional) Serie del comprobante
- @CORRELATIVO: (Opcional) Número correlativo del comprobante
- @IGV: Monto del IGV
- @MONTO_TOTAL: Monto total del comprobante
- @MONEDA: Moneda del comprobante (ej: 'PEN', 'USD')
- @NOMBRE_VENDEDOR: (Opcional) Nombre del vendedor
- @RUTA_IMAGEN: (Opcional) Ruta de la imagen del comprobante
- @NOMBRE_IMAGEN: (Opcional) Nombre del archivo de imagen del comprobante
- @TIPO_MIME: (Opcional) Tipo MIME del archivo de imagen
- @ESTADO_OCR: (Opcional) Estado del procesamiento OCR
- @INGRESO_MANUAL: Indica si fue ingreso manual (por defecto 1)
- @FECHA_EMISION: Fecha de emisión del comprobante
- @USUARIO_CREACION: Usuario que creó el comprobante (opcional)
- @FECHA_CREACION: Fecha de creación del comprobante (opcional)
- @MONTO_MINIMO_DEFAULT: (Opcional) Monto mínimo requerido como fallback si no se encuentra en BD
- @MONTO_BASE_DEFAULT: (Opcional) Monto base para cálculo de puntos como fallback si no se encuentra en BD
- @PUNTOS_EQUIVALENTES_DEFAULT: (Opcional) Puntos equivalentes como fallback si no se encuentra en BD
- @TIPO_DOCUMENTO_CLIENTE: (Opcional) Tipo de documento del cliente (DNI, RUC, etc.)
- @DOCUMENTO_CLIENTE: (Opcional) Número de documento del cliente
- @TIPO_COMPROBANTE: (Opcional) Tipo de comprobante (boleta, factura, etc.)

Parámetros de salida:
- @ID_COMPROBANTE: ID del comprobante insertado
- @PUNTOS_OTORGADOS: Puntos calculados y otorgados
- @PUNTOS_TOTALES: Total de puntos acumulados del cliente en la campaña

Retorno:
- Éxito: Devuelve resultset con ID_COMPROBANTE, PUNTOS_OTORGADOS y PUNTOS_TOTALES
- Error: Lanza excepción con mensaje descriptivo

Ejemplos de uso:
- Insertar comprobante con todos los parámetros:
  DECLARE @IdComprobante INT, @PuntosOtorgados INT, @PuntosTotales INT;
  
  EXEC sp_insert_comprobante 
      @ID_CLIENTE_CAMPANA = 1,
      @ID_TIENDA = 2,
      @ID_EMPRESA = 1,
      @RUC = 20123456789,
      @SERIE = 'F001',
      @CORRELATIVO = 123,
      @IGV = 18.00,
      @MONTO_TOTAL = 118.00,
      @MONEDA = 'PEN',
      @NOMBRE_VENDEDOR = 'Juan Pérez',
      @RUTA_IMAGEN = '/uploads/comprobantes/ticket123.jpg',
      @NOMBRE_IMAGEN = 'ticket123.jpg',
      @TIPO_MIME = 'image/jpeg',
      @FECHA_EMISION = '2025-07-21',
      @USUARIO_CREACION = 'Administrador',
      @TIPO_DOCUMENTO_CLIENTE = 'DNI',
      @DOCUMENTO_CLIENTE = '12345678',
      @TIPO_COMPROBANTE = 'FACTURA',
      @ID_COMPROBANTE = @IdComprobante OUTPUT,
      @PUNTOS_OTORGADOS = @PuntosOtorgados OUTPUT,
      @PUNTOS_TOTALES = @PuntosTotales OUTPUT;

- Insertar comprobante sin imagen (ID_EMPRESA opcional):
  DECLARE @IdComprobante INT, @PuntosOtorgados INT, @PuntosTotales INT;
  
  EXEC sp_insert_comprobante 
      @ID_CLIENTE_CAMPANA = 1,
      @ID_TIENDA = 2,
      @RUC = 20123456789,
      @IGV = 18.00,
      @MONTO_TOTAL = 118.00,
      @MONEDA = 'PEN',
      @FECHA_EMISION = '2025-07-21',
      @USUARIO_CREACION = 'Administrador',
      @TIPO_DOCUMENTO_CLIENTE = 'DNI',
      @DOCUMENTO_CLIENTE = '87654321',
      @TIPO_COMPROBANTE = 'BOLETA',
      @ID_COMPROBANTE = @IdComprobante OUTPUT,
      @PUNTOS_OTORGADOS = @PuntosOtorgados OUTPUT,
      @PUNTOS_TOTALES = @PuntosTotales OUTPUT;

Lógica de negocio:
1. Valida que el cliente esté asociado a una campaña activa
2. Verifica que el monto cumple con el mínimo requerido (BD primero, luego parámetro opcional)
3. Verifica si la campaña tiene habilitado el sistema de puntos (HABILITAR_PUNTOS)
   - Si está deshabilitado (NULL o 0), registra el comprobante pero omite cálculo de puntos
   - Si está habilitado (1), procede con la lógica completa de puntos
4. Calcula puntos según reglas específicas de la tienda o generales (BD primero, luego parámetros opcionales)
5. Aplica multiplicadores especiales si están configurados
6. Gestiona montos residuales para optimizar otorgamiento de puntos
7. Actualiza totales de puntos del cliente en la campaña
8. Devuelve el total de puntos acumulados por el cliente

Historial de cambios:
- Fecha: 2025-09-12 | Autor: Carlos Lázaro | Descripción: Agregados campos TIPO_DOCUMENTO_CLIENTE, DOCUMENTO_CLIENTE y TIPO_COMPROBANTE para mejorar la trazabilidad y clasificación de comprobantes
- Fecha: 2025-09-12 | Autor: Carlos Lázaro | Descripción: Implementación de consolidación de puntos para el mismo cliente real (mismo tipo y número de documento) en la misma campaña, solucionando el problema de múltiples ID_CLIENTE_CAMPANA generados por el frontend
- Fecha: 2025-09-12 | Autor: Carlos Lázaro | Descripción: Corrección de lógica de consolidación para evitar duplicación de puntos. Ahora solo actualiza puntos del ID_CLIENTE_CAMPANA actual y calcula consolidado real solo para mostrar al usuario, manteniendo consistencia con sp_get_campanas_puntos
- Fecha: 2025-08-27 | Autor: Carlos Lázaro | Descripción: Implementada validación de HABILITAR_PUNTOS desde tabla campana para control condicional del sistema de puntos
- Fecha: 2025-08-27 | Autor: Carlos Lázaro | Descripción: Agregados parámetros opcionales @MONTO_MINIMO_DEFAULT, @MONTO_BASE_DEFAULT y @PUNTOS_EQUIVALENTES_DEFAULT como fallback
- Fecha: 2025-08-12 | Autor: Carlos Lázaro | Descripción: Agregado parámetro @ID_EMPRESA obligatorio y @MIME_TYPE opcional
- Fecha: 2025-08-12 | Autor: Carlos Lázaro | Descripción: Implementada creación automática de registro en tabla archivo para ingresos manuales con imagen
- Fecha: 2025-08-12 | Autor: Carlos Lázaro | Descripción: Agregada relación comprobante-archivo mediante campo ID_ARCHIVO
- Fecha: 2025-08-12 | Autor: Carlos Lázaro | Descripción: Condición de creación de archivo: INGRESO_MANUAL=1 Y (RUTA_IMAGEN OR NOMBRE_IMAGEN OR MIME_TYPE no nulos)
- Fecha: 2025-08-12 | Autor: Carlos Lázaro | Descripción: Agregados campos NOMBRE_IMAGEN y TIPO_MIME en tabla comprobante
- Fecha: 2025-07-27 | Autor: Carlos Lázaro | Descripción: Refactorización para usar la tabla campana_tienda_multiplicador en lugar de configuracion_multiplicador
- Fecha: 2025-07-27 | Autor: Carlos Lázaro | Descripción: Modificación para hacer opcionales los campos serie, correlativo y nombre_vendedor
- Fecha: 2025-07-21 | Autor: Carlos Lázaro | Descripción: Cambio de parámetro de salida de @NUEVO_RESIDUAL a @PUNTOS_TOTALES
- Fecha: 2025-07-21 | Autor: Carlos Lázaro | Descripción: Cambio de ID_SPONSOR a ID_TIENDA
- Fecha: 2025-07-21 | Autor: Carlos Lázaro | Descripción: Actualización de documentación
- Fecha: 2025-07-02 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_insert_comprobante]
    @ID_CLIENTE_CAMPANA		        INT,
    @ID_TIENDA				        INT,
    @ID_EMPRESA				        INT = NULL,
    @RUC					        BIGINT,
    @SERIE					        NVARCHAR(50) = NULL,
    @CORRELATIVO			        BIGINT = NULL,
    @IGV					        DECIMAL(10,2),
    @MONTO_TOTAL			        DECIMAL(10,2),
    @MONEDA					        NVARCHAR(10),
    @NOMBRE_VENDEDOR		        NVARCHAR(255) = NULL,
    @RUTA_IMAGEN			        NVARCHAR(255) = NULL,
    @NOMBRE_IMAGEN			        NVARCHAR(255) = NULL,
    @TIPO_MIME				        NVARCHAR(255) = NULL,
    @ESTADO_OCR				        NVARCHAR(50) = NULL,
    @INGRESO_MANUAL			        BIT = 1,
    @FECHA_EMISION			        DATETIME,
    @USUARIO_CREACION		        NVARCHAR(100) = 'System',
    @FECHA_CREACION			        DATETIME = NULL,
    @MONTO_MINIMO_DEFAULT		    DECIMAL(10,2) = NULL,
    @MONTO_BASE_DEFAULT			    DECIMAL(10,2) = NULL,
    @PUNTOS_EQUIVALENTES_DEFAULT	INT = NULL,
    @TIPO_DOCUMENTO_CLIENTE		    NVARCHAR(20) = NULL,
    @DOCUMENTO_CLIENTE		        NVARCHAR(50) = NULL,
    @TIPO_COMPROBANTE		        NVARCHAR(20) = NULL,
	@ID_COMPROBANTE			        INT OUTPUT,
	@PUNTOS_OTORGADOS		        INT OUTPUT,
	@PUNTOS_TOTALES		            INT OUTPUT

AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @ID_CAMPANA INT;
    DECLARE @ID_ARCHIVO INT = NULL;
    DECLARE @MONTO_MINIMO DECIMAL(10,2);
    DECLARE @MONTO_BASE DECIMAL(10,2);
    DECLARE @PUNTOS_EQUIVALENTES INT;
    DECLARE @MULTIPLICADOR DECIMAL(5,2) = 1.0;
    DECLARE @MONTO_RESIDUAL_ACTUAL DECIMAL(10,2) = 0;
    DECLARE @MONTO_PARA_PUNTOS DECIMAL(10,2);
    DECLARE @NUEVO_RESIDUAL DECIMAL(10,2);
    DECLARE @HABILITAR_PUNTOS BIT;
    
    BEGIN TRY
        BEGIN TRANSACTION;
        
        -- Si no se proporciona fecha de creación, usar la fecha actual
        IF @FECHA_CREACION IS NULL
            SET @FECHA_CREACION = GETDATE();
        
        -- 1. Obtener el ID_CAMPANA del cliente_campana y verificar si la campaña tiene puntos habilitados
        SELECT @ID_CAMPANA = cc.ID_CAMPANA, @HABILITAR_PUNTOS = c.HABILITAR_PUNTOS
        FROM cliente_campana cc
        INNER JOIN campana c ON cc.ID_CAMPANA = c.ID_CAMPANA
        WHERE cc.ID_CLIENTE_CAMPANA = @ID_CLIENTE_CAMPANA;
        
        IF @ID_CAMPANA IS NULL
        BEGIN
            RAISERROR('El cliente no está asociado a ninguna campaña', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END
        
        -- 2. Verificar monto mínimo para la campaña y moneda
        DECLARE @MONTO_MINIMO_DB DECIMAL(10,2);
        SELECT @MONTO_MINIMO_DB = MONTO_MINIMO 
        FROM campana_monto_minimo 
        WHERE ID_CAMPANA = @ID_CAMPANA AND MONEDA = @MONEDA;
        
        -- Si no se encuentra en BD, usar parámetro opcional
        IF @MONTO_MINIMO_DB IS NOT NULL
            SET @MONTO_MINIMO = @MONTO_MINIMO_DB;
        ELSE IF @MONTO_MINIMO_DEFAULT IS NOT NULL
            SET @MONTO_MINIMO = @MONTO_MINIMO_DEFAULT;
        
        -- Si no hay valor en BD ni en parámetro, mostrar error
        IF @MONTO_MINIMO IS NULL
        BEGIN
            RAISERROR('No existe configuración de monto mínimo para esta campaña y moneda', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END
        
        IF @MONTO_TOTAL < @MONTO_MINIMO
        BEGIN
            RAISERROR('El monto del comprobante no alcanza el mínimo requerido para la campaña', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Validar comprobante duplicado solo si es ingreso manual
        IF @INGRESO_MANUAL = 0
        BEGIN
            IF EXISTS (
                SELECT 1 
                FROM comprobante
                WHERE RUC = @RUC
                  AND SERIE = @SERIE
                  AND CORRELATIVO = @CORRELATIVO
            )
            BEGIN
                RAISERROR('El comprobante ya fue registrado anteriormente', 16, 1);
                ROLLBACK TRANSACTION;
                RETURN;
            END
        END
        
        -- 3. Crear registro en la tabla archivo si es ingreso manual, hay información de imagen y se proporciona ID_EMPRESA
        IF @INGRESO_MANUAL = 1 AND @ID_EMPRESA IS NOT NULL AND (@RUTA_IMAGEN IS NOT NULL OR @NOMBRE_IMAGEN IS NOT NULL OR @TIPO_MIME IS NOT NULL)
        BEGIN
            INSERT INTO archivo (
                ID_EMPRESA, TIPO, DESCRIPCION, RUTA, NOMBRE, TIPO_MIME, 
                VIGENTE, USUARIO_CREACION, FECHA_CREACION
            ) VALUES (
                @ID_EMPRESA, 
                6,
                'Comprobante de pago',
                @RUTA_IMAGEN,
                @NOMBRE_IMAGEN,
                @TIPO_MIME,
                1,
                @USUARIO_CREACION,
                @FECHA_CREACION
            );
            
            SET @ID_ARCHIVO = SCOPE_IDENTITY();
        END
        
        -- 4. Insertar el comprobante
        INSERT INTO comprobante (
            ID_CLIENTE_CAMPANA, ID_TIENDA, ID_ARCHIVO, RUC, SERIE, CORRELATIVO, 
            IGV, MONTO_TOTAL, MONEDA, NOMBRE_VENDEDOR,
            ESTADO_OCR, INGRESO_MANUAL, FECHA_EMISION, USUARIO_CREACION, FECHA_CREACION,
            TIPO_DOCUMENTO_CLIENTE, DOCUMENTO_CLIENTE, TIPO_COMPROBANTE
        ) VALUES (
            @ID_CLIENTE_CAMPANA, @ID_TIENDA, @ID_ARCHIVO, @RUC, @SERIE, @CORRELATIVO,
            @IGV, @MONTO_TOTAL, @MONEDA, @NOMBRE_VENDEDOR,
            @ESTADO_OCR, @INGRESO_MANUAL, @FECHA_EMISION, @USUARIO_CREACION, @FECHA_CREACION,
            @TIPO_DOCUMENTO_CLIENTE, @DOCUMENTO_CLIENTE, @TIPO_COMPROBANTE
        );
        
        SET @ID_COMPROBANTE = SCOPE_IDENTITY();
        
        -- 5. Verificar si los puntos están habilitados para esta campaña
        IF @HABILITAR_PUNTOS IS NULL OR @HABILITAR_PUNTOS = 0
        BEGIN
            -- Si los puntos no están habilitados, establecer valores en 0 y finalizar
            SET @PUNTOS_OTORGADOS = 0;
            SET @PUNTOS_TOTALES = 0;
            COMMIT TRANSACTION;
            RETURN;
        END
        
        -- 6. Obtener la regla de puntos aplicable (específica de la tienda o general)
        DECLARE @MONTO_BASE_DB DECIMAL(10,2);
        DECLARE @PUNTOS_EQUIVALENTES_DB INT;
        
        SELECT TOP 1 @MONTO_BASE_DB = MONTO_BASE, @PUNTOS_EQUIVALENTES_DB = PUNTOS_EQUIVALENTES
        FROM regla_puntos
        WHERE ID_CAMPANA = @ID_CAMPANA 
          AND (ID_TIENDA = @ID_TIENDA OR ID_TIENDA IS NULL)
          AND MONEDA = @MONEDA
        ORDER BY ID_TIENDA DESC; -- Prioriza regla específica de la tienda
        
        -- Si se encontraron valores en BD, usarlos
        IF @MONTO_BASE_DB IS NOT NULL
        BEGIN
            SET @MONTO_BASE = @MONTO_BASE_DB;
            SET @PUNTOS_EQUIVALENTES = @PUNTOS_EQUIVALENTES_DB;
        END
        ELSE
        BEGIN
            -- Si no se encuentra en BD, usar parámetros por defecto
            IF @MONTO_BASE_DEFAULT IS NOT NULL
                SET @MONTO_BASE = @MONTO_BASE_DEFAULT;
            IF @PUNTOS_EQUIVALENTES_DEFAULT IS NOT NULL
                SET @PUNTOS_EQUIVALENTES = @PUNTOS_EQUIVALENTES_DEFAULT;
        END
        
        -- Si no hay valores en BD ni en parámetros, mostrar error
        IF @MONTO_BASE IS NULL OR @PUNTOS_EQUIVALENTES IS NULL
        BEGIN
            RAISERROR('No existe regla de puntos para esta campaña, tienda y moneda', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END
        
        -- 7. Verificar si hay multiplicador especial para esta tienda en la campaña
        SELECT TOP 1 @MULTIPLICADOR = MULTIPLICADOR
        FROM campana_tienda_multiplicador
        WHERE ID_CAMPANA = @ID_CAMPANA 
          AND ID_TIENDA = @ID_TIENDA
          AND MONEDA = @MONEDA
          AND ACTIVO = 1;
        
        -- 8. Obtener monto residual consolidado del cliente real (todos los ID_CLIENTE_CAMPANA del mismo cliente)
        DECLARE @ID_TIPO_DOC_RESIDUAL INT, @NUMERO_DOC_RESIDUAL NVARCHAR(20);
        
        -- Obtener datos del cliente actual para consolidación de residuales
        SELECT @ID_TIPO_DOC_RESIDUAL = ID_TIPO_DOCUMENTO, @NUMERO_DOC_RESIDUAL = NUMERO_DOCUMENTO
        FROM cliente_campana 
        WHERE ID_CLIENTE_CAMPANA = @ID_CLIENTE_CAMPANA;
        
        -- Sumar todos los residuales del mismo cliente real en la misma campaña
        SELECT @MONTO_RESIDUAL_ACTUAL = ISNULL(SUM(ccr.MONTO_RESIDUAL), 0)
        FROM cliente_campana_residual ccr
        INNER JOIN cliente_campana cc ON ccr.ID_CLIENTE_CAMPANA = cc.ID_CLIENTE_CAMPANA
        WHERE cc.ID_CAMPANA = @ID_CAMPANA
          AND cc.ID_TIPO_DOCUMENTO = @ID_TIPO_DOC_RESIDUAL
          AND cc.NUMERO_DOCUMENTO = @NUMERO_DOC_RESIDUAL
          AND ccr.MONEDA = @MONEDA;
        
        -- 9. Calcular puntos y nuevo residual
        SET @MONTO_PARA_PUNTOS = @MONTO_TOTAL + @MONTO_RESIDUAL_ACTUAL;
        SET @PUNTOS_OTORGADOS = FLOOR(@MONTO_PARA_PUNTOS / @MONTO_BASE) * @PUNTOS_EQUIVALENTES;
        
        -- Aplicar multiplicador si existe
        IF @MULTIPLICADOR > 1.0
        BEGIN
            SET @PUNTOS_OTORGADOS = FLOOR(@PUNTOS_OTORGADOS * @MULTIPLICADOR);
        END
        
        -- Calcular nuevo monto residual
        SET @NUEVO_RESIDUAL = @MONTO_PARA_PUNTOS - (FLOOR(@MONTO_PARA_PUNTOS / @MONTO_BASE) * @MONTO_BASE);
        
        -- 10. Insertar registro de puntos del comprobante
        INSERT INTO comprobante_puntos (
            ID_COMPROBANTE, PUNTOS_OTORGADOS, MONTO_ACUMULADO, 
            MULTIPLICADOR_APLICADO, USUARIO_CREACION, FECHA_CREACION
        ) VALUES (
            @ID_COMPROBANTE, @PUNTOS_OTORGADOS, @MONTO_TOTAL,
            CASE WHEN @MULTIPLICADOR > 1.0 THEN 1 ELSE 0 END, @USUARIO_CREACION, @FECHA_CREACION
        );
        
        -- 11. Actualizar residuales consolidados para todos los ID_CLIENTE_CAMPANA del mismo cliente real
        -- Primero, limpiar residuales existentes de otros ID_CLIENTE_CAMPANA del mismo cliente
        DELETE ccr
        FROM cliente_campana_residual ccr
        INNER JOIN cliente_campana cc ON ccr.ID_CLIENTE_CAMPANA = cc.ID_CLIENTE_CAMPANA
        WHERE cc.ID_CAMPANA = @ID_CAMPANA
          AND cc.ID_TIPO_DOCUMENTO = @ID_TIPO_DOC_RESIDUAL
          AND cc.NUMERO_DOCUMENTO = @NUMERO_DOC_RESIDUAL
          AND ccr.MONEDA = @MONEDA
          AND ccr.ID_CLIENTE_CAMPANA != @ID_CLIENTE_CAMPANA;
        
        -- Actualizar o insertar el residual consolidado en el ID_CLIENTE_CAMPANA actual
        IF EXISTS (SELECT 1 FROM cliente_campana_residual 
                  WHERE ID_CLIENTE_CAMPANA = @ID_CLIENTE_CAMPANA AND MONEDA = @MONEDA)
        BEGIN
            UPDATE cliente_campana_residual
            SET MONTO_RESIDUAL = @NUEVO_RESIDUAL,
                USUARIO_MODIFICACION = @USUARIO_CREACION,
                FECHA_MODIFICACION = @FECHA_CREACION
            WHERE ID_CLIENTE_CAMPANA = @ID_CLIENTE_CAMPANA AND MONEDA = @MONEDA;
        END
        ELSE
        BEGIN
            INSERT INTO cliente_campana_residual (
                ID_CLIENTE_CAMPANA, MONTO_RESIDUAL, MONEDA, 
                USUARIO_CREACION, FECHA_CREACION
            ) VALUES (
                @ID_CLIENTE_CAMPANA, @NUEVO_RESIDUAL, @MONEDA,
                @USUARIO_CREACION, @FECHA_CREACION
            );
        END
        
        -- 12. Actualizar o insertar puntos totales del cliente
        -- Solo actualizar los puntos del ID_CLIENTE_CAMPANA actual
        DECLARE @PUNTOS_EXISTENTES_ACTUAL INT = 0;
        
        -- Obtener puntos existentes del ID_CLIENTE_CAMPANA actual
        SELECT @PUNTOS_EXISTENTES_ACTUAL = ISNULL(PUNTOS_TOTALES, 0)
        FROM cliente_campana_puntos
        WHERE ID_CLIENTE_CAMPANA = @ID_CLIENTE_CAMPANA;
        
        -- Calcular nuevos puntos totales para este ID_CLIENTE_CAMPANA
        SET @PUNTOS_TOTALES = @PUNTOS_EXISTENTES_ACTUAL + @PUNTOS_OTORGADOS;
        
        -- Actualizar o insertar en la tabla de puntos para el ID_CLIENTE_CAMPANA actual
        IF EXISTS (SELECT 1 FROM cliente_campana_puntos 
                  WHERE ID_CLIENTE_CAMPANA = @ID_CLIENTE_CAMPANA)
        BEGIN
            UPDATE cliente_campana_puntos
            SET PUNTOS_TOTALES = @PUNTOS_TOTALES,
                FECHA_ACTUALIZACION = @FECHA_CREACION,
                USUARIO_MODIFICACION = @USUARIO_CREACION,
                FECHA_MODIFICACION = @FECHA_CREACION
            WHERE ID_CLIENTE_CAMPANA = @ID_CLIENTE_CAMPANA;
        END
        ELSE
        BEGIN
            INSERT INTO cliente_campana_puntos (
                ID_CLIENTE_CAMPANA, PUNTOS_TOTALES, FECHA_ACTUALIZACION,
                USUARIO_CREACION
            ) VALUES (
                @ID_CLIENTE_CAMPANA, @PUNTOS_TOTALES, @FECHA_CREACION,
                @USUARIO_CREACION
            );
        END
        
        -- Obtener el total consolidado real para retornar al usuario
        DECLARE @PUNTOS_CONSOLIDADOS_REAL INT = 0;
        DECLARE @ID_TIPO_DOC_ACTUAL INT, @NUMERO_DOC_ACTUAL NVARCHAR(20);
        
        -- Obtener datos del cliente actual
        SELECT @ID_TIPO_DOC_ACTUAL = ID_TIPO_DOCUMENTO, @NUMERO_DOC_ACTUAL = NUMERO_DOCUMENTO
        FROM cliente_campana 
        WHERE ID_CLIENTE_CAMPANA = @ID_CLIENTE_CAMPANA;
        
        -- Sumar todos los puntos del mismo cliente real en la misma campaña para mostrar al usuario
        SELECT @PUNTOS_CONSOLIDADOS_REAL = ISNULL(SUM(ccp.PUNTOS_TOTALES), 0)
        FROM cliente_campana_puntos ccp
        INNER JOIN cliente_campana cc ON ccp.ID_CLIENTE_CAMPANA = cc.ID_CLIENTE_CAMPANA
        WHERE cc.ID_CAMPANA = @ID_CAMPANA
          AND cc.ID_TIPO_DOCUMENTO = @ID_TIPO_DOC_ACTUAL
          AND cc.NUMERO_DOCUMENTO = @NUMERO_DOC_ACTUAL;
        
        -- Retornar el total consolidado real al usuario
        SET @PUNTOS_TOTALES = @PUNTOS_CONSOLIDADOS_REAL;
        
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        
        -- Registrar el error en la tabla de errores
        INSERT INTO error (ACCION, ERROR, ENTIDAD, USUARIO_CREACION, FECHA_CREACION)
        VALUES ('sp_insert_comprobante', ERROR_MESSAGE(), 'comprobante', SYSTEM_USER, GETDATE());
        
        -- Reenviar el error al cliente
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_cupon_campana]...';


GO

CREATE   PROCEDURE [dbo].[sp_insert_cupon_campana]
    @ID_CAMPANA INT,
    @ID_TIENDA INT,
    @NOMBRE NVARCHAR(100),
    @DESCRIPCION NVARCHAR(100),
    @ID_IMAGEN_CUPON INT,
    @REDIRECT_URL NVARCHAR(100),
    @VIGENTE BIT,
    @ID_CAMPANA_CUPON_TIENDA INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Variables locales
    DECLARE @ID_CUPON INT;
    DECLARE @FechaActual DATETIME = DATEADD(HH, -5, GETDATE());
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    
    -- Inicializar parámetro de salida
    SET @ID_CAMPANA_CUPON_TIENDA = 0;
    
    BEGIN TRY
        
        -- Verificar que la campaña existe
        IF NOT EXISTS (SELECT 1 FROM [dbo].[campana] WHERE [ID_CAMPANA] = @ID_CAMPANA)
        BEGIN
            RAISERROR('La campaña especificada no existe', 16, 1);
            RETURN -1;
        END
        
        -- Verificar que la tienda existe
        IF NOT EXISTS (SELECT 1 FROM [dbo].[tienda] WHERE [ID_TIENDA] = @ID_TIENDA)
        BEGIN
            RAISERROR('La tienda especificada no existe', 16, 1);
            RETURN -1;
        END
        
        -- Iniciar transacción
        BEGIN TRANSACTION;
        
        -- Insertar cupón
        INSERT INTO [dbo].[cupon] (
            [NOMBRE],
            [DESCRIPCION],
            [ID_IMAGEN_CUPON],
            [REDIRECT_URL],
            [FECHA_CREACION],
            [VIGENTE]
        )
        VALUES (
            @NOMBRE,
            @DESCRIPCION,
            @ID_IMAGEN_CUPON,
            @REDIRECT_URL,
            @FechaActual,
            @VIGENTE
        );
        
        -- Obtener el ID del cupón insertado
        SET @ID_CUPON = SCOPE_IDENTITY();
        
        -- Verificar que se obtuvo el ID correctamente
        IF @ID_CUPON IS NULL OR @ID_CUPON <= 0
        BEGIN
            RAISERROR('Error al obtener el ID del cupón insertado', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN -2;
        END
        
        -- Insertar relación campaña-cupón-tienda
        INSERT INTO [dbo].[campana_cupon_tienda] (
            [ID_CAMPANA],
            [ID_CUPON],
            [ID_TIENDA],
            [FECHA_CREACION]
        )
        VALUES (
            @ID_CAMPANA,
            @ID_CUPON,
            @ID_TIENDA,
            @FechaActual
        );
        
        -- Obtener el ID de la relación insertada
        SET @ID_CAMPANA_CUPON_TIENDA = SCOPE_IDENTITY();
        
        -- Verificar que se obtuvo el ID correctamente
        IF @ID_CAMPANA_CUPON_TIENDA IS NULL OR @ID_CAMPANA_CUPON_TIENDA <= 0
        BEGIN
            RAISERROR('Error al obtener el ID de la relación campaña-cupón-tienda', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN -2;
        END
        
        -- Confirmar transacción
        COMMIT TRANSACTION;
        
        -- Retorno exitoso
        RETURN 0;
        
    END TRY
    BEGIN CATCH
        -- Rollback en caso de error
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        
        -- Capturar información del error
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
        
        -- Re-lanzar el error
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        
        -- Retorno de error
        RETURN -2;
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_cupon_campana_cliente]...';


GO
/*
==============================================================================
Procedimiento: sp_insert_cupon_campana_cliente
Descripción: Inserta cupones de campaña para un cliente específico o retorna la imagen
             del cupón existente si ya tiene cupones asignados para esa campaña y tienda
Parámetros:
    - @ID_CLIENTE: ID del cliente
    - @ID_CAMPANA: ID de la campaña
    - @ID_TIENDA: ID de la tienda
    - @ID_IMAGEN_CUPON: ID de la imagen del cupón (OUTPUT)
Retorno:
    - 0: Operación exitosa
    - -2: Error durante la inserción
Ejemplos de uso:
    DECLARE @IdImagenCupon INT;
    EXEC sp_insert_cupon_campana_cliente 
        @ID_CLIENTE = 1,
        @ID_CAMPANA = 1,
        @ID_TIENDA = 1,
        @ID_IMAGEN_CUPON = @IdImagenCupon OUTPUT;
Historial de cambios:
- 10-08-2025 | Jerson Huayta | Creación inicial
- 25-08-2025 | Carlos Lazaro | Implementación de buenas prácticas y manejo de errores
- 25-08-2025 | Carlos Lazaro | Refactorización del flujo de validación y limpieza de código
==============================================================================
*/
CREATE   PROCEDURE [dbo].[sp_insert_cupon_campana_cliente]
    @ID_CLIENTE INT,
    @ID_CAMPANA INT,
    @ID_TIENDA INT,
    @ID_IMAGEN_CUPON INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Variables locales
    DECLARE @COUNT INT = 0;
    DECLARE @ID_IMAGEN INT = 0;
    DECLARE @FechaActual DATETIME = DATEADD(HH, -5, GETDATE());
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    
    -- Inicializar parámetro de salida
    SET @ID_IMAGEN_CUPON = 0;
    
    BEGIN TRY
        
        -- Paso 1: Verificar si existe cupón configurado para la tienda y campaña
        SELECT @COUNT = COUNT(1)
        FROM [dbo].[campana_cupon_tienda] cct
        INNER JOIN [dbo].[cupon] c ON c.[ID_CUPON] = cct.[ID_CUPON]
        WHERE cct.[ID_CAMPANA] = @ID_CAMPANA 
          AND cct.[ID_TIENDA] = @ID_TIENDA
          AND c.[VIGENTE] = 1;
        
        IF @COUNT > 0
        BEGIN
            -- Paso 2: Verificar si ya se asignó el cupón al usuario
            SELECT @COUNT = COUNT(1)
            FROM [dbo].[campana_cliente_cupon]
            WHERE [ID_CLIENTE] = @ID_CLIENTE
              AND [ID_CAMPANA] = @ID_CAMPANA
              AND [ID_TIENDA] = @ID_TIENDA;
            
            IF @COUNT >= 1
            BEGIN
                -- Paso 3: Ya está asignado, obtener el ID_IMAGEN_CUPON existente
                SELECT TOP 1 @ID_IMAGEN = c.[ID_IMAGEN_CUPON]
                FROM [dbo].[cupon] c
                INNER JOIN [dbo].[campana_cliente_cupon] ccc ON ccc.[ID_CUPON] = c.[ID_CUPON]
                WHERE ccc.[ID_CLIENTE] = @ID_CLIENTE
                  AND ccc.[ID_CAMPANA] = @ID_CAMPANA
                  AND ccc.[ID_TIENDA] = @ID_TIENDA
                ORDER BY ccc.[FECHA_CREACION] DESC;
                
                SET @ID_IMAGEN_CUPON = ISNULL(@ID_IMAGEN, 0);
            END
            ELSE
            BEGIN
                -- Paso 4: No está asignado, proceder con la asignación
                BEGIN TRANSACTION;
                
                -- Insertar la asignación del cupón al cliente
                INSERT INTO [dbo].[campana_cliente_cupon] (
                    [ID_CAMPANA],
                    [ID_CLIENTE],
                    [ID_TIENDA],
                    [ID_CUPON],
                    [FECHA_CREACION]
                )
                SELECT 
                    @ID_CAMPANA,
                    @ID_CLIENTE,
                    @ID_TIENDA,
                    cct.[ID_CUPON],
                    @FechaActual
                FROM [dbo].[campana_cupon_tienda] cct
                INNER JOIN [dbo].[cupon] c ON c.[ID_CUPON] = cct.[ID_CUPON]
                WHERE cct.[ID_CAMPANA] = @ID_CAMPANA
                  AND cct.[ID_TIENDA] = @ID_TIENDA
                  AND c.[VIGENTE] = 1;
                
                -- Obtener la imagen del cupón asignado
                SELECT TOP 1 @ID_IMAGEN = c.[ID_IMAGEN_CUPON]
                FROM [dbo].[cupon] c
                INNER JOIN [dbo].[campana_cliente_cupon] ccc ON ccc.[ID_CUPON] = c.[ID_CUPON]
                WHERE ccc.[ID_CLIENTE] = @ID_CLIENTE
                  AND ccc.[ID_CAMPANA] = @ID_CAMPANA
                  AND ccc.[ID_TIENDA] = @ID_TIENDA
                ORDER BY ccc.[FECHA_CREACION] DESC;
                
                SET @ID_IMAGEN_CUPON = ISNULL(@ID_IMAGEN, 0);
                
                -- Confirmar transacción
                COMMIT TRANSACTION;
            END
        END
        ELSE
        BEGIN
            -- Paso 5: No existe cupón configurado, dejar @ID_IMAGEN_CUPON en cero
            SET @ID_IMAGEN_CUPON = 0;
        END
        
        -- Retorno exitoso
        RETURN 0;
        
    END TRY
    BEGIN CATCH
        -- Rollback en caso de error
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        
        -- Capturar información del error
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
        
        -- Re-lanzar el error
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        
        -- Retorno de error
        RETURN -2;
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_documento_legal]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/06/2025
-- Description:     Insert documento legal
-- EXEC [dbo].[sp_insert_documento_legal] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_documento_legal]
    @ID_EMPRESA          			INT,
    @ID_CATEGORIA_DOCUMENTO_LEGAL	INT,
    @NOMBRE              			NVARCHAR(100),
    @DESCRIPCION					NVARCHAR(100),
    @ID_ARCHIVO_DOCUMENTO     		INT,
    @VIGENTE     					BIT,
    @USUARIO_CREACION    			NVARCHAR(100),
    @ID_DOCUMENTO_LEGAL          	INT OUTPUT
AS
BEGIN		
    DECLARE @COUNT INT;

    SELECT @COUNT = COUNT(1) 
    FROM [dbo].[documento_legal]
    WHERE NOMBRE = @NOMBRE AND DESCRIPCION = @DESCRIPCION;
    IF @COUNT >= 1
    BEGIN
        THROW 50001, 'Ya existe uno o más registros con este nombre y descripción.', 1;
    END


    INSERT INTO [dbo].[documento_legal]
           ([ID_EMPRESA]
           ,[ID_CATEGORIA_DOCUMENTO_LEGAL]
           ,[NOMBRE]
           ,[DESCRIPCION]
           ,[ID_ARCHIVO_DOCUMENTO]
           ,[VIGENTE]
           ,[ESTADO]
           ,[USUARIO_CREACION]
           ,[FECHA_CREACION])
     VALUES
           (@ID_EMPRESA
           ,@ID_CATEGORIA_DOCUMENTO_LEGAL
           ,@NOMBRE
           ,@DESCRIPCION
           ,@ID_ARCHIVO_DOCUMENTO
           ,@VIGENTE
           ,1
           ,@USUARIO_CREACION
           ,DATEADD(HH, -5, GETDATE()))

    SET @ID_DOCUMENTO_LEGAL = SCOPE_IDENTITY()
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_multiplicador]...';


GO
/*
=============================================================================
Procedimiento: sp_insert_multiplicador
=============================================================================
Descripción: 
Inserta un nuevo multiplicador para una campaña-tienda específica.

Parámetros:
- @ID_CAMPANA_TIENDA: ID de la relación campaña-tienda para el multiplicador
- @MULTIPLICADOR: Valor del multiplicador (ej: 1.5, 2.0)
- @ACTIVO: Estado del multiplicador (1=activo, 0=inactivo)
- @USUARIO_CREACION: Usuario que crea el registro
- @FECHA_CREACION: Fecha de creación del registro (opcional, si es NULL se usa GETDATE())
- @ID_CONFIGURACION_MULTIPLICADOR: (Salida) ID del multiplicador creado

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Insertar un nuevo multiplicador:
  DECLARE @ID_NUEVO INT
  EXEC sp_insert_multiplicador 5, 2.0, 1, 'usuario_sistema', @ID_NUEVO OUTPUT
  SELECT @ID_NUEVO AS NuevoID

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Creación inicial
- Fecha: 2025-07-11 | Autor: Carlos Lázaro | Descripción: Agregado parámetro FECHA_CREACION opcional
=============================================================================
*/

CREATE   PROCEDURE sp_insert_multiplicador
    @ID_CAMPANA_TIENDA INT,
    @MULTIPLICADOR DECIMAL(5,2),
    @ACTIVO BIT,
    @USUARIO_CREACION NVARCHAR(100),
    @FECHA_CREACION DATETIME = NULL,
    @ID_CONFIGURACION_MULTIPLICADOR INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Si no se proporciona fecha de creación, usar la fecha actual
        IF @FECHA_CREACION IS NULL
            SET @FECHA_CREACION = GETDATE();

        -- Verificar que la campaña-tienda exista
        IF NOT EXISTS (SELECT 1 FROM campana_tienda WHERE ID_CAMPANA_TIENDA = @ID_CAMPANA_TIENDA)
        BEGIN
            RAISERROR('La relación campaña-tienda especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Insertar el nuevo multiplicador
        INSERT INTO configuracion_multiplicador (
            ID_CAMPANA_TIENDA,
            MULTIPLICADOR,
            ACTIVO,
            USUARIO_CREACION,
            FECHA_CREACION
        ) VALUES (
            @ID_CAMPANA_TIENDA,
            @MULTIPLICADOR,
            @ACTIVO,
            @USUARIO_CREACION,
            @FECHA_CREACION
        );
        
        -- Obtener el ID generado
        SET @ID_CONFIGURACION_MULTIPLICADOR = SCOPE_IDENTITY();
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_qr_plantilla]...';


GO
/*
=============================================================================
Procedimiento: sp_insert_qr_plantilla
=============================================================================
Descripción: 
Inserta una nueva plantilla QR para una tienda específica (por RUC) o una plantilla global.
Si la plantilla se marca como activa, desactiva las demás plantillas del mismo tipo
(específicas de la tienda o globales).

Parámetros:
- @RUC_TIENDA: RUC de la tienda a la que pertenece la plantilla. Si es NULL, se crea una plantilla global.
- @DESCRIPCION: Descripción o nombre de la plantilla
- @ACTIVO: Indica si la plantilla estará activa (1) o inactiva (0)
- @USUARIO_CREACION: Usuario que crea el registro
- @ID_QR_PLANTILLA OUTPUT: ID de la plantilla creada (parámetro de salida)

Retorno:
- 0: Ejecución exitosa
- 1: Error en la ejecución

Ejemplos de uso:
- Insertar una nueva plantilla QR para una tienda específica:
  DECLARE @ID_QR_PLANTILLA INT
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_insert_qr_plantilla 
      @RUC_TIENDA = '20123456789', 
      @DESCRIPCION = 'Plantilla Estándar', 
      @ACTIVO = 1,
      @USUARIO_CREACION = 'usuario_test',
      @ID_QR_PLANTILLA = @ID_QR_PLANTILLA OUTPUT
  
  IF @RESULTADO = 0
      SELECT 'Plantilla creada con éxito. ID: ' + CAST(@ID_QR_PLANTILLA AS VARCHAR(10))
  ELSE
      SELECT 'Error al crear la plantilla'

- Insertar una plantilla global:
  DECLARE @ID_QR_PLANTILLA INT
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_insert_qr_plantilla 
      @RUC_TIENDA = NULL, 
      @DESCRIPCION = 'Plantilla Global', 
      @ACTIVO = 1,
      @USUARIO_CREACION = 'usuario_test',
      @ID_QR_PLANTILLA = @ID_QR_PLANTILLA OUTPUT

Historial de cambios:
- Fecha: 2025-08-27 | Autor: Carlos Lázaro | Descripción: Eliminación de ID_TIENDA, trabajo exclusivo con RUC_TIENDA
- Fecha: 2025-08-27 | Autor: Carlos Lázaro | Descripción: Adición del campo RUC_TIENDA
- Fecha: 2025-07-30 | Autor: Carlos Lázaro | Descripción: Modificación para soportar plantillas globales
- Fecha: 2025-07-15 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_insert_qr_plantilla]
    @RUC_TIENDA VARCHAR(11) = NULL,
    @DESCRIPCION NVARCHAR(255),
    @ACTIVO BIT,
    @USUARIO_CREACION NVARCHAR(100),
    @FECHA_CREACION DATETIME = NULL,
    @ID_QR_PLANTILLA INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    DECLARE @FECHA_REFERENCIA DATETIME;
    
    BEGIN TRY
        -- Si no se proporciona fecha de creación, usar la fecha actual
        IF @FECHA_CREACION IS NULL
            SET @FECHA_CREACION = GETDATE();
            
        -- Verificar si la tienda existe (solo si no es una plantilla global)
        IF @RUC_TIENDA IS NOT NULL
        BEGIN
            -- Calcular fecha de referencia (GETDATE() - 5 horas)
            SET @FECHA_REFERENCIA = DATEADD(HOUR, -5, GETDATE());
            
            -- Verificar que la tienda con el RUC especificado exista y esté activa
            IF NOT EXISTS (
                SELECT 1 
                FROM tienda 
                WHERE RUC = @RUC_TIENDA
                  AND @FECHA_REFERENCIA >= FECHA_DESDE 
                  AND @FECHA_REFERENCIA <= FECHA_HASTA
            )
            BEGIN
                RAISERROR('La tienda con el RUC especificado no existe o no está activa en el período válido.', 16, 1);
                RETURN 1;
            END
        END
        
        -- Si la nueva plantilla será activa, desactivamos las demás del mismo tipo
        IF @ACTIVO = 1
        BEGIN
            IF @RUC_TIENDA IS NULL
            BEGIN
                -- Desactivar otras plantillas globales
                UPDATE qr_plantilla
                SET ACTIVO = 0,
                    USUARIO_MODIFICACION = @USUARIO_CREACION,
                    FECHA_MODIFICACION = GETDATE()
                WHERE RUC_TIENDA IS NULL;
            END
            ELSE
            BEGIN
                -- Desactivar otras plantillas de la misma tienda (por RUC_TIENDA)
                UPDATE qr_plantilla
                SET ACTIVO = 0,
                    USUARIO_MODIFICACION = @USUARIO_CREACION,
                    FECHA_MODIFICACION = GETDATE()
                WHERE RUC_TIENDA = @RUC_TIENDA;
            END
        END
        
        -- Insertamos la nueva plantilla
        INSERT INTO qr_plantilla (
            RUC_TIENDA,
            DESCRIPCION,
            ACTIVO,
            USUARIO_CREACION,
            FECHA_CREACION
        ) VALUES (
            @RUC_TIENDA,
            @DESCRIPCION,
            @ACTIVO,
            @USUARIO_CREACION,
            @FECHA_CREACION
        );
        
        -- Obtenemos el ID generado
        SET @ID_QR_PLANTILLA = SCOPE_IDENTITY();
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
            
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH;
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_qr_plantilla_campo]...';


GO
/*
=============================================================================
Procedimiento: sp_insert_qr_plantilla_campo
=============================================================================
Descripción: 
Inserta un nuevo campo para una plantilla QR existente.

Parámetros:
- @ID_QR_PLANTILLA: ID de la plantilla QR a la que pertenece el campo
- @POSICION: Posición del campo dentro de la plantilla
- @NOMBRE_CAMPO: Nombre o identificador del campo
- @TRANSFORMACION: Operaciones específicas para extraer o transformar el valor
- @FORMATO_ESPERADO: Formato típico del valor para referencia y depuración
- @USUARIO_CREACION: Usuario que crea el registro
- @ID_QR_PLANTILLA_CAMPO OUTPUT: ID del campo creado (parámetro de salida)

Retorno:
- 0: Ejecución exitosa
- 1: Error en la ejecución

Ejemplos de uso:
- Insertar un nuevo campo para una plantilla QR:
  DECLARE @ID_QR_PLANTILLA_CAMPO INT
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_insert_qr_plantilla_campo 
      @ID_QR_PLANTILLA = 1, 
      @POSICION = 1,
      @NOMBRE_CAMPO = 'RUC',
      @TRANSFORMACION = 'EXTRAER_RUC',
      @FORMATO_ESPERADO = '20123456789',
      @USUARIO_CREACION = 'usuario_test',
      @ID_QR_PLANTILLA_CAMPO = @ID_QR_PLANTILLA_CAMPO OUTPUT
  
  IF @RESULTADO = 0
      SELECT 'Campo creado con éxito. ID: ' + CAST(@ID_QR_PLANTILLA_CAMPO AS VARCHAR(10))
  ELSE
      SELECT 'Error al crear el campo'

Historial de cambios:
- Fecha: 2025-07-15 | Autor: Carlos Lázaro | Descripción: Creación inicial
- Fecha: 2025-07-28 | Autor: Carlos Lázaro | Descripción: Se agregaron campos TRANSFORMACION y FORMATO_ESPERADO
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_insert_qr_plantilla_campo]
    @ID_QR_PLANTILLA INT,
    @POSICION INT,
    @NOMBRE_CAMPO NVARCHAR(100),
    @TRANSFORMACION NVARCHAR(255) = NULL,
    @FORMATO_ESPERADO NVARCHAR(100) = NULL,
    @USUARIO_CREACION NVARCHAR(100),
    @FECHA_CREACION DATETIME = NULL,
    @ID_QR_PLANTILLA_CAMPO INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    
    BEGIN TRY
        -- Si no se proporciona fecha de creación, usar la fecha actual
        IF @FECHA_CREACION IS NULL
            SET @FECHA_CREACION = GETDATE();
            
        -- Verificar si la plantilla existe
        IF NOT EXISTS (SELECT 1 FROM qr_plantilla WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA)
        BEGIN
            RAISERROR('La plantilla QR especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Verificar si ya existe un campo con la misma posición en la plantilla
        IF EXISTS (SELECT 1 FROM qr_plantilla_campo WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA AND POSICION = @POSICION)
        BEGIN
            RAISERROR('Ya existe un campo en la posición especificada para esta plantilla.', 16, 1);
            RETURN 1;
        END
        
        -- Insertar el campo
        INSERT INTO qr_plantilla_campo (
            ID_QR_PLANTILLA,
            POSICION,
            NOMBRE_CAMPO,
            TRANSFORMACION,
            FORMATO_ESPERADO,
            USUARIO_CREACION,
            FECHA_CREACION
        ) VALUES (
            @ID_QR_PLANTILLA,
            @POSICION,
            @NOMBRE_CAMPO,
            @TRANSFORMACION,
            @FORMATO_ESPERADO,
            @USUARIO_CREACION,
            @FECHA_CREACION
        );
        
        -- Obtener el ID generado
        SET @ID_QR_PLANTILLA_CAMPO = SCOPE_IDENTITY();
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
            
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH;
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_regla_puntos]...';


GO
/*
=============================================================================
Procedimiento: sp_insert_regla_puntos
=============================================================================
Descripción: 
Inserta una nueva regla de puntos para una campaña, opcionalmente específica para una tienda.
Permite establecer la relación entre un monto base y sus puntos equivalentes.

Parámetros:
- @ID_CAMPANA: ID de la campaña a la que pertenece la regla
- @ID_TIENDA: (Opcional) ID de la tienda si la regla es específica para una tienda
- @MONEDA: Moneda de la regla (ej: 'PEN', 'USD')
- @MONTO_BASE: Monto base para el cálculo de puntos (ej: 100.00)
- @PUNTOS_EQUIVALENTES: Puntos equivalentes al monto base (ej: 5)
- @USUARIO_CREACION: Usuario que crea el registro
- @FECHA_CREACION: (Opcional) Fecha de creación del registro, por defecto la fecha actual
- @ID_REGLA_PUNTOS_OUT: (Salida) ID de la regla de puntos creada

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Insertar regla general para toda la campaña:
  DECLARE @ID INT
  EXEC sp_insert_regla_puntos 1, NULL, 'PEN', 100.00, 5, 'usuario_sistema', NULL, @ID OUTPUT

- Insertar regla específica para una tienda:
  DECLARE @ID INT
  EXEC sp_insert_regla_puntos 1, 3, 'PEN', 80.00, 5, 'usuario_sistema', '2025-07-15', @ID OUTPUT

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Añadidos campos de USUARIO_CREACION y FECHA_CREACION
- Fecha: 2025-07-08 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_insert_regla_puntos
    @ID_CAMPANA INT,
    @ID_TIENDA INT = NULL,
    @MONEDA NVARCHAR(10),
    @MONTO_BASE DECIMAL(10,2),
    @PUNTOS_EQUIVALENTES INT,
    @USUARIO_CREACION NVARCHAR(100),
    @FECHA_CREACION DATETIME = NULL,
    @ID_REGLA_PUNTOS_OUT INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Si no se proporciona fecha de creación, usar la fecha actual
        IF @FECHA_CREACION IS NULL
            SET @FECHA_CREACION = GETDATE();
            
        -- Validaciones básicas
        IF @ID_CAMPANA IS NULL
        BEGIN
            RAISERROR('El ID de la campaña no puede ser nulo.', 16, 1);
            RETURN 1;
        END
        
        -- Verificar si ya existe una regla para esta combinación
        IF EXISTS (
            SELECT 1 
            FROM regla_puntos 
            WHERE ID_CAMPANA = @ID_CAMPANA 
              AND ID_TIENDA = @ID_TIENDA 
              AND MONEDA = @MONEDA
        )
        BEGIN
            RAISERROR('Ya existe una regla de puntos para esta combinación de campaña, tienda y moneda.', 16, 1);
            RETURN 1;
        END
        
        -- Calcular el monto por punto
        DECLARE @MONTO_POR_PUNTO DECIMAL(10,2) = @MONTO_BASE / @PUNTOS_EQUIVALENTES;
        
        -- Insertar la nueva regla
        INSERT INTO regla_puntos (
            ID_CAMPANA, 
            ID_TIENDA, 
            MONEDA, 
            MONTO_BASE, 
            PUNTOS_EQUIVALENTES, 
            MONTO_POR_PUNTO,
            USUARIO_CREACION,
            FECHA_CREACION
        )
        VALUES (
            @ID_CAMPANA, 
            @ID_TIENDA, 
            @MONEDA, 
            @MONTO_BASE, 
            @PUNTOS_EQUIVALENTES, 
            @MONTO_POR_PUNTO,
            @USUARIO_CREACION,
            @FECHA_CREACION
        );
        
        -- Obtener el ID generado
        SET @ID_REGLA_PUNTOS_OUT = SCOPE_IDENTITY();
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_sponsor]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/06/2025
-- Description:     Insert sponsor
-- EXEC [dbo].[sp_insert_sponsor] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_sponsor]
    @ID_EMPRESA          INT,
    @NOMBRE              NVARCHAR(100),
    @ID_ARCHIVO_LOGO     INT,
    @ID_CAMPANA          INT, 
    @USUARIO_CREACION    NVARCHAR(100),
    @ID_SPONSOR          INT OUTPUT
AS
BEGIN		
    DECLARE @MAX INT
    DECLARE @COUNT INT;

    SELECT @COUNT = COUNT(1) 
    FROM [dbo].[sponsor]
    WHERE NOMBRE = @NOMBRE AND VIGENTE=1;
    IF @COUNT >= 1
    BEGIN
        THROW 50001, 'Ya existe uno o más registros con este nombre.', 1;
    END

	SELECT @MAX = isnull(MAX(ORDEN), 0) + 1
	FROM [dbo].[sponsor]

    INSERT INTO [dbo].[sponsor]
           ([ID_EMPRESA]
           ,[NOMBRE]
           ,[ID_ARCHIVO_LOGO]
           ,[ID_CAMPANA]
           ,[VIGENTE]
           ,[ORDEN]
           ,[USUARIO_CREACION]
           ,[FECHA_CREACION])
     VALUES
           (@ID_EMPRESA
           ,@NOMBRE
           ,@ID_ARCHIVO_LOGO
           ,@ID_CAMPANA
           ,1
           ,@MAX
           ,@USUARIO_CREACION
           ,DATEADD(HH, -5, GETDATE()))

    SET @ID_SPONSOR = SCOPE_IDENTITY()
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_step_by_campaign_id]...';


GO
CREATE PROCEDURE [sp_insert_step_by_campaign_id]
    @CampaignId INT,
    @StepTitle NVARCHAR(100),
    @StepDescription NVARCHAR(300),
    @Path NVARCHAR(300),
    @StepOrder INT,
    @IdArchivo INT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO step (
        campaign_id, 
        title, 
        description, 
        path, 
        step_order, 
        id_archivo
    )
    VALUES (
        @CampaignId, 
        @StepTitle, 
        @StepDescription, 
        @Path, 
        @StepOrder, 
        @IdArchivo
    );
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_tienda]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/06/2025
-- Description:     Insert tienda
-- EXEC [dbo].[sp_insert_tienda] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_tienda]
    @NOMBRE             NVARCHAR(250),
    @NUMERO_LOCAL       NVARCHAR(100),
    @NUMERO_CONTRATO    NVARCHAR(100),
    @RAZON_SOCIAL       NVARCHAR(100),
    @RUC              	NVARCHAR(50),
    @FECHA_DESDE      	DATETIME = NULL,
    @FECHA_HASTA      	DATETIME = NULL,
    @FECHA_SALIDA      	DATETIME = NULL,
    @TIPO_LOCAL 		NVARCHAR(100),
    @COD_CEN_COMERCIAL	NVARCHAR(50),
    @RUBRO				NVARCHAR(255),
    @ID_EMPRESA			int
AS
BEGIN		
    DECLARE @COUNT INT;

    SELECT @COUNT = COUNT(1) 
    FROM [dbo].[tienda]
    WHERE RUC = @RUC AND NUMERO_CONTRATO = @NUMERO_CONTRATO;
    IF @COUNT >= 1
    BEGIN
        UPDATE [dbo].[tienda] 
    	SET VIGENTE = 1 
    	WHERE RUC = @RUC 
    		AND NUMERO_CONTRATO = @NUMERO_CONTRATO;
    END
    ELSE 
    BEGIN
        INSERT INTO [dbo].[tienda]
            ([ID_EMPRESA]
            ,[NOMBRE]
            ,[NUMERO_LOCAL]
            ,[NUMERO_CONTRATO]
            ,[RAZON_SOCIAL]
            ,[RUC]
            ,[VIGENTE]
            ,[FECHA_DESDE]
            ,[FECHA_HASTA]
            ,[FECHA_SALIDA]
            ,[TIPO_LOCAL]
            ,[RUBRO]
            ,[COD_CEN_COMERCIAL])
        VALUES
            (@ID_EMPRESA
            ,@NOMBRE
            ,@NUMERO_LOCAL
            ,@NUMERO_CONTRATO
            ,@RAZON_SOCIAL
            ,@RUC
            ,1
            ,@FECHA_DESDE
            ,@FECHA_HASTA
            ,@FECHA_SALIDA
            ,@TIPO_LOCAL
            ,@RUBRO
            ,@COD_CEN_COMERCIAL)
    END




END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_update_campana_tienda]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		17/06/2025
-- Description:     Insertar actualizar campana tienda
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_update_campana_tienda]
    @LISTA_TIENDAS ListaTienda READONLY,
    @ID_CAMPANA INT,
    @USUARIO_CREACION		NVARCHAR(100)  
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [dbo].[campana_tienda] SET
        VIGENTE = 0
    WHERE ID_CAMPANA = @ID_CAMPANA 

    -- Actualizar registros existentes
    UPDATE ct
    SET ct.VIGENTE = 1,  
        ct.FECHA_MODIFICACION = GETDATE(),
        ct.USUARIO_MODIFICACION = @USUARIO_CREACION
    FROM [dbo].[campana_tienda] ct
    INNER JOIN @LISTA_TIENDAS t ON ct.ID_TIENDA = t.ID_TIENDA
    WHERE ct.ID_CAMPANA = @ID_CAMPANA;
    
    -- Insertar nuevas tiendas que no existen
    INSERT INTO [dbo].[campana_tienda] (
        ID_CAMPANA,
        ID_TIENDA,
        VIGENTE,
        USUARIO_CREACION,
        FECHA_CREACION
    )
    SELECT 
        @ID_CAMPANA,
        t.ID_TIENDA,
        1,  -- Valor por defecto para VIGENTE
        @USUARIO_CREACION,
        GETDATE()  -- Fecha creación
    FROM @LISTA_TIENDAS t
    WHERE NOT EXISTS (
        SELECT 1 
        FROM [dbo].[campana_tienda] ct 
        WHERE ct.ID_TIENDA = t.ID_TIENDA 
        AND ct.ID_CAMPANA = @ID_CAMPANA
    );
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_insert_update_campana_todas_tienda]...';


GO
-- =============================================
-- Author:          Giordan Arredondo
-- Create date:		14/08/2025
-- Description:     Insertar actualizar campana todas las tiendas
-- =============================================
CREATE PROCEDURE [dbo].[sp_insert_update_campana_todas_tienda]
    @ID_CAMPANA 		INT,
    @USUARIO_CREACION	NVARCHAR(100)  
AS
BEGIN
 	SET NOCOUNT ON;

    -- Declarar variable de tipo ListaTienda
    DECLARE @LISTA_TIENDAS ListaTienda;

    -- Llenar la lista con todas las tiendas vigentes
    INSERT INTO @LISTA_TIENDAS (ID_TIENDA)
    SELECT t.ID_TIENDA
    FROM dbo.tienda t
    WHERE t.VIGENTE = 1;
	 
    UPDATE [dbo].[campana_tienda] SET
        VIGENTE = 0
    WHERE ID_CAMPANA = @ID_CAMPANA 

    -- Actualizar registros existentes
    UPDATE ct
    SET ct.VIGENTE = 1,  
        ct.FECHA_MODIFICACION = GETDATE(),
        ct.USUARIO_MODIFICACION = @USUARIO_CREACION
    FROM [dbo].[campana_tienda] ct
    INNER JOIN @LISTA_TIENDAS t ON ct.ID_TIENDA = t.ID_TIENDA
    WHERE ct.ID_CAMPANA = @ID_CAMPANA;
    
    -- Insertar nuevas tiendas que no existen
    INSERT INTO [dbo].[campana_tienda] (
        ID_CAMPANA,
        ID_TIENDA,
        VIGENTE,
        USUARIO_CREACION,
        FECHA_CREACION
    )
    SELECT 
        @ID_CAMPANA,
        t.ID_TIENDA,
        1,  -- Valor por defecto para VIGENTE
        @USUARIO_CREACION,
        GETDATE()  -- Fecha creación
    FROM @LISTA_TIENDAS t
    WHERE NOT EXISTS (
        SELECT 1 
        FROM [dbo].[campana_tienda] ct 
        WHERE ct.ID_TIENDA = t.ID_TIENDA 
        AND ct.ID_CAMPANA = @ID_CAMPANA
    );
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_archivo_admin]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		18/06/2025
-- Description:     Update archivo admin
-- EXEC [dbo].[sp_update_archivo_admin] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_archivo_admin]
	@ID_ARCHIVO_ADMIN		INT,
	@TIPO					INT,
	@DESCRIPCION			NVARCHAR(50),
	@RUTA					NVARCHAR(100),
	@NOMBRE					NVARCHAR(100),
	@TIPO_MIME				NVARCHAR(100),
	@USUARIO_MODIFICACION	NVARCHAR(100)
AS
BEGIN		
	UPDATE [dbo].[archivo_admin] SET 
        [TIPO] = @TIPO
        ,[DESCRIPCION] = @DESCRIPCION
        ,[RUTA] = @RUTA
        ,[NOMBRE] = @NOMBRE
	    ,[TIPO_MIME] = @TIPO_MIME
        ,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION
        ,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
     WHERE 
        ID_ARCHIVO_ADMIN = @ID_ARCHIVO_ADMIN   
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_campana_documento_legal]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/06/2025
-- Description:     Update Campan documento legal
-- EXEC [dbo].[sp_update_campana_documento_legal] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_campana_documento_legal]
    @ID_CAMPANA_DOCUMENTO_LEGAL				INT,
	@ID_CAMPANA				INT,
    @ID_DOCUMENTO_LEGAL				INT,
	@TEXTO					NVARCHAR(300),  
    @OBLIGATORIO		BIT,
    @ORDEN    		INT,
    @USUARIO_CREACION	NVARCHAR(100) = NULL
AS
BEGIN		

	UPDATE [dbo].[campana_documento_legal] SET
        [ID_CAMPANA] = @ID_CAMPANA
        ,[ID_DOCUMENTO_LEGAL] = @ID_DOCUMENTO_LEGAL
        ,[TEXTO] = @TEXTO
        ,[OBLIGATORIO] = @OBLIGATORIO
        ,[ORDEN] = @ORDEN
        ,[USUARIO_MODIFICACION] = @USUARIO_CREACION 
        ,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
    WHERE
		ID_CAMPANA_DOCUMENTO_LEGAL = @ID_CAMPANA_DOCUMENTO_LEGAL

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_campana_monto_minimo]...';


GO
/*
=============================================================================
Procedimiento: sp_update_campana_monto_minimo
=============================================================================
Descripción: 
Actualiza el monto mínimo existente para una campaña con una moneda específica.
El monto mínimo define el valor base requerido para participar en la campaña.

Parámetros:
- @ID_CAMPANA_MONTO_MINIMO: ID del registro de monto mínimo a actualizar
- @MONEDA: (Opcional) Nueva moneda para el monto mínimo (ej: 'PEN', 'USD')
- @MONTO_MINIMO: Nuevo valor mínimo requerido para la campaña
- @USUARIO_MODIFICACION: Usuario que realiza la modificación
- @FECHA_MODIFICACION: (Opcional) Fecha de modificación del registro, por defecto la fecha actual de la base de datos

Retorno:
- 0: Éxito
- 1: Error (registro no encontrado u otro error)

Ejemplos de uso:
- Actualizar solo monto mínimo:
  EXEC sp_update_campana_monto_minimo 1, NULL, 75.00, 'usuario_sistema', NULL

- Actualizar monto mínimo y moneda:
  EXEC sp_update_campana_monto_minimo 1, 'USD', 100.00, 'usuario_sistema', '2025-07-15'

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Añadido parámetro MONEDA para permitir su actualización
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Añadidos campos de USUARIO_MODIFICACION y FECHA_MODIFICACION
- Fecha: 2025-07-09 | Autor: Carlos Lázaro | Descripción: Creación inicial (separado de sp_insert_campana_monto_minimo)
=============================================================================
*/

CREATE   PROCEDURE sp_update_campana_monto_minimo
    @ID_CAMPANA_MONTO_MINIMO INT,
    @MONEDA NVARCHAR(10) = NULL,
    @MONTO_MINIMO DECIMAL(10,2),
    @USUARIO_MODIFICACION NVARCHAR(100),
    @FECHA_MODIFICACION DATETIME = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Si no se proporciona fecha de modificación, usar la fecha actual
        IF @FECHA_MODIFICACION IS NULL
            SET @FECHA_MODIFICACION = GETDATE();
            
        -- Variables para almacenar información del registro actual
        DECLARE @MONEDA_ACTUAL NVARCHAR(10);
            
        -- Verificar si existe el registro
        SELECT @MONEDA_ACTUAL = MONEDA
        FROM campana_monto_minimo 
        WHERE ID_CAMPANA_MONTO_MINIMO = @ID_CAMPANA_MONTO_MINIMO;
        
        IF @MONEDA_ACTUAL IS NULL
        BEGIN
            RAISERROR('No existe un registro de monto mínimo con el ID especificado.', 16, 1);
            RETURN 1;
        END
        
        -- Si no se especifica una nueva moneda, usar la actual
        SET @MONEDA = ISNULL(@MONEDA, @MONEDA_ACTUAL);
        
        -- Actualizar el registro existente
        UPDATE campana_monto_minimo
        SET MONEDA = @MONEDA,
            MONTO_MINIMO = @MONTO_MINIMO,
            USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
            FECHA_MODIFICACION = @FECHA_MODIFICACION
        WHERE ID_CAMPANA_MONTO_MINIMO = @ID_CAMPANA_MONTO_MINIMO;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_campana_sponsors]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		17/05/2022
-- Description:     Update campaña sponsors
-- EXEC [dbo].[sp_update_campana_sponsors] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_campana_sponsors]
	@ID_CAMPANA				INT,
	@LISTA_SPONSORS			NVARCHAR(100),
    @USUARIO_MODIFICACION	NVARCHAR(100)
AS
BEGIN		

	UPDATE [dbo].[campana_sponsor] SET
		VIGENTE = 0,
		USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
		FECHA_MODIFICACION = DATEADD(HH, -5, GETDATE())
	WHERE ID_CAMPANA = @ID_CAMPANA

	MERGE [dbo].[campana_sponsor] AS TARGET  
	USING (  
		SELECT
           @ID_CAMPANA
           ,*
		FROM string_split(@LISTA_SPONSORS, ',')	      
	)  
	AS SOURCE(ID_CAMPANA, VALUE)  
	ON (TARGET.ID_CAMPANA = SOURCE.ID_CAMPANA AND TARGET.ID_SPONSOR = SOURCE.VALUE)   
	WHEN NOT MATCHED THEN  
		INSERT ([ID_CAMPANA],[ID_SPONSOR],[VIGENTE],[USUARIO_CREACION],[FECHA_CREACION])  
		VALUES (SOURCE.ID_CAMPANA, SOURCE.VALUE, 1, @USUARIO_MODIFICACION, DATEADD(HH, -5, GETDATE()))
	WHEN MATCHED THEN 
		UPDATE SET
        TARGET.VIGENTE = 1, 
		TARGET.USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
		TARGET.FECHA_MODIFICACION = DATEADD(HH, -5, GETDATE()) ;


END
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_campana_tienda]...';


GO
/*
=============================================================================
Procedimiento: sp_update_campana_tienda
=============================================================================
Descripción: 
Actualiza una relación campaña-tienda existente, cambiando la tienda asociada,
el estado de vigencia y actualizando las referencias correspondientes en 
configuracion_multiplicador.

Parámetros:
- @ID_CAMPANA_TIENDA: ID de la relación campaña-tienda a actualizar
- @ID_TIENDA: Nuevo ID de la tienda a asociar con la campaña
- @VIGENTE: Estado de vigencia de la relación (1=vigente, 0=no vigente)
- @USUARIO_MODIFICACION: Usuario que realiza la modificación
- @FECHA_MODIFICACION: (Opcional) Fecha de modificación, por defecto la fecha actual

Retorno:
- 0: Éxito
- 1: Error - La relación campaña-tienda no existe
- 2: Error - La nueva tienda ya está asociada a la misma campaña
- 3: Error - Otro error durante la ejecución

Ejemplos de uso:
- Actualizar una relación campaña-tienda:
  DECLARE @Result INT;
  EXEC @Result = sp_update_campana_tienda 1, 5, 1, 'usuario_admin', NULL;
  SELECT @Result AS ResultadoOperacion;

Historial de cambios:
- Fecha: 2025-07-21 | Autor: Carlos Lázaro | Descripción: Añadido campo VIGENTE
- Fecha: 2025-07-21 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE sp_update_campana_tienda
    @ID_CAMPANA_TIENDA INT,
    @ID_TIENDA INT,
    @VIGENTE BIT = NULL,
    @USUARIO_MODIFICACION NVARCHAR(100),
    @FECHA_MODIFICACION DATETIME = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @ID_CAMPANA INT;
    DECLARE @CURRENT_ID_TIENDA INT;
    DECLARE @CURRENT_VIGENTE BIT;
    
    BEGIN TRY
        -- Si no se proporciona fecha de modificación, usar la fecha actual
        IF @FECHA_MODIFICACION IS NULL
            SET @FECHA_MODIFICACION = GETDATE();
            
        -- Verificar que la relación campaña-tienda exista
        IF NOT EXISTS (SELECT 1 FROM campana_tienda WHERE ID_CAMPANA_TIENDA = @ID_CAMPANA_TIENDA)
        BEGIN
            RAISERROR('La relación campaña-tienda especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Obtener los valores actuales
        SELECT 
            @ID_CAMPANA = ID_CAMPANA,
            @CURRENT_ID_TIENDA = ID_TIENDA,
            @CURRENT_VIGENTE = VIGENTE
        FROM campana_tienda 
        WHERE ID_CAMPANA_TIENDA = @ID_CAMPANA_TIENDA;
        
        -- Si no se especifica un nuevo valor para VIGENTE, mantener el actual
        IF @VIGENTE IS NULL
            SET @VIGENTE = @CURRENT_VIGENTE;
            
        -- Si se está cambiando la tienda, verificar que la nueva tienda no esté ya asociada a la misma campaña
        IF @ID_TIENDA <> @CURRENT_ID_TIENDA AND EXISTS (
            SELECT 1 
            FROM campana_tienda 
            WHERE ID_CAMPANA = @ID_CAMPANA 
              AND ID_TIENDA = @ID_TIENDA
              AND ID_CAMPANA_TIENDA <> @ID_CAMPANA_TIENDA
        )
        BEGIN
            RAISERROR('La tienda ya está asociada a esta campaña.', 16, 1);
            RETURN 2;
        END
        
        -- Iniciar transacción para asegurar la integridad de los datos
        BEGIN TRANSACTION;
        
        -- Actualizar la relación campaña-tienda
        UPDATE campana_tienda
        SET 
            ID_TIENDA = @ID_TIENDA,
            VIGENTE = @VIGENTE,
            USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
            FECHA_MODIFICACION = @FECHA_MODIFICACION
        WHERE ID_CAMPANA_TIENDA = @ID_CAMPANA_TIENDA;
        
        -- Actualizar los registros de configuracion_multiplicador que hacen referencia a esta relación
        -- Nota: Solo actualizamos los campos de auditoría, ya que la referencia (ID_CAMPANA_TIENDA) sigue siendo la misma
        UPDATE configuracion_multiplicador
        SET 
            USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
            FECHA_MODIFICACION = @FECHA_MODIFICACION
        WHERE ID_CAMPANA_TIENDA = @ID_CAMPANA_TIENDA;
        
        COMMIT TRANSACTION;
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Si hay una transacción activa, hacer rollback
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        
        -- Registrar el error en la tabla de errores
        INSERT INTO error (ACCION, ERROR, ENTIDAD, USUARIO_CREACION, FECHA_CREACION)
        VALUES ('sp_update_campana_tienda', ERROR_MESSAGE(), 'campana_tienda', SYSTEM_USER, GETDATE());
        
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 3; -- Error durante la ejecución
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_campana_tienda_multiplicador]...';


GO
/*
=============================================================================
Procedimiento: sp_update_campana_tienda_multiplicador
=============================================================================
Descripción: 
Actualiza un multiplicador existente en la tabla campana_tienda_multiplicador,
permitiendo modificar tanto el valor del multiplicador como la tienda a la que aplica.

Parámetros:
- @ID_CAMPANA_TIENDA_MULTIPLICADOR: ID del multiplicador a actualizar
- @ID_TIENDA: (Opcional) Nuevo ID de la tienda para el multiplicador
- @MULTIPLICADOR: Nuevo valor del multiplicador (ej: 1.5, 2.0)
- @ACTIVO: Nuevo estado del multiplicador (1=activo, 0=inactivo)
- @USUARIO_MODIFICACION: Usuario que realiza la modificación
- @FECHA_MODIFICACION: (Opcional) Fecha de modificación, por defecto la fecha actual

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Actualizar solo el valor del multiplicador:
  EXEC sp_update_campana_tienda_multiplicador 1, NULL, 2.5, 0, 'usuario_sistema', NULL
  
- Actualizar el valor del multiplicador y la tienda:
  EXEC sp_update_campana_tienda_multiplicador 1, 4, 2.5, 1, 'usuario_sistema', NULL

Historial de cambios:
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Creación inicial
- Fecha: 2025-07-25 | Autor: Carlos Lázaro | Descripción: Agregado parámetro ID_TIENDA para permitir cambiar la tienda
=============================================================================
*/

CREATE   PROCEDURE sp_update_campana_tienda_multiplicador
    @ID_CAMPANA_TIENDA_MULTIPLICADOR INT,
    @ID_TIENDA INT = NULL,
    @MULTIPLICADOR DECIMAL(5,2),
    @ACTIVO BIT,
    @USUARIO_MODIFICACION NVARCHAR(100),
    @FECHA_MODIFICACION DATETIME = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Si no se proporciona fecha de modificación, usar la fecha actual
        IF @FECHA_MODIFICACION IS NULL
            SET @FECHA_MODIFICACION = GETDATE();
            
        -- Verificar que el multiplicador exista
        IF NOT EXISTS (SELECT 1 FROM campana_tienda_multiplicador WHERE ID_CAMPANA_TIENDA_MULTIPLICADOR = @ID_CAMPANA_TIENDA_MULTIPLICADOR)
        BEGIN
            RAISERROR('El multiplicador especificado no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Si se especifica una nueva tienda, verificar que exista
        IF @ID_TIENDA IS NOT NULL AND NOT EXISTS (SELECT 1 FROM tienda WHERE ID_TIENDA = @ID_TIENDA)
        BEGIN
            RAISERROR('La tienda especificada no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Actualizar el multiplicador
        UPDATE campana_tienda_multiplicador
        SET 
            ID_TIENDA = ISNULL(@ID_TIENDA, ID_TIENDA), -- Solo actualiza si se proporciona un valor
            MULTIPLICADOR = @MULTIPLICADOR,
            ACTIVO = @ACTIVO,
            USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
            FECHA_MODIFICACION = @FECHA_MODIFICACION
        WHERE ID_CAMPANA_TIENDA_MULTIPLICADOR = @ID_CAMPANA_TIENDA_MULTIPLICADOR;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_categoria_documento_legal]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/06/2025
-- Description:     Update sponsor 
-- EXEC [dbo].[sp_update_categoria_documento_legal] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_categoria_documento_legal]
    @ID_CATEGORIA_DOCUMENTO_LEGAL	INT,	
	@NOMBRE					NVARCHAR(100),  
    @USUARIO_MODIFICACION	NVARCHAR(100)
AS
BEGIN		

    DECLARE @COUNT INT;

    SELECT @COUNT = COUNT(1) 
    FROM [dbo].[categoria_documento_legal]
    WHERE NOMBRE = @NOMBRE;
    IF @COUNT >= 1
    BEGIN
        THROW 50001, 'Ya existe uno o más registros con este nombre.', 1;
    END

	UPDATE [dbo].[categoria_documento_legal] SET
		[NOMBRE] = @NOMBRE
        ,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION 
        ,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
    WHERE
		ID_CATEGORIA_DOCUMENTO_LEGAL = @ID_CATEGORIA_DOCUMENTO_LEGAL

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_cupon_campana]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		17/06/2025
-- Description:     Insert campaña cupon
-- EXEC [dbo].[sp_update_cupon_campana] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_cupon_campana]
	@ID_CAMPANA				INT,
	@ID_TIENDA			    INT,
    @NOMBRE		 NVARCHAR(100),
    @DESCRIPCION		 NVARCHAR(100),
    @ID_IMAGEN_CUPON		 INT,
    @REDIRECT_URL		 NVARCHAR(100),
    @ID_CAMPANA_CUPON_TIENDA  INT 
AS
BEGIN	
    DECLARE @ID_CUPON INT;

    SELECT TOP 1 @ID_CUPON = C.ID_CUPON FROM [dbo].[campana_cupon_tienda] C WHERE ID_CAMPANA_CUPON_TIENDA = @ID_CAMPANA_CUPON_TIENDA

    UPDATE [dbo].[cupon]
        SET 
            [NOMBRE] = @NOMBRE,
            [DESCRIPCION] = @DESCRIPCION,
            [ID_IMAGEN_CUPON] = @ID_IMAGEN_CUPON,
            [REDIRECT_URL] = @REDIRECT_URL,
            [FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
        WHERE 
            [ID_CUPON] = @ID_CUPON; 
    
    UPDATE [dbo].[campana_cupon_tienda]
        SET 
            [ID_TIENDA] = @ID_TIENDA,
            [FECHA_CREACION] = DATEADD(HH, -5, GETDATE())
        WHERE 
            ID_CAMPANA_CUPON_TIENDA = @ID_CAMPANA_CUPON_TIENDA


END
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_documento_legal]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/06/2025
-- Description:     Update documento legal
-- EXEC [dbo].[sp_update_documento_legal] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_documento_legal]
    @ID_DOCUMENTO_LEGAL				INT,
	@NOMBRE							NVARCHAR(100),
	@DESCRIPCION					NVARCHAR(255),
    @ID_ARCHIVO_DOCUMENTO			INT,
    @ID_EMPRESA      				INT,
    @ID_CATEGORIA_DOCUMENTO_LEGAL	INT,
    @VIGENTE      					BIT,
    @USUARIO_MODIFICACION			NVARCHAR(100)
AS
BEGIN		

	UPDATE [dbo].[documento_legal] SET
		[NOMBRE] 						= @NOMBRE
		,[DESCRIPCION] 					= @DESCRIPCION
        ,[ID_ARCHIVO_DOCUMENTO] 		= @ID_ARCHIVO_DOCUMENTO
        ,[ID_EMPRESA] 					= @ID_EMPRESA
        ,[ID_CATEGORIA_DOCUMENTO_LEGAL] = @ID_CATEGORIA_DOCUMENTO_LEGAL
        ,[VIGENTE] 						= @VIGENTE
        ,[USUARIO_MODIFICACION] 		= @USUARIO_MODIFICACION 
        ,[FECHA_MODIFICACION] 			= DATEADD(HH, -5, GETDATE())
    WHERE
		ID_DOCUMENTO_LEGAL = @ID_DOCUMENTO_LEGAL

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_multiplicador]...';


GO
/*
=============================================================================
Procedimiento: sp_update_multiplicador
=============================================================================
Descripción: 
Actualiza un multiplicador existente.

Parámetros:
- @ID_CONFIGURACION_MULTIPLICADOR: ID del multiplicador a actualizar
- @MULTIPLICADOR: Nuevo valor del multiplicador (ej: 1.5, 2.0)
- @ACTIVO: Nuevo estado del multiplicador (1=activo, 0=inactivo)
- @USUARIO_MODIFICACION: Usuario que realiza la modificación
- @FECHA_MODIFICACION: (Opcional) Fecha de modificación, por defecto la fecha actual

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Actualizar un multiplicador:
  EXEC sp_update_multiplicador 1, 2.5, 0, 'usuario_sistema', NULL

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Creación inicial
- Fecha: 2025-07-11 | Autor: Carlos Lázaro | Descripción: Removido parámetro ID_CAMPANA_TIENDA
=============================================================================
*/

CREATE   PROCEDURE sp_update_multiplicador
    @ID_CONFIGURACION_MULTIPLICADOR INT,
    @MULTIPLICADOR DECIMAL(5,2),
    @ACTIVO BIT,
    @USUARIO_MODIFICACION NVARCHAR(100),
    @FECHA_MODIFICACION DATETIME = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Si no se proporciona fecha de modificación, usar la fecha actual
        IF @FECHA_MODIFICACION IS NULL
            SET @FECHA_MODIFICACION = GETDATE();
            
        -- Verificar que el multiplicador exista
        IF NOT EXISTS (SELECT 1 FROM configuracion_multiplicador WHERE ID_CONFIGURACION_MULTIPLICADOR = @ID_CONFIGURACION_MULTIPLICADOR)
        BEGIN
            RAISERROR('El multiplicador especificado no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Actualizar el multiplicador
        UPDATE configuracion_multiplicador
        SET 
            MULTIPLICADOR = @MULTIPLICADOR,
            ACTIVO = @ACTIVO,
            USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
            FECHA_MODIFICACION = @FECHA_MODIFICACION
        WHERE ID_CONFIGURACION_MULTIPLICADOR = @ID_CONFIGURACION_MULTIPLICADOR;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_qr_plantilla]...';


GO
/*
=============================================================================
Procedimiento: sp_update_qr_plantilla
=============================================================================
Descripción: 
Actualiza una plantilla QR existente.

Parámetros:
- @ID_QR_PLANTILLA: ID de la plantilla QR a actualizar
- @DESCRIPCION: Nueva descripción o nombre de la plantilla
- @USUARIO_MODIFICACION: Usuario que realiza la modificación

Retorno:
- 0: Ejecución exitosa
- 1: Error en la ejecución

Ejemplos de uso:
- Actualizar una plantilla QR existente:
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_update_qr_plantilla 
      @ID_QR_PLANTILLA = 1,
      @DESCRIPCION = 'Plantilla Estándar Actualizada', 
      @USUARIO_MODIFICACION = 'usuario_test'
  
  IF @RESULTADO = 0
      SELECT 'Plantilla actualizada con éxito.'
  ELSE
      SELECT 'Error al actualizar la plantilla'

Historial de cambios:
- Fecha: 2025-07-30 | Autor: Carlos Lázaro | Descripción: Eliminación del parámetro ID_TIENDA redundante.
- Fecha: 2025-07-15 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_update_qr_plantilla]
    @ID_QR_PLANTILLA INT,
    @DESCRIPCION NVARCHAR(255),
    @USUARIO_MODIFICACION NVARCHAR(100),
    @FECHA_MODIFICACION DATETIME = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    
    BEGIN TRY
        -- Si no se proporciona fecha de modificación, usar la fecha actual
        IF @FECHA_MODIFICACION IS NULL
            SET @FECHA_MODIFICACION = GETDATE();
            
        -- Verificamos que la plantilla exista
        IF NOT EXISTS (SELECT 1 FROM qr_plantilla WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA)
        BEGIN
            RAISERROR('La plantilla especificada no existe', 16, 1);
            RETURN 1;
        END
        
        -- Actualizamos la plantilla
        UPDATE qr_plantilla
        SET DESCRIPCION = @DESCRIPCION,
            USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
            FECHA_MODIFICACION = @FECHA_MODIFICACION
        WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
            
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_qr_plantilla_activar]...';


GO
/*
=============================================================================
Procedimiento: sp_update_qr_plantilla_activar
=============================================================================
Descripción: 
Activa una plantilla QR específica y desactiva todas las demás plantillas
del mismo tipo (global o específica de tienda).

Parámetros:
- @ID_QR_PLANTILLA: ID de la plantilla QR a activar
- @USUARIO_MODIFICACION: Usuario que realiza la modificación
- @FECHA_MODIFICACION: (Opcional) Fecha de modificación, por defecto la fecha actual

Retorno:
- 0: Ejecución exitosa
- 1: Error en la ejecución

Ejemplos de uso:
- Activar una plantilla QR (global o específica de tienda):
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_update_qr_plantilla_activar 
      @ID_QR_PLANTILLA = 1,
      @USUARIO_MODIFICACION = 'usuario_test'
  
  IF @RESULTADO = 0
      SELECT 'Plantilla activada con éxito.'
  ELSE
      SELECT 'Error al activar la plantilla'

Historial de cambios:
- Fecha: 2025-07-31 | Autor: Carlos Lázaro | Descripción: Eliminación del parámetro ID_TIENDA redundante.
- Fecha: 2025-07-28 | Autor: Carlos Lázaro | Descripción: Documentación actualizada para incluir parámetro FECHA_MODIFICACION
- Fecha: 2025-07-15 | Autor: Carlos Lázaro | Descripción: Creación inicial
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_update_qr_plantilla_activar]
    @ID_QR_PLANTILLA INT,
    @USUARIO_MODIFICACION NVARCHAR(100),
    @FECHA_MODIFICACION DATETIME = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    DECLARE @ID_TIENDA INT;
    
    BEGIN TRY
        -- Si no se proporciona fecha de modificación, usar la fecha actual
        IF @FECHA_MODIFICACION IS NULL
            SET @FECHA_MODIFICACION = GETDATE();
            
        -- Verificamos que la plantilla exista y obtenemos su ID_TIENDA (o NULL si es global)
        SELECT @ID_TIENDA = ID_TIENDA
        FROM qr_plantilla 
        WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA;
        
        IF @@ROWCOUNT = 0
        BEGIN
            RAISERROR('La plantilla especificada no existe', 16, 1);
            RETURN 1;
        END
        
        -- Desactivamos todas las plantillas del mismo tipo (global o específica de tienda)
        IF @ID_TIENDA IS NULL
        BEGIN
            -- Si es una plantilla global, desactivamos todas las globales
            UPDATE qr_plantilla
            SET ACTIVO = 0,
                USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
                FECHA_MODIFICACION = @FECHA_MODIFICACION
            WHERE ID_TIENDA IS NULL;
        END
        ELSE
        BEGIN
            -- Si es una plantilla específica de tienda, desactivamos todas las de esa tienda
            UPDATE qr_plantilla
            SET ACTIVO = 0,
                USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
                FECHA_MODIFICACION = @FECHA_MODIFICACION
            WHERE ID_TIENDA = @ID_TIENDA;
        END
        
        -- Activamos la plantilla seleccionada
        UPDATE qr_plantilla
        SET ACTIVO = 1,
            USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
            FECHA_MODIFICACION = @FECHA_MODIFICACION
        WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
            
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_qr_plantilla_campo]...';


GO
/*
=============================================================================
Procedimiento: sp_update_qr_plantilla_campo
=============================================================================
Descripción: 
Actualiza un campo específico de una plantilla QR existente.

Parámetros:
- @ID_QR_PLANTILLA_CAMPO: ID del campo de plantilla QR a actualizar
- @POSICION: Nueva posición del campo dentro del QR
- @NOMBRE_CAMPO: Nuevo nombre lógico del campo (ej: RUC, MONTO_TOTAL, FECHA)
- @TRANSFORMACION: Operaciones específicas para extraer o transformar el valor
- @FORMATO_ESPERADO: Formato típico del valor para referencia y depuración
- @USUARIO_MODIFICACION: Usuario que realiza la modificación
- @FECHA_MODIFICACION: (Opcional) Fecha de modificación, por defecto la fecha actual

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Actualizar un campo de plantilla QR:
  DECLARE @RESULTADO INT
  
  EXEC @RESULTADO = sp_update_qr_plantilla_campo 
      @ID_QR_PLANTILLA_CAMPO = 1,
      @POSICION = 3,
      @NOMBRE_CAMPO = 'MONTO_TOTAL',
      @TRANSFORMACION = 'EXTRAER_MONTO',
      @FORMATO_ESPERADO = '123.45',
      @USUARIO_MODIFICACION = 'usuario_sistema',
      @FECHA_MODIFICACION = NULL
  
  IF @RESULTADO = 0
      SELECT 'Campo de plantilla QR actualizado con éxito.'
  ELSE
      SELECT 'Error al actualizar el campo de plantilla QR'

Historial de cambios:
- Fecha: 2025-07-20 | Autor: Carlos Lázaro | Descripción: Creación inicial
- Fecha: 2025-07-28 | Autor: Carlos Lázaro | Descripción: Se agregaron campos TRANSFORMACION y FORMATO_ESPERADO
=============================================================================
*/

CREATE   PROCEDURE [dbo].[sp_update_qr_plantilla_campo]
    @ID_QR_PLANTILLA_CAMPO INT,
    @POSICION INT,
    @NOMBRE_CAMPO NVARCHAR(100),
    @TRANSFORMACION NVARCHAR(255) = NULL,
    @FORMATO_ESPERADO NVARCHAR(100) = NULL,
    @USUARIO_MODIFICACION NVARCHAR(100),
    @FECHA_MODIFICACION DATETIME = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    DECLARE @ID_QR_PLANTILLA INT;
    
    BEGIN TRY
        -- Si no se proporciona fecha de modificación, usar la fecha actual
        IF @FECHA_MODIFICACION IS NULL
            SET @FECHA_MODIFICACION = GETDATE();
            
        -- Verificar que el campo de plantilla QR exista
        IF NOT EXISTS (SELECT 1 FROM qr_plantilla_campo WHERE ID_QR_PLANTILLA_CAMPO = @ID_QR_PLANTILLA_CAMPO)
        BEGIN
            RAISERROR('El campo de plantilla QR especificado no existe.', 16, 1);
            RETURN 1;
        END
        
        -- Obtener el ID de la plantilla para validar posición única
        SELECT @ID_QR_PLANTILLA = ID_QR_PLANTILLA 
        FROM qr_plantilla_campo 
        WHERE ID_QR_PLANTILLA_CAMPO = @ID_QR_PLANTILLA_CAMPO;
        
        -- Verificar que no exista otro campo con la misma posición en la misma plantilla
        IF EXISTS (SELECT 1 FROM qr_plantilla_campo 
                   WHERE ID_QR_PLANTILLA = @ID_QR_PLANTILLA 
                   AND POSICION = @POSICION 
                   AND ID_QR_PLANTILLA_CAMPO != @ID_QR_PLANTILLA_CAMPO)
        BEGIN
            RAISERROR('Ya existe un campo con la posición especificada en esta plantilla.', 16, 1);
            RETURN 1;
        END
        
        -- Actualizar el campo de plantilla QR
        UPDATE qr_plantilla_campo
        SET 
            POSICION = @POSICION,
            NOMBRE_CAMPO = @NOMBRE_CAMPO,
            TRANSFORMACION = @TRANSFORMACION,
            FORMATO_ESPERADO = @FORMATO_ESPERADO,
            USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
            FECHA_MODIFICACION = @FECHA_MODIFICACION
        WHERE ID_QR_PLANTILLA_CAMPO = @ID_QR_PLANTILLA_CAMPO;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
            
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH;
END
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_regla_puntos]...';


GO
/*
=============================================================================
Procedimiento: sp_update_regla_puntos
=============================================================================
Descripción: 
Actualiza una regla de puntos existente para una campaña.
Permite modificar la tienda, moneda, monto base y puntos equivalentes.

Parámetros:
- @ID_REGLA_PUNTOS: ID de la regla de puntos a actualizar
- @ID_TIENDA: (Opcional) Nuevo ID de tienda para la regla (NULL para regla general de campaña)
- @MONEDA: (Opcional) Nueva moneda para la regla (ej: 'PEN', 'USD')
- @MONTO_BASE: Nuevo monto base para el cálculo de puntos (ej: 100.00)
- @PUNTOS_EQUIVALENTES: Nuevos puntos equivalentes al monto base (ej: 5)
- @USUARIO_MODIFICACION: Usuario que realiza la modificación
- @FECHA_MODIFICACION: (Opcional) Fecha de modificación del registro, por defecto la fecha actual

Retorno:
- 0: Éxito
- 1: Error

Ejemplos de uso:
- Actualizar solo monto base y puntos:
  EXEC sp_update_regla_puntos 1, NULL, NULL, 120.00, 6, 'usuario_sistema', NULL

- Actualizar también la moneda:
  EXEC sp_update_regla_puntos 1, NULL, 'USD', 50.00, 5, 'usuario_sistema', NULL
  
- Actualizar la tienda (de específica a general):
  EXEC sp_update_regla_puntos 1, NULL, 'PEN', 100.00, 5, 'usuario_sistema', NULL
  
- Actualizar la tienda (de general a específica):
  EXEC sp_update_regla_puntos 1, 3, 'PEN', 80.00, 5, 'usuario_sistema', '2025-07-15'

Historial de cambios:
- Fecha: 2025-07-10 | Autor: Carlos Lázaro | Descripción: Añadidos campos de USUARIO_MODIFICACION y FECHA_MODIFICACION
- Fecha: 2025-07-08 | Autor: Carlos Lázaro | Descripción: Creación inicial
- Fecha: 2025-07-08 | Autor: Carlos Lázaro | Descripción: Añadido soporte para actualizar moneda y tienda
=============================================================================
*/

CREATE   PROCEDURE sp_update_regla_puntos
    @ID_REGLA_PUNTOS INT,
    @ID_TIENDA INT = NULL,
    @MONEDA NVARCHAR(10) = NULL,
    @MONTO_BASE DECIMAL(10,2),
    @PUNTOS_EQUIVALENTES INT,
    @USUARIO_MODIFICACION NVARCHAR(100),
    @FECHA_MODIFICACION DATETIME = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        -- Si no se proporciona fecha de modificación, usar la fecha actual
        IF @FECHA_MODIFICACION IS NULL
            SET @FECHA_MODIFICACION = GETDATE();
            
        -- Variables para almacenar información de la regla actual
        DECLARE @ID_TIENDA_ACTUAL INT;
        DECLARE @MONEDA_ACTUAL NVARCHAR(10);
        
        -- Verificar si existe la regla y obtener sus valores actuales
        SELECT 
            @ID_TIENDA_ACTUAL = ID_TIENDA,
            @MONEDA_ACTUAL = MONEDA
        FROM regla_puntos 
        WHERE ID_REGLA_PUNTOS = @ID_REGLA_PUNTOS;
        
        IF @MONEDA_ACTUAL IS NULL
        BEGIN
            RAISERROR('No existe una regla de puntos con el ID especificado.', 16, 1);
            RETURN 1;
        END
        
        -- Si no se especifican nuevos valores, usar los actuales
        SET @ID_TIENDA = ISNULL(@ID_TIENDA, @ID_TIENDA_ACTUAL);
        SET @MONEDA = ISNULL(@MONEDA, @MONEDA_ACTUAL);
        
        -- Calcular el nuevo monto por punto
        DECLARE @MONTO_POR_PUNTO DECIMAL(10,2) = @MONTO_BASE / @PUNTOS_EQUIVALENTES;
        
        -- Actualizar la regla
        UPDATE regla_puntos
        SET ID_TIENDA = @ID_TIENDA,
            MONEDA = @MONEDA,
            MONTO_BASE = @MONTO_BASE,
            PUNTOS_EQUIVALENTES = @PUNTOS_EQUIVALENTES,
            MONTO_POR_PUNTO = @MONTO_POR_PUNTO,
            USUARIO_MODIFICACION = @USUARIO_MODIFICACION,
            FECHA_MODIFICACION = @FECHA_MODIFICACION
        WHERE ID_REGLA_PUNTOS = @ID_REGLA_PUNTOS;
        
        RETURN 0; -- Éxito
    END TRY
    BEGIN CATCH
        -- Manejar errores
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        RETURN 1; -- Error
    END CATCH
END;
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_sponsor]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/06/2025
-- Description:     Update sponsor 
-- EXEC [dbo].[sp_update_sponsor] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_sponsor]
    @ID_SPONSOR				INT,
	@ID_CAMPANA				INT,
	@NOMBRE					NVARCHAR(100),  
    @ID_ARCHIVO_LOGO		INT,
    @ID_EMPRESA      		INT,
    @USUARIO_MODIFICACION	NVARCHAR(100)
AS
BEGIN		

    DECLARE @COUNT_S INT
    SELECT @COUNT_S = COUNT(1)
    FROM [dbo].[sponsor] NOLOCK
    WHERE NOMBRE=@NOMBRE AND VIGENTE = 1

    IF @COUNT_S > 0
    BEGIN
        THROW 50001, 'Hay un registro con el mismo nombre', 1;
    END 

	UPDATE [dbo].[sponsor] SET
		[NOMBRE] = @NOMBRE
        ,[ID_CAMPANA] = @ID_CAMPANA
        ,[ID_ARCHIVO_LOGO] = @ID_ARCHIVO_LOGO
        ,[ID_EMPRESA] = @ID_EMPRESA
        ,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION 
        ,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
    WHERE
		ID_SPONSOR = @ID_SPONSOR

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_sponsor_ordenar]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		17/06/2025
-- Description:     Update sponsor ordenar
-- EXEC [dbo].[sp_update_sponsor_ordenar] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_sponsor_ordenar]
	@ID_SPONSOR			        INT,
    @ID_CAMPANA			        INT,
	@ORDEN						INT,
    @USUARIO_MODIFICACION		NVARCHAR(100)
AS
BEGIN		

	DECLARE @IdSponsor int, @_orden int, @_orden_cambio int

	select @IdSponsor = cs.ID_SPONSOR, @_orden = cs.ORDEN
	FROM campana_sponsor cs 
	where ID_CAMPANA = @ID_CAMPANA and ID_SPONSOR = @ID_SPONSOR

	IF @ORDEN = 0
	BEGIN
		select @_orden_cambio = MIN(cs.ORDEN)
		from [campana_sponsor] cs with(nolock)
		where ORDEN > @_orden and ID_CAMPANA = @ID_CAMPANA  and VIGENTE = 1

		UPDATE[dbo].[campana_sponsor] SET
			ORDEN = @_orden
			,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION
			,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
		WHERE
			ID_CAMPANA = @ID_CAMPANA and ORDEN = @_orden_cambio
		
		UPDATE[dbo].[campana_sponsor] SET
			ORDEN = @_orden_cambio
			,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION
			,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
		WHERE
			ID_CAMPANA = @ID_CAMPANA AND ID_SPONSOR = @ID_SPONSOR 

	END

	IF @ORDEN = 1
	BEGIN
		select @_orden_cambio = MAX(cs.ORDEN)
		from [campana_sponsor] cs with(nolock)
		where ORDEN < @_orden and ID_CAMPANA = @ID_CAMPANA and VIGENTE = 1

		UPDATE[dbo].[campana_sponsor] SET
			ORDEN = @_orden
			,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION
			,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
		WHERE
			ID_CAMPANA = @ID_CAMPANA and ORDEN = @_orden_cambio
		
		UPDATE[dbo].[campana_sponsor] SET
			ORDEN = @_orden_cambio
			,[USUARIO_MODIFICACION] = @USUARIO_MODIFICACION
			,[FECHA_MODIFICACION] = DATEADD(HH, -5, GETDATE())
		WHERE
			ID_CAMPANA = @ID_CAMPANA AND ID_SPONSOR = @ID_SPONSOR 

	END

END
GO
PRINT N'Creando Procedimiento [dbo].[sp_update_tienda]...';


GO
-- =============================================
-- Author:          Jerson Huayta
-- Create date:		04/06/2025
-- Description:     Update tienda
-- EXEC [dbo].[sp_update_tienda] 
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_tienda]
    @NOMBRE             NVARCHAR(255),
    @NUMERO_LOCAL       NVARCHAR(100),
    @NUMERO_CONTRATO    NVARCHAR(100),
    @RAZON_SOCIAL       NVARCHAR(100),
    @RUC              	NVARCHAR(50),
    @FECHA_DESDE      	DATETIME = NULL,
    @FECHA_HASTA      	DATETIME = NULL,
    @FECHA_SALIDA      	DATETIME = NULL,
    @TIPO_LOCAL 		NVARCHAR(100),
    @COD_CEN_COMERCIAL	NVARCHAR(50),
    @RUBRO				NVARCHAR(255),
    @ID_EMPRESA			int
AS
BEGIN		
    
        UPDATE [dbo].[tienda] 
        SET 
            VIGENTE 			= 1,
            NOMBRE 				= @NOMBRE,
            NUMERO_LOCAL 		= @NUMERO_LOCAL,
            RAZON_SOCIAL 		= @RAZON_SOCIAL,
            FECHA_DESDE 		= @FECHA_DESDE,
            FECHA_HASTA 		= @FECHA_HASTA,
            FECHA_SALIDA 		= @FECHA_SALIDA,
            TIPO_LOCAL 			= @TIPO_LOCAL,
            COD_CEN_COMERCIAL 	= @COD_CEN_COMERCIAL,
            RUBRO 				= @RUBRO,
            ID_EMPRESA 			= @ID_EMPRESA
        WHERE RUC = @RUC AND NUMERO_CONTRATO = @NUMERO_CONTRATO;
    

END
GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_campana_por_campana_red_id_web]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_campana_por_campana_red_id_web]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_cliente_campana_web]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_cliente_campana_web]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_cliente_web]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_cliente_web]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_dashboard_anios]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_dashboard_anios]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_dashboard_campanas]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_dashboard_campanas]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_dashboard_campanas_top_ten]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_dashboard_campanas_top_ten]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_dashboard_metricas]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_dashboard_metricas]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_dashboard_metricas_mensual]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_dashboard_metricas_mensual]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_dashboard_metricas_tramos]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_dashboard_metricas_tramos]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_dashboard_redes]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_dashboard_redes]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_dashboard_ubigeo_top_ten]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_dashboard_ubigeo_top_ten]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_descargas_datos_captura]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_descargas_datos_captura]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_redes_por_campana]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_redes_por_campana]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_update_campana_desactiva]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_update_campana_desactiva]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_update_campana_estado]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_update_campana_estado]';


GO
PRINT N'Actualizando Procedimiento [dbo].[sp_get_parametro_por_codigo]...';


GO
EXECUTE sp_refreshsqlmodule N'[dbo].[sp_get_parametro_por_codigo]';


GO
