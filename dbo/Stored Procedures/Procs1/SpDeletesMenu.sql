﻿CREATE PROCEDURE SpDeletesMenu @codigo varchar(150),@modulo varchar(150),@Retorno int output  AS begin tran sMenu delete sMenu where codigo = @codigo and modulo = @modulo if (@@error = 0 ) begin set @Retorno = 0 commit tran sMenu end else begin set @Retorno = 1 rollback tran sMenu end