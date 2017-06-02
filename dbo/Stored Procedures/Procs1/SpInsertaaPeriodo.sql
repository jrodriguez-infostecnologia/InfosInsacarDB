﻿CREATE PROCEDURE SpInsertaaPeriodo @empresa int,@año int,@mes int,@cerrado bit,@descripcion varchar(550),@periodo varchar(6),@Retorno int output  AS begin tran aPeriodo insert aPeriodo( empresa,año,mes,cerrado,descripcion,periodo ) select @empresa,@año,@mes,@cerrado,@descripcion,@periodo if (@@error = 0 ) begin set @Retorno = 0 commit tran aPeriodo end else begin set @Retorno = 1 rollback tran aPeriodo end