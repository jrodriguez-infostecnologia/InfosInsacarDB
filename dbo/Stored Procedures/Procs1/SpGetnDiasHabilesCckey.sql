﻿create PROCEDURE [dbo].[SpGetnDiasHabilesCckey] @empresa int,@ccosto varchar(50) AS  select * from nDiasHabilesCc where ccosto = @ccosto and empresa = @empresa