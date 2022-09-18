######################################################################
######################################################################
#INICIO CREACION TRIGGERS - TABLAS LOG
#trigger para guardar las ordenes generadas luego de agregarse a la tabla order
drop table if exists log_user_made_order;

create table if not exists log_user_made_order (
	id_log int auto_increment,
	-- pk de la tabla 
	name_action varchar(10),
	-- irira si es insert , update ,delete
	name_table varchar(50),
	-- provincia , class , departamento , etc..
	user int,
	-- quien ejecuta la sentencia DML
	date_insert date,
	-- momento exacto en el que se genera DML
	primary key (ID_LOG)
);

DELIMITER / / create trigger trg_log_orders
after
insert
	on 1928_showroom.orders for each row begin
insert into
	log_user_made_order (name_action, name_table, user, date_insert)
values
	('insert', 'orders', 15, NOW());

end / / DELIMITER;

#trigger para guardar los log de la creacion de clientes antes de insertar en clients
drop table if exists log_clients_create;

create table if not exists log_clients_create (
	id_log int auto_increment,
	-- pk de la tabla 
	name_action varchar(10),
	-- irira si es insert , update ,delete
	name_table varchar(50),
	-- provincia , class , departamento , etc..
	complete_name varchar(50),
	-- quien ejecuta la sentencia DML
	email_clients varchar(50),
	-- quien ejecuta la sentencia DML
	phone_clients varchar(50),
	-- quien ejecuta la sentencia DML
	date_insert date,
	-- momento exacto en el que se genera DML
	primary key (ID_LOG)
);

DELIMITER / / create trigger trg_log_clients_create 
before
insert
	on 1928_showroom.clients for each row begin
insert into
	log_clients_create (
		name_action,
		name_table,
		complete_name,
		email_clients,
		phone_clients,
		date_insert
	)
values
	(
		'insert',
		'clients',
		'Smael Nicolas',
		'nico@smael.com',
		'222584762',
		NOW()
	);

end / / DELIMITER;

# FIN CREACION TRIGGERS - TABLAS LOG
######################################################################
######################################################################