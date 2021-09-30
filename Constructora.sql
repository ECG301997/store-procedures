	create database Constructora;
		use Constructora;

create table Empleados
	(
		idEmple int not null,
		Nombre_empleado varchar (30) not null,
		Cargo Varchar (30) not null,
		Telefono_empleado int not null,
		Salario int not null,	
		primary key (idEmple)
		);

create table Clientes
	(
		id__Cliente int not null,
		Nombre_cliente varchar (30) not null,
		Telefono_cliente int not null,
		id_AcuerdoPago int ,
		primary key (id__Cliente)
		);


create table Pagos
	(
		idAcuerdoPag int not null,
		idCliente int not null,
		fechaCompra  date not null,
		FechaPago date not null,
		ValorDeuda int not null,
		primary key (idAcuerdoPag) 
		);

create table Proveedores
	(
		idProveed int not null,
		Nombre_proveedor varchar (35) not null,
		TipoInsumo varchar (30) not null,
		Telefono_proveedor int not null,
		primary key (idProveed)
		);


create table Contratista
	(
		idContrat int not null,
		NombreContr varchar (35) not null,
		AreaTrabajo varchar (30) not null,
		Telefono_contratista int not null,
		primary key (idContrat)
		);


create table Proyectos
	(
		idProyect int not null,
		idContratista int not null,
		idProveedor int not null,
		NombreProy varchar (35) not null,
		TipoProy varchar (30) not null,
		DireccionProy varchar (40) not null,
		primary key (idProyect)
		);

create table Ventas
	(
		id_Cliente int not null,
		id_AcuerdoPag int not null,
		idEmpleado int not null,
		idProyecto int not null,
		tipoInmueble varchar (35) not null,
		primary key	(id_AcuerdoPag)
		);


alter table Ventas
add foreign key (id_Cliente)
references Clientes (id__Cliente);

alter table Ventas
add foreign key (id_AcuerdoPag)
references Pagos (idAcuerdoPag);

alter table Ventas
add foreign key (idEmpleado)
references Empleados (idEmple);

alter table Ventas
add foreign key (idProyecto)
references Proyectos (idProyect);

alter table Proyectos
add foreign key (idContratista)
references Contratista (idContrat);

alter table Proyectos
add foreign key (idProveedor)
references Proveedores (idProveed);

alter table Clientes
add foreign key (id_AcuerdoPago)
references Pagos (idAcuerdoPag);


insert into Pagos(idAcuerdoPag,idCliente,fechaCompra,FechaPago,ValorDeuda)
values (001,1001305886,'12/01/2017','2/01/2020',844256768),
(002,1015738509,'2/08/2017','7/02/2020',738547225),
(003,1010386160,'11/22/2016','7/10/2018',128645806),
(004,1065801791,'11-09-2017','5/08/2018',628390185),
(005,1000405047,'12/11/2016','3/10/2017',814844728),
(006,1088563539,'11/09/2016','7/04/2019',747722839),
(007,1003838463,'10/07/2017','1/09/2020',503576929),
(008,1070121204,'9/01/2017','2/05/2018',437125097),
(009,1077977681,'08/04/2017','3/10/2018',279771684),
(010,1010907922,'10/08/2017','12/08/2020',773244648),
(011,1040193975,'6/09/2017','4/06/2018',236309198),
(012,1062951534,'3/11/2016','5/11/2019',546604458),
(013,1071911788,'7/05/2017','6/03/2020',894243224),
(014,1073548884,'5/08/2017','7/09/2018',854665123),
(015,1034717051,'5/06/2016','10/03/2021',934229256),
(016,1096509973,'9/10/2016','8/07/2019',329213980),
(017,1014249776,'04/04/2017','9/05/2020',394355376),
(018,1095388150,'03/01/2017','10/02/2018',186814911),
(019,1060935957,'02/12/2016','11/03/2018',598265954),
(020,1099946026,'01/10/2016','12/01/2018',364883906);

insert into Proveedores(idProveed,Nombre_proveedor,TipoInsumo,Telefono_proveedor)
values (8310697,'EQUIPOS Y CONSTRUCCIONES','TORRE GRUAS Y PERSONAL',2345679),
(8732073,'ARGOS','CONCRETO Y CEMENTO',5549200),
(8066657,'MAPEI','ADHESIVOS Y SELLADORES',3739293),
(8449438,'B&V INGENIERIA','SISTEMAS HIDRAULICOS',6102434),
(8153201,'VALSATEC','DRYWALL',5436059);

insert into Empleados(idEmple,Nombre_empleado,Cargo,Telefono_empleado,Salario)
values (1062659461,'JUAN DE LA CRUZ','AUXILIAR ADMINISTRATIVO',306176010,1500000),
(1077412894,'ALBERTO JIMENEZ','CONTADOR',306235087,1500000),
(1008709923,'JUAN CAMILO CARDONA','GERENTE COMERCIAL',303905075,3000000),
(1050713523,'CAMILO NORIEGA','EJECUTIVO COMERCIAL',302585546,2300000),
(1012712598,'FREDDY GONZALEZ','ASESOR COMERCIAL',307055183,1200000),
(1049549435,'LAURA RAIGOZA','SECRETARIA',303666727,1300000),
(1091671843,'JUAN DAVID HENAO','PRACTICANTE',307417693,1200000),
(1012008208,'DAVID ALEJANDRO ZULETA','JEFE DE SISTEMAS',309996664,1200000),
(1028776678,'DAVID RESTREPO','ASESOR COMERCIAL',302396320,1200000),
(1028820400,'ALEJANDRO GARCIA','ASESOR COMERCIAL',301245655,1200000),
(1090381073,'EDUARDO ORTIZ','ASESOR COMERCIAL',304169049,1200000),
(1025005861,'FELIPE TRIANA','ASESOR COMERCIAL',306139594,1200000),
(1058520121,'DANIEL CLAVIJO','ASESOR COMERCIAL',306393808,1200000),
(1032817631,'JUAN PABLO RESTREPO','ASESOR COMERCIAL',307048769,1200000),
(1077989996,'JUAN MANUEL GARCIA','ASESOR COMERCIAL',302326023,1200000),
(1091404093,'MANUEL ORTIZ','ASESOR COMERCIAL',304572724,1200000),
(1001530870,'DANIELA CARMONA','EJECUTIVO DE CUENTA',309009714,2300000),
(1029193966,'YESICA NOVOA','JEFE DE CARTERA',304470804,1200000),
(1087165195,'JUANITA VELEZ','GERENTE GENERAL',308275935,3000000),
(1040406174,'DIANA BENITEZ','AUXILIAR DE CARTERA',307455594,1200000),
(1097589368,'MARIA GRAJALES','JEFA DE RECURSOS HUMANOS',306820701,1200000);

insert into Contratista(idContrat , NombreContr , AreaTrabajo , Telefono_contratista)
values (80550341 ,'LOGISTICA Y SERVICIOS','ELECTRICIDAD',3451234),
(80550340 ,'LOGISTICA Y SERVICIOS','ELECTRICIDAD',3451234),
(85688575 ,'PLOMEROS LTDA','PLOMERIA',5320203),
(85763697 ,'VIDRIOS Y VENTANAS S.A','HERRERIA',6230539),
(81337279 ,'MUEBLERIA ARTE MODERNO','CARPINTERIA',3710343),
(85000903 ,'ACABADOS S.A.S','ACABADOS',5330022),
(80709314 ,'CESTOPO','TOPOGRAFIA',2754833),
(89722715 ,'ARQ','ARQUITECTURA Y DISEÑOS',3214532);

insert into Clientes(id__Cliente,Nombre_cliente,Telefono_cliente,id_AcuerdoPago)
values (1001305886,'JUAN DE DIOS PRENS',3037611,1),
(1015738509,'EDUARDO CADAVID',3204271,002),
(1010386160,'FELIPE GONZALES',3233763,003),
(1065801791,'CAMILA GIRALDO',3162543,004),
(1000405047,'PAULA JIMENEZ',3206815,005),
(1088563539,'ANDREA PUERTA',3044030,006),
(1003838463,'JENNIFER TAPUYO',3016978,007),
(1070121204,'MAURICIO VARGAS',3299165,008),
(1077977681,'EDISON TORO',3237744,009),
(1010907922,'EMMA HENAO',3026808,010),
(1040193975,'ANA SOFIA SALDARRIAGA',3280947,011),
(1062951534,'SANTIAGO HERNANDEZ',3123322,012),
(1071911788,'CESAR GARCIA',3209292,013),
(1073548884,'LISA RESTREPO',3109386,014),
(1034717051,'DELIA CARMONA',3287119,015),
(1096509973,'JORGE MIRA',3124547,016),
(1014249776,'MARIA ANGELIGA RESTREPO',3673802,017),
(1095388150,'SARA QUINTANA',3311246,018),
(1060935957,'ANA GONZALEZ',3954780,019),
(1099946026,'ALEJANDRO HERNANDEZ',3183406,020);

insert into Proyectos (idProyect,idContratista,idProveedor,NombreProy,TipoProy,DireccionProy)
values (1951,85688575,8310697,'BRISAS DEL MAR','UNIDAD','CARRERA 45 # 40 -70'),
(3063,80550340,8732073,'LOS ALPES','EDIFICIO','CALLE 80 # 60 H -50'),
(4033,80550341,8449438,'PARAISO TROPICAL','CONDOMINIOS','CALLE 41 # 120 - 80'),
(6549,81337279,8153201,'LLANO AZUL','UNIDAD','DIAGONAL 80 # 20A - 30'),
(8198,85763697,8066657,'ESPERANZA','EDIFICIO','TRANSVERSAL 40 # 180 - 40'),
(6892,80709314,8449438,'MONTE DEL PARAISO','CONDOMINIOS','CARRERA 3 # 18‑ 45'),
(5912,80550340,8310697,'EL BOSQUE','UNIDAD','CARRERA 7 # 84‑ 72'),
(6614,80550341,8732073,'CARVAJAL','EDIFICIO','CALLE 4 # 5 – 10'),
(4147,81337279,8066657,'PORTALES DEL RIO','CONDOMINIOS','AVENIDA 30 # 20 -100'),
(2189,85688575,8732073,'MIRADOR DE SAN AGUSTIN','UNIDAD','CARRERA 105 A # 60 H - 75'),
(4132,80550341,8153201,'FURATENA','EDIFICIO','TRANSVERSAL 90 # 10 - 120'),
(4163,85688575,8732073,'LA RIVIERA','CONDOMINIOS','CARRERA 50 # 1 - 5'),
(3957,89722715,8153201,'ROBLEVERDE','UNIDAD','AVENIDA 6 # 3 - 60'),
(3375,85000903,8449438,'COMEDAL','EDIFICIO','DIAGONAL 70 # 30 - 87'),
(4240,85000903,8066657,'BALSOS CAMPESTRES','CONDOMINIOS','CALLE 105 # 85 AA- 47'),
(1586,80550341,8153201,'DOMINICA','UNIDAD','AVENIDA 80 # 123 - 10'),
(4910,80550340,8732073,'COLTEJER','EDIFICIO','CARRERA 60 # 10 - 120'),
(9975,80550341,8153201,'LA PILARICA','CONDOMINIOS','CALLE 11 # 55 - 20'),
(3715,85688575,8066657,'AGUAMARINA','UNIDAD','CARRERA 20 # 20 - 50'),
(8804,85763697,8732073,'MONACO','EDIFICIO','DIAGONAL 3 # 100 -80');


insert into ventas(id_Cliente ,id_AcuerdoPag ,idEmpleado ,idProyecto ,tipoInmueble)
values(1001305886,001,1012712598,1951,'CASA'),
(1015738509,002,1028776678,3063,'APARTAMENTO'),
(1010386160,003,1028820400,4033,'CASA'),
(1065801791,004,1090381073,6549,'CASA'),
(1000405047,005,1025005861,8198,'APARTAMENTO'),
(1088563539,006,1058520121,6892,'CASA'),
(1003838463,007,1032817631,5912,'CASA'),
(1070121204,008,1077989996,6614,'APARTAMENTO'),
(1077977681,009,1028776678,4147,'CASA'),
(1010907922,010,1028776678,2189,'CASA'),
(1040193975,011,1028776678,4132,'APARTAMENTO'),
(1062951534,012,1077989996,4163,'CASA'),
(1071911788,013,1077989996,3957,'CASA'),
(1073548884,014,1077989996,3375,'APARTAMENTO'),
(1034717051,015,1025005861,4240,'CASA'),
(1096509973,016,1025005861,1586,'CASA'),
(1014249776,017,1090381073,4910,'APARTAMENTO'),
(1095388150,018,1025005861,9975,'CASA'),
(1060935957,019,1090381073,3715,'CASA'),
(1099946026,020,1025005861,8804,'APARTAMENTO');


-------INSERTAR-----------
	create procedure insertarEmpleados
@idEmple int, @Nombre_empleado varchar (30), @Cargo Varchar (30), @Telefono_empleado int, @Salario int
AS
insert into Empleados(idEmple,Nombre_empleado,Cargo,Telefono_empleado,Salario)
	values (@idEmple, @Nombre_empleado, @Cargo, @Telefono_empleado, @Salario);

 	exec insertarEmpleados 80698555,'JUAN RAMIREZ','ASESOR COMERCIAL',320564895,1300000

	exec insertarEmpleados 	84531943,'JOSE PEREZ','ASESOR COMERCIAL',310569782,1500000


	create procedure insertarClientes
@id__Cliente int, @Nombre_cliente varchar (30), @Telefono_cliente int, @id_AcuerdoPago int
AS
insert into Clientes(id__Cliente, Nombre_cliente, Telefono_cliente, id_AcuerdoPago)
	values (@id__Cliente, @Nombre_cliente, @Telefono_cliente, @id_AcuerdoPago);

 	exec insertarClientes 8126623,'HELEN SANCHEZ',5452366,null

	exec insertarClientes 14772361,'MAURICIO REYES',8452298,009;


create procedure insertarPagos
@idAcuerdoPag int, @idCliente int, @fechaCompra date, @FechaPago date, @ValorDeuda int
AS
insert into Pagos(idAcuerdoPag, idCliente, fechaCompra, FechaPago, ValorDeuda)
	values (@idAcuerdoPag, @idCliente, @fechaCompra, @FechaPago, @ValorDeuda);

 	exec insertarPagos 0021,10178507,'4/06/2017','5/06/2020',125648777; 

	exec insertarPagos 022,85665214,'2/09/2017','7/04/2020',75689554;

    
	create procedure insertarProveedores
@idProveed int, @Nombre_proveedor varchar (35), @TipoInsumo varchar (30), @Telefono_proveedor int
AS
insert into Proveedores(idProveed, Nombre_proveedor, TipoInsumo, Telefono_proveedor)
	values (@idProveed, @Nombre_proveedor, @TipoInsumo, @Telefono_proveedor);

 	exec insertarProveedores 7865224,'ARCO-IRIS','PINTURAS',2407589;


	create procedure insertarContratista
@idContrat int, @NombreContr varchar (35), @AreaTrabajo varchar (30), @Telefono_contratista int
AS
insert into Contratista(idContrat, NombreContr, AreaTrabajo, Telefono_contratista)
	values (@idContrat, @NombreContr, @AreaTrabajo, @Telefono_contratista);

 	exec insertarContratista 3522651 ,'LUXURY ACABADOS','ACABADOS',2653374;



	create procedure insertarProyectos
@idProyect int, @idContratista int, @idProveedor int, @NombreProy varchar (35), @TipoProy varchar (30), @DireccionProy varchar (40)
AS
insert into Proyectos(idProyect, idContratista, idProveedor, NombreProy, TipoProy, DireccionProy)
	values (@idProyect, @idContratista, @idProveedor, @NombreProy, @TipoProy, @DireccionProy);

 	exec insertarProyectos 1995,85688575,8310697,'PH ALAMEDAS','CASA','CALLE 55 # 77 - 50';

	exec insertarProyectos 1996,85688575,8310697,'VALLE LOS PINOS','APARTAMENTO','CARRERA 5 # 25 - 12';


----------------LISTAR---------------

create procedure ver_cliente
AS
select * from Clientes

exec ver_cliente

create procedure ver_empleado
AS
select * from Empleados

exec ver_empleado

create procedure ver_proveedor
AS
select * from Proveedores

exec ver_proveedor



create procedure salario_alto
@valor int
AS
select* from Empleados
where Salario > @valor order by Salario desc

exec salario_alto N'2000000'

create procedure deuda_cliente
@id int
as
select id__Cliente,,Nombre_cliente,FechaPago,ValorDeuda from Clientes
inner join Pagos on id__Cliente = idCliente
where id__Cliente = @id

exec deuda_cliente 123

create procedure compra_cliente
@id int
as
select id__cliente,Nombre_cliente,idAcuerdoPag,fechaCompra from pagos
inner join Clientes on id_AcuerdoPago = idAcuerdoPag where id__Cliente = @id

exec compra_cliente 1000405047

create procedure rango_pagos
@date1 date,@date2 date
as
select * from Pagos where fechaPago between @date1 and @date2

exec rango_pagos '10/7/2019','12/6/2021'



-----------ACTUALIZAR------------

--- ----PAGOS ---
create procedure actualizar_pagos
@id_AcuerdoPago int,@pago date,@deuda int
as
update Pagos set FechaPago = @pago , ValorDeuda = @deuda
where idAcuerdoPag = @id_AcuerdoPago

exec actualizar_pagos 2,'07/30/2021',70154228
exec actualizar_pagos 3, '03/27/2021', 100256239


---PROVEEDOR---

create procedure actualizar_proveedor
@id int, @nombre varchar(30), @insumo varchar(30), @telefono int
as
update Proveedores set Nombre_proveedor = @nombre , TipoInsumo = @insumo , Telefono_proveedor = @telefono
where idProveed = @id

exec actualizar_proveedor 8449438,'CONINSA RAMON H','EQUIPOS TECNOLOGICOS',3354739
exec actualizar_proveedor 8153201,'TANQ SAS','TANQUES Y TUBERIAS',3458329

--- EMPLEADOS ---

create procedure actualizar_empleado
@id int,@cargo varchar(20),@telefono int,@salario int
as
update Empleados set Cargo = @cargo, Telefono_empleado = @telefono, Salario = @salario
where idEmple = @id

exec actualizar_empleado 1008709923,'GERENTE GENERAL',321248067,5000000

exec actualizar_empleado 1049549435,'LIDER DE OPERACION',32345633,2000000


---CONTRATISTA--------------------------------
create procedure actualizar_contratista
@id int, @nombre varchar(20), @area varchar(30), @telefono int
as
update Contratista set NombreContr = @nombre, AreaTrabajo = @area, Telefono_contratista = @telefono
where idContrat = @id

exec actualizar_contratista  80550340,'PANELES SOLARES SAS','TECNOLOGIA',2234586

exec actualizar_contratista 80709314,'CESTOPO','MEDICION DE AREAS',4412354


--- CLIENTES---
create procedure actualizar_cliente
@id int,@telefono int ,@acuerdo int
AS
update Clientes set Telefono_cliente = @telefono,id_AcuerdoPago = @acuerdo
where id__Cliente = @id

exec actualizar_cliente 1073548884,3532019,17

exec actualizar_cliente 1010907922,2224486,20


---PROYECTOS ---

create procedure actualizar_proyectos
@id int,@nombre varchar(30),@tipo varchar(20),@direccion varchar(30)
as
update Proyectos set NombreProy = @nombre, TipoProy = @tipo, DireccionProy = @direccion
where idProyect = @id

exec actualizar_proyectos 1996,'VALLE LOS OLIVOS','CLUB CAMPESTRE','AVENIDA 40 # 30-15'
exec actualizar_proyectos 1586,'LOS ALPES','APARTAESTUDIOS','AVENIDA 80 # 115- 86'



------ VENTAS ---
create procedure actualizar_inmueble
@cliente int, @inmueble varchar  (20)
as 
update Ventas set tipoInmueble = @inmueble
where id_Cliente = @cliente

exec actualizar_inmueble 1065801791,'URBANIZACION'

exec actualizar_inmueble 1062951534,'URBANIZACION'



----------------------ELIMINAR------------
CREATE PROCEDURE PA_eliminar_TPagos 
@ValorDeuda int 
AS 
DELETE FROM Pagos
Where  pagos = @ValorDeuda;

exec PA_eliminar_TPagos 628390185;



CREATE PROCEDURE PA_eliminar_TPagos
@FechaPago date 
AS 
DELETE FROM Pagos
Where  pagos = @FechaPago;

exec PA_eliminar_TPagos '5/08/2018';
-----------------------------------------------------------------------------
--*****************Empleados*****************
CREATE PROCEDURE PA_eliminar_TEmpleados
@Cargo varchar (30) 
AS 
DELETE FROM Empleados
Where  Empleados = @Cargo;

exec PA_eliminar_TEmpleados 'GERENTE COMERCIAL';


CREATE PROCEDURE PA_eliminar_TEmpleados
@Salario int 
AS 
DELETE FROM Empleados
Where  Empleados = @Salario;

exec PA_eliminar_TEmpleados 1200000;
------------------------------------------------------------------------------
--*****************Clientes*****************
CREATE PROCEDURE PA_eliminar_TClientes
@Nombre_cliente varchar (30) 
AS 
DELETE FROM Clientes
Where  Clientes = @Nombre_cliente;

exec PA_eliminar_TClientes 'LAURA RAIGOZA';

CREATE PROCEDURE PA_eliminar_TClientes
@Telefono_cliente int
AS 
DELETE FROM Clientes
Where  Clientes = @Telefono_cliente;

exec PA_eliminar_TClientes 303666727;
-------------------------------------------------------------------------------
--*****************Proveedores*****************

CREATE PROCEDURE PA_eliminar_TProveedores
@Telefono_proveedor int
AS 
DELETE FROM Proveedores
Where  Proveedores = @Telefono_proveedor;

exec PA_eliminar_TProveedores 5549200;


CREATE PROCEDURE PA_eliminar_TProveedores
@Nombre_proveedor varchar (35)
AS 
DELETE FROM Proveedores
Where  Proveedores = @Nombre_proveedor;

exec PA_eliminar_TProveedores 'ARGOS';
-------------------------------------------------------------------------------------
--**********Contratista*****************
CREATE PROCEDURE PA_eliminar_TContratista
@NombreContr varchar (35)
AS 
DELETE FROM Contratista
Where  Contratista = @NombreContr;

exec PA_eliminar_TContratista 'LOGISTICA Y SERVICIOS';


CREATE PROCEDURE PA_eliminar_TContratista @AreaTrabajo varchar (30)
AS 
DELETE FROM Contratista
Where  Contratista = @AreaTrabajo;

exec PA_eliminar_TContratista 'ELECTRICIDAD';
----------------------------------------------------------------------------------------------
--****************Proyectos*****************
CREATE PROCEDURE PA_eliminar_TProyectos
@NombreProy varchar (35)
AS 
DELETE FROM Proyectos
Where  Proyectos = @NombreProy;

exec PA_eliminar_TProyectos 'EL BOSQUE';



CREATE PROCEDURE PA_eliminar_TProyectos @TipoProy varchar (30)
AS 
DELETE FROM Proyectos
Where  Proyectos = @TipoProy;

exec PA_eliminar_TProyectos 'UNIDAD';
