﻿CREATE PROCEDURE [dbo].[SpGetnFuncionariokey] @empresa int,@tercero int AS  select * from nFuncionario where empresa = @empresa and tercero = @tercero