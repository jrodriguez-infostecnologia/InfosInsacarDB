﻿CREATE PROCEDURE [dbo].[SpActualizaaSanidad] @fecha date,@empresa int,@fechaRegistro datetime,@fechaAnulado datetime,@anulado bit,@tipo varchar(50),@numero varchar(50),@finca varchar(50),@remision varchar(50),@nota varchar(950),@referencia varchar(50),@usuario varchar(50),@usuarioAnulado varchar(50),@seccion char(3),@Retorno int output  AS begin tran aSanidad update aSanidad set fecha = @fecha,fechaRegistro = @fechaRegistro,fechaAnulado = @fechaAnulado,anulado = @anulado,finca = @finca,remision = @remision,nota = @nota,referencia = @referencia,usuario = @usuario,usuarioAnulado = @usuarioAnulado,seccion = @seccion where empresa = @empresa and numero = @numero and tipo = @tipo if (@@error = 0 ) begin set @Retorno = 0 commit tran aSanidad end else begin set @Retorno = 1 rollback tran aSanidad end