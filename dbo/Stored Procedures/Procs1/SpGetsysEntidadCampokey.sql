﻿CREATE PROCEDURE SpGetsysEntidadCampokey @entidad varchar(250),@campo varchar(250) AS  select * from sysEntidadCampo where campo = @campo and entidad = @entidad