﻿CREATE PROCEDURE SpInsertaiPlanItem @empresa int,@presentaMayor bit,@activo bit,@codigo varchar(5),@descripcion varchar(950),@observacion varchar(1550),@Retorno int output  AS begin tran iPlanItem insert iPlanItem( empresa,presentaMayor,activo,codigo,descripcion,observacion ) select @empresa,@presentaMayor,@activo,@codigo,@descripcion,@observacion if (@@error = 0 ) begin set @Retorno = 0 commit tran iPlanItem end else begin set @Retorno = 1 rollback tran iPlanItem end