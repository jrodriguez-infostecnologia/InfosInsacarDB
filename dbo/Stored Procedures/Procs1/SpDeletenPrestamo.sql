﻿CREATE PROCEDURE [dbo].[SpDeletenPrestamo] @empresa int,@codigo varchar(50),@Retorno int output  AS begin tran nPrestamo delete nPrestamo where empresa = @empresa and codigo = @codigo if (@@error = 0 ) begin set @Retorno = 0 commit tran nPrestamo end else begin set @Retorno = 1 rollback tran nPrestamo end