﻿CREATE PROCEDURE [dbo].[SpActualizanLiquidacionNominaDetalle] @empresa int,@año int,@mes int,@noPeriodo int,@empleado int,@signo int,@valor money,@saldo money,@cantidad decimal,@tipo varchar(50),@numero varchar(50),@concepto varchar(50),@Retorno int output  AS begin tran nLiquidacionNominaDetalle update nLiquidacionNominaDetalle set empleado = @empleado,signo = @signo,valor = @valor,saldo = @saldo,cantidad = @cantidad,concepto = @concepto where año = @año and empresa = @empresa and mes = @mes and noPeriodo = @noPeriodo and numero = @numero and tipo = @tipo if (@@error = 0 ) begin set @Retorno = 0 commit tran nLiquidacionNominaDetalle end else begin set @Retorno = 1 rollback tran nLiquidacionNominaDetalle end