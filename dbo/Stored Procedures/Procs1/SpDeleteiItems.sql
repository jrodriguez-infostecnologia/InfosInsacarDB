﻿CREATE PROCEDURE SpDeleteiItems @empresa int,@codigo int,@Retorno int output  AS begin tran iItems delete iItems where codigo = @codigo and empresa = @empresa if (@@error = 0 ) begin set @Retorno = 0 commit tran iItems end else begin set @Retorno = 1 rollback tran iItems end