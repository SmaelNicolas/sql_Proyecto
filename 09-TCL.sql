# INICIO SENTENCIAS TCL
set
	sql_safe_updates = 0;

select
	@@autocommit;

set
	@@autocommit = 1;

set
	@@autocommit = 0;

#TRANSACTION PARA AGREGAR 2 CLIENTES Y MODIFICAR EL NOMBRE DE UNO . FINALIZA CON COMMIT /ROLLBACK
start transaction;

select
	*
from
	clients;

insert into
	clients (
		dni_client,
		name_client,
		last_name_client,
		email_client,
		birth_date_client,
		password_client,
		phone_client,
		adress_client,
		city_client,
		date_account_client,
		order_history_client
	)
values
	(
		1232113,
		"Nestor",
		"Perez",
		"Nestor.Perez@gmail.com",
		"1960-11-24",
		"rghj819",
		"542914223496",
		"sarmiento 120",
		"Bahia Blanca",
		curdate(),
		null
	);

insert into
	clients (
		dni_client,
		name_client,
		last_name_client,
		email_client,
		birth_date_client,
		password_client,
		phone_client,
		adress_client,
		city_client,
		date_account_client,
		order_history_client
	)
values
	(
		3453143,
		"Gaston",
		"Lunv",
		"gast.lunv@gmail.com",
		"1990-09-29",
		"rew456",
		"542249565658",
		"Peru 210",
		"Bahia Blanca",
		curdate(),
		null
	);

update
	clients
set
	name_client = "Pipo"
where
	name_client = "Nestor"
	and last_name_client = "Perez";

rollback;

commit;

# SEGUNDA TRANSACCION PARA AGREGAR 8 NUEVOS CLIENTES 4 HOBRES / 4 MUJERES , CON 3 SAVEPOINTS
# PRIMERO ANTES DE INSERTAR TODOS , EL SEGUNDO CUANDO INSERTA 4 HOMBRES Y EL 3ERO DESPUES DE INSERTAR 4 MUJERES
#Y EJEMPLO DE ROLLBACK AL SAVEPOINT 0 Y 1
start transaction;

savepoint save_point_0;

insert into
	clients (
		dni_client,
		name_client,
		last_name_client,
		email_client,
		birth_date_client,
		password_client,
		phone_client,
		adress_client,
		city_client,
		date_account_client,
		order_history_client
	)
values
	(
		1232113,
		"Pedro",
		"Merce",
		"ped.mer@gmail.com",
		"1999-10-02",
		"asdas123",
		"2345643543",
		"Salta 432",
		"Bahia Blanca",
		curdate(),
		null
	);

insert into
	clients (
		dni_client,
		name_client,
		last_name_client,
		email_client,
		birth_date_client,
		password_client,
		phone_client,
		adress_client,
		city_client,
		date_account_client,
		order_history_client
	)
values
	(
		1235437,
		"Guillermo",
		"Luaro",
		"gui.lua@gmail.com",
		"2000-01-04",
		"qwef43",
		"5435346543",
		"Chile 123",
		"Bahia Blanca",
		curdate(),
		null
	);

insert into
	clients (
		dni_client,
		name_client,
		last_name_client,
		email_client,
		birth_date_client,
		password_client,
		phone_client,
		adress_client,
		city_client,
		date_account_client,
		order_history_client
	)
values
	(
		6542876,
		"Beto",
		"Funol",
		"bet.fun@gmail.com",
		"2001-03-06",
		"hrwt345",
		"65433675654",
		"Canada 1265",
		"Bahia Blanca",
		curdate(),
		null
	);

insert into
	clients (
		dni_client,
		name_client,
		last_name_client,
		email_client,
		birth_date_client,
		password_client,
		phone_client,
		adress_client,
		city_client,
		date_account_client,
		order_history_client
	)
values
	(
		3658767,
		"Mariano",
		"Casno",
		"mar.cas@gmail.com",
		"2002-05-08",
		"jhgiu543",
		"5432553256342",
		"Alvarado 432",
		"Bahia Blanca",
		curdate(),
		null
	);

savepoint save_point_1;

insert into
	clients (
		dni_client,
		name_client,
		last_name_client,
		email_client,
		birth_date_client,
		password_client,
		phone_client,
		adress_client,
		city_client,
		date_account_client,
		order_history_client
	)
values
	(
		1325431,
		"Guadalupe",
		"Gelin",
		"guad.gel@gmail.com",
		"1989-07-10",
		"mhxcbv23",
		"543265436756",
		"Panama 32",
		"Bahia Blanca",
		curdate(),
		null
	);

insert into
	clients (
		dni_client,
		name_client,
		last_name_client,
		email_client,
		birth_date_client,
		password_client,
		phone_client,
		adress_client,
		city_client,
		date_account_client,
		order_history_client
	)
values
	(
		3246545,
		"Silvia",
		"Sevurna",
		"sil.sev@gmail.com",
		"1986-02-12",
		"bnvx4352",
		"867458746876",
		"Alem 5462",
		"Bahia Blanca",
		curdate(),
		null
	);

insert into
	clients (
		dni_client,
		name_client,
		last_name_client,
		email_client,
		birth_date_client,
		password_client,
		phone_client,
		adress_client,
		city_client,
		date_account_client,
		order_history_client
	)
values
	(
		7654234,
		"Clohe",
		"Pretzo",
		"clo.pre@gmail.com",
		"1985-04-14",
		"nbv234",
		"478464253676",
		"Cuba 4321",
		"Bahia Blanca",
		curdate(),
		null
	);

insert into
	clients (
		dni_client,
		name_client,
		last_name_client,
		email_client,
		birth_date_client,
		password_client,
		phone_client,
		adress_client,
		city_client,
		date_account_client,
		order_history_client
	)
values
	(
		2342342,
		"Viviana",
		"Nauter",
		"viv.nau@gmail.com",
		"1980-06-16",
		"ser54",
		"87645436543",
		"Yrigoyen 10",
		"Bahia Blanca",
		curdate(),
		null
	);

savepoint save_point_2;

rollback to save_point_0;

rollback to save_point_1;

select
	*
from
	clients;

# FIN SENTENCIAS TCL
######################################################################
######################################################################