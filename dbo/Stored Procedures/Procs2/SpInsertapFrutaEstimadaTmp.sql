﻿CREATE PROCEDURE SpInsertapFrutaEstimadaTmp @fecha date,@empresa int,@pesoNeto int,@Retorno int output  AS begin tran pFrutaEstimadaTmp insert pFrutaEstimadaTmp( fecha,empresa,pesoNeto ) select @fecha,@empresa,@pesoNeto if (@@error = 0 ) begin set @Retorno = 0 commit tran pFrutaEstimadaTmp end else begin set @Retorno = 1 rollback tran pFrutaEstimadaTmp end