﻿CREATE PROCEDURE [dbo].[SpDeletenCcostoNomina] @empresa int,@codigo varchar(50),@Retorno int output  AS begin tran nCcostoNomina delete nCcostoNomina where empresa = @empresa and codigo = @codigo if (@@error = 0 ) begin set @Retorno = 0 commit tran nCcostoNomina end else begin set @Retorno = 1 rollback tran nCcostoNomina end