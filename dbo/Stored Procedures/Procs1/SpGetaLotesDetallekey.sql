﻿CREATE PROCEDURE SpGetaLotesDetallekey @empresa int,@linea int,@lote varchar(50) AS  select * from aLotesDetalle where empresa = @empresa and linea = @linea and lote = @lote