﻿CREATE PROCEDURE SpGetbRegistroPorteriakey @empresa int,@numero varchar(50),@tipo varchar(50) AS  select * from bRegistroPorteria where empresa = @empresa and numero = @numero and tipo = @tipo