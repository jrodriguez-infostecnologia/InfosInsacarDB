﻿CREATE PROCEDURE [dbo].[SpGetnEntidadAfpkey] @empresa int,@codigo varchar(50) AS  select * from nEntidadAfc where empresa = @empresa and codigo = @codigo