﻿CREATE PROCEDURE [dbo].[SpGetnCargokey] @empresa int,@codigo varchar(50) AS  select * from nCargo where empresa = @empresa and codigo = @codigo