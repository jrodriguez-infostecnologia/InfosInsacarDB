﻿CREATE PROCEDURE [dbo].[SpGetnConceptosFijosDetallekey] @empresa int,@año int,@mes int,@noPeriodo int,@centroCosto varchar(50),@concepto varchar(50) AS  select * from nConceptosFijosDetalle where año = @año and centroCosto = @centroCosto and concepto = @concepto and empresa = @empresa and mes = @mes and noPeriodo = @noPeriodo