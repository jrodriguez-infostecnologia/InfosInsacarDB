﻿CREATE PROCEDURE [dbo].[SpDeletenModoCampo] @empresa int,@modo varchar(50),@entidad varchar(250),@campo varchar(250),@Retorno int output  AS begin tran nModoCampo delete nModoCampo where empresa = @empresa and modo = @modo and entidad = @entidad and campo = @campo if (@@error = 0 ) begin set @Retorno = 0 commit tran nModoCampo end else begin set @Retorno = 1 rollback tran nModoCampo end