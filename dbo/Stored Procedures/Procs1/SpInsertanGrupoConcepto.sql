﻿create PROCEDURE [dbo].[SpInsertanGrupoConcepto] @empresa int,@activo bit,@descripcion varchar(950),@observacion varchar(1550),@codigo char(5),@Retorno int output  AS begin tran nGrupoConcepto insert nGrupoConcepto( empresa,activo,descripcion,observacion,codigo ) select @empresa,@activo,@descripcion,@observacion,@codigo if (@@error = 0 ) begin set @Retorno = 0 commit tran nGrupoConcepto end else begin set @Retorno = 1 rollback tran nGrupoConcepto end