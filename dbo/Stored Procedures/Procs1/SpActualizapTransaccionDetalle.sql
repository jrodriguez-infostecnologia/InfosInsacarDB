﻿CREATE PROCEDURE SpActualizapTransaccionDetalle @empresa int,@registro int,@año int,@mes int,@movimiento int,@valor float,@tipo varchar(50),@numero varchar(50),@Retorno int output  AS begin tran pTransaccionDetalle update pTransaccionDetalle set año = @año,mes = @mes,movimiento = @movimiento,valor = @valor where empresa = @empresa and numero = @numero and registro = @registro and tipo = @tipo if (@@error = 0 ) begin set @Retorno = 0 commit tran pTransaccionDetalle end else begin set @Retorno = 1 rollback tran pTransaccionDetalle end