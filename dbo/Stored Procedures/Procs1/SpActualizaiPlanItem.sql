﻿CREATE PROCEDURE SpActualizaiPlanItem @empresa int,@presentaMayor bit,@activo bit,@codigo varchar(5),@descripcion varchar(950),@observacion varchar(1550),@Retorno int output  AS begin tran iPlanItem update iPlanItem set presentaMayor = @presentaMayor,activo = @activo,descripcion = @descripcion,observacion = @observacion where codigo = @codigo and empresa = @empresa if (@@error = 0 ) begin set @Retorno = 0 commit tran iPlanItem end else begin set @Retorno = 1 rollback tran iPlanItem end