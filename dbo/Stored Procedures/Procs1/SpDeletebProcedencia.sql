﻿CREATE PROCEDURE SpDeletebProcedencia @empresa int,@codigo varchar(50),@Retorno int output  AS begin tran bProcedencia delete bProcedencia where codigo = @codigo and empresa = @empresa if (@@error = 0 ) begin set @Retorno = 0 commit tran bProcedencia end else begin set @Retorno = 1 rollback tran bProcedencia end