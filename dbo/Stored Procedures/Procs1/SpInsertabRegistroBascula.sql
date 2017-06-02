﻿CREATE PROCEDURE [dbo].[SpInsertabRegistroBascula] @empresa int,@item int,@racimos int,@sacos int,@fecha datetime,@fechaBruto datetime,@fechaTara datetime,@fechaNeto datetime,@fechaProceso datetime,@pesoBruto float,@pesoTara float,@pesoNeto float,@pesoSacos float,@analisisRegistrado bit,@vehiculoInterno bit,@tipo varchar(50),@numero varchar(50),@tiquete varchar(50),@remision varchar(50),@tipoVehiculo varchar(50),@vehiculo varchar(50),@remolque varchar(50),@procedencia varchar(50),@finca varchar(50),@usuario varchar(50),@bodega varchar(50),@urlTiquete varchar(250),@sellos varchar(250),@tipoDescargue varchar(50),@codigoConductor varchar(50),@nombreConductor varchar(200),@tercero varchar(50),@estado char(2),@pesoDescuento float , @Retorno int output  AS begin tran bRegistroBascula insert bRegistroBascula( empresa,item,racimos,sacos,fecha,fechaBruto,fechaTara,fechaNeto,fechaProceso,pesoBruto,pesoTara,pesoNeto,pesoSacos,analisisRegistrado,vehiculoInterno,tipo,numero,tiquete,remision,tipoVehiculo,vehiculo,remolque,procedencia,finca,usuario,bodega,urlTiquete,sellos,tipoDescargue,codigoConductor,nombreConductor,tercero,estado,pesoDescuento ) select @empresa,@item,@racimos,@sacos,@fecha,@fechaBruto,@fechaTara,@fechaNeto,@fechaProceso,@pesoBruto,@pesoTara,@pesoNeto,@pesoSacos,@analisisRegistrado,@vehiculoInterno,@tipo,@numero,@tiquete,@remision,@tipoVehiculo,upper(@vehiculo),upper(@remolque),@procedencia,@finca,@usuario,@bodega,@urlTiquete,@sellos,@tipoDescargue,@codigoConductor,@nombreConductor,@tercero,@estado,@pesoDescuento if (@@error = 0 ) begin set @Retorno = 0 commit tran bRegistroBascula end else begin set @Retorno = 1 rollback tran bRegistroBascula end