﻿CREATE TABLE [dbo].[cPuc] (
    [empresa]              INT            NOT NULL,
    [codigo]               VARCHAR (16)   NOT NULL,
    [planPuc]              VARCHAR (50)   NULL,
    [raiz]                 VARCHAR (16)   NOT NULL,
    [descripcion]          VARCHAR (150)  NOT NULL,
    [naturaleza]           CHAR (1)       NOT NULL,
    [nivel]                INT            NOT NULL,
    [tipoBalanceResultado] CHAR (1)       NOT NULL,
    [mCcosto]              BIT            NOT NULL,
    [grupoCcosto]          VARCHAR (50)   NULL,
    [disponible]           BIT            NULL,
    [tipoDisponible]       VARCHAR (1)    NULL,
    [mTercero]             BIT            NOT NULL,
    [tipoManejoTercero]    VARCHAR (2)    NULL,
    [saldoTercero]         VARCHAR (50)   NULL,
    [manejaIR]             BIT            NULL,
    [tipoIR]               VARCHAR (2)    NULL,
    [claseIR]              VARCHAR (2)    NULL,
    [tasaIR]               FLOAT (53)     NULL,
    [baseIR]               FLOAT (53)     NULL,
    [notas]                VARCHAR (2550) NULL,
    [activo]               BIT            NOT NULL,
    [auxiliar]             BIT            NULL,
    CONSTRAINT [PK_cPuc] PRIMARY KEY CLUSTERED ([codigo] ASC, [empresa] ASC)
);
