﻿CREATE PROCEDURE [dbo].[SpInsertacPuc] @empresa int,@nivel int,@tasaIR float,@baseIR float,@mCcosto bit,@disponible bit,@mTercero bit,@manejaIR bit,@activo bit,@auxiliar bit,@codigo varchar(16),@planPuc varchar(50),@raiz varchar(16),@descripcion varchar(150),@grupoCcosto varchar(50),@tipoDisponible varchar(1),@tipoManejoTercero varchar(2),@saldoTercero varchar(50),@tipoIR varchar(2),@claseIR varchar(2),@notas varchar(2550),@naturaleza char(1),@tipoBalanceResultado char(1),@Retorno int output  AS begin tran cPuc insert cPuc( empresa,nivel,tasaIR,baseIR,mCcosto,disponible,mTercero,manejaIR,activo,auxiliar,codigo,planPuc,raiz,descripcion,grupoCcosto,tipoDisponible,tipoManejoTercero,saldoTercero,tipoIR,claseIR,notas,naturaleza,tipoBalanceResultado ) select @empresa,@nivel,@tasaIR,@baseIR,@mCcosto,@disponible,@mTercero,@manejaIR,@activo,@auxiliar,@codigo,@planPuc,@raiz,@descripcion,@grupoCcosto,@tipoDisponible,@tipoManejoTercero,@saldoTercero,@tipoIR,@claseIR,@notas,@naturaleza,@tipoBalanceResultado if (@@error = 0 ) begin set @Retorno = 0 commit tran cPuc end else begin set @Retorno = 1 rollback tran cPuc end