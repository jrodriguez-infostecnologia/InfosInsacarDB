﻿CREATE PROCEDURE SpGetsEstadoskey @estado char(10) AS  select * from sEstados where estado = @estado