﻿CREATE PROCEDURE [dbo].[SpDeletenEntidadAfp] @empresa int,@codigo varchar(50),@Retorno int output  AS begin tran nEntidadAfc delete nEntidadAfc where empresa = @empresa and codigo = @codigo if (@@error = 0 ) begin set @Retorno = 0 commit tran nEntidadAfc end else begin set @Retorno = 1 rollback tran nEntidadAfc end