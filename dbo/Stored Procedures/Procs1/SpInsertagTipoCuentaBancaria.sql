﻿CREATE PROCEDURE SpInsertagTipoCuentaBancaria @empresa int,@codigo varchar(50),@descripcion varchar(550),@Retorno int output  AS begin tran gTipoCuentaBancaria insert gTipoCuentaBancaria( empresa,codigo,descripcion ) select @empresa,@codigo,@descripcion if (@@error = 0 ) begin set @Retorno = 0 commit tran gTipoCuentaBancaria end else begin set @Retorno = 1 rollback tran gTipoCuentaBancaria end