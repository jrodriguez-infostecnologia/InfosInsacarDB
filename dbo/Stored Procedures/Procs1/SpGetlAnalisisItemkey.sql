﻿CREATE PROCEDURE SpGetlAnalisisItemkey @empresa int,@item int,@analisis varchar(10) AS  select * from lAnalisisItem where analisis = @analisis and empresa = @empresa and item = @item