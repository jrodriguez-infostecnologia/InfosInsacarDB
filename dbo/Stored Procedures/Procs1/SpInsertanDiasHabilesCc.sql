﻿CREATE PROCEDURE [dbo].[SpInsertanDiasHabilesCc] @empresa int,@de int,@hasta int,@activo bit,@ccosto varchar(50),@Retorno int output  AS begin tran nDiasHabilesCc insert nDiasHabilesCc( empresa,de,hasta,activo,ccosto ) select @empresa,@de,@hasta,@activo,@ccosto if (@@error = 0 ) begin set @Retorno = 0 commit tran nDiasHabilesCc end else begin set @Retorno = 1 rollback tran nDiasHabilesCc end