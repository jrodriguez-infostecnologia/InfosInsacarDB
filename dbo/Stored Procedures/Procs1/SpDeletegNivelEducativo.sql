﻿CREATE PROCEDURE SpDeletegNivelEducativo @empresa int,@codigo varchar(50),@Retorno int output  AS begin tran gNivelEducativo delete gNivelEducativo where codigo = @codigo and empresa = @empresa if (@@error = 0 ) begin set @Retorno = 0 commit tran gNivelEducativo end else begin set @Retorno = 1 rollback tran gNivelEducativo end