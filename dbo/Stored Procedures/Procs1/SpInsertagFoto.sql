﻿CREATE PROCEDURE SpInsertagFoto @id int,@foto varbinary,@Retorno int output  AS begin tran gFoto insert gFoto( id,foto ) select @id,@foto if (@@error = 0 ) begin set @Retorno = 0 commit tran gFoto end else begin set @Retorno = 1 rollback tran gFoto end