﻿CREATE TABLE [dbo].[iItems] (
    [empresa]              INT             NOT NULL,
    [codigo]               INT             NOT NULL,
    [descripcion]          VARCHAR (950)   NOT NULL,
    [descripcionAbreviada] VARCHAR (50)    NOT NULL,
    [referencia]           VARCHAR (250)   NOT NULL,
    [manejaIR]             BIT             NOT NULL,
    [grupoIR]              CHAR (5)        NULL,
    [tipo]                 CHAR (1)        NOT NULL,
    [compras]              BIT             NOT NULL,
    [ventas]               BIT             NOT NULL,
    [uMedidaCompra]        VARCHAR (50)    NOT NULL,
    [uMedidaConsumo]       VARCHAR (50)    NOT NULL,
    [papeleta]             VARCHAR (50)    NULL,
    [tiempoReposicion]     INT             NOT NULL,
    [minimo]               DECIMAL (18, 3) NOT NULL,
    [maximo]               DECIMAL (18, 3) NOT NULL,
    [notas]                VARCHAR (1550)  NOT NULL,
    [activo]               BIT             CONSTRAINT [DF_iItems_activo] DEFAULT ((0)) NOT NULL,
    [usuarioRegistro]      VARCHAR (50)    NOT NULL,
    [fechaRegistro]        DATETIME        NOT NULL,
    [usuarioActualiza]     VARCHAR (50)    NULL,
    [fechaActualiza]       DATETIME        NULL,
    [foto]                 INT             NULL,
    [orden]                INT             NULL,
    CONSTRAINT [PK_iCatalogo] PRIMARY KEY CLUSTERED ([empresa] ASC, [codigo] ASC),
    CONSTRAINT [FK_iItems_cGrupoIR] FOREIGN KEY ([empresa], [grupoIR]) REFERENCES [dbo].[cGrupoIR] ([empresa], [codigo]),
    CONSTRAINT [FK_iItems_gEmpresa] FOREIGN KEY ([empresa]) REFERENCES [dbo].[gEmpresa] ([id]),
    CONSTRAINT [FK_iItems_gUnidadMedida] FOREIGN KEY ([empresa], [uMedidaCompra]) REFERENCES [dbo].[gUnidadMedida] ([empresa], [codigo]),
    CONSTRAINT [FK_iItems_gUnidadMedida1] FOREIGN KEY ([empresa], [uMedidaConsumo]) REFERENCES [dbo].[gUnidadMedida] ([empresa], [codigo])
);

