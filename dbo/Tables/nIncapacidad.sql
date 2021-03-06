﻿CREATE TABLE [dbo].[nIncapacidad] (
    [empresa]          INT            NOT NULL,
    [tercero]          INT            NOT NULL,
    [numero]           INT            NOT NULL,
    [fechaInicial]     DATE           NULL,
    [fechaFinal]       DATE           NULL,
    [noDias]           INT            NULL,
    [referencia]       VARCHAR (250)  NULL,
    [tipoIncapacidad]  VARCHAR (50)   NULL,
    [prorroga]         BIT            NULL,
    [diagnostico]      VARCHAR (50)   NULL,
    [observacion]      VARCHAR (5550) NULL,
    [liquidada]        BIT            NULL,
    [saldo]            INT            NULL,
    [usuario]          VARCHAR (50)   NULL,
    [fechaRegistro]    DATETIME       NULL,
    [valor]            MONEY          NULL,
    [numeroReferencia] INT            NULL,
    [diasPagos]        INT            NULL,
    [diasInicio]       INT            NULL,
    [valorPagado]      MONEY          NULL,
    [concepto]         VARCHAR (50)   NOT NULL,
    [anulado]          BIT            NULL,
    [usuarioAnulado]   VARCHAR (50)   NULL,
    [fechaAnulado]     DATETIME       NULL,
    CONSTRAINT [PK_nIncapacidad] PRIMARY KEY CLUSTERED ([empresa] ASC, [tercero] ASC, [numero] ASC)
);

