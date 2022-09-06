create schema 1928_showroom;

use 1928_showroom;

create table 1928_showroom.clients (
	id_client int auto_increment,
	dni_client int,
	name_client varchar(15) not null,
	last_name_client varchar(25) not null,
	email_client varchar(40) not null,
	birth_date_client datetime not null,
	password_client varchar(15) not null,
	phone_client varchar(40) not null,
	adress_client varchar(50) not null,
	city_client varchar(20) not null,
	date_account_client date not null,
	order_history_client varchar(100),
	primary key (id_client)
);

create table 1928_showroom.products(
	id_product int auto_increment,
	type_product varchar(45) not null,
	title_product varchar(20) not null,
	color_product varchar(20) not null,
	price_product float(2) not null,
	size_product varchar(10),
	quantity_selected_product int default 1,
	stock_product int not null,
	image_product varchar(100),
	point_product int,
	description_product varchar(100),
	primary key (id_product)
);

create table 1928_showroom.orders(
	id_order int auto_increment,
	id_client int,
	delivery_order varchar(20) not null,
	pay_method_order varchar(20) not null,
	discount_order boolean not null,
	discount_total_order int,
	mesage_order varchar(150),
	is_paid_order boolean,
	points_order int,
	date_created_order date,
	date_paid_order date,
	primary key(id_order),
	foreign key (id_client) references 1928_showroom.clients(id_client)
);

create table 1928_showroom.products_in_order(
	id_item int auto_increment,
	id_product int not null,
	id_order int not null,
	id_client int not null,
	quantity_product int not null,
	price_total_product int not null,
	primary key(id_item),
	foreign key (id_order) references 1928_showroom.orders(id_order),
	foreign key (id_client) references 1928_showroom.clients(id_client),
	foreign key (id_product) references 1928_showroom.products(id_product)
);

create table 1928_showroom.benefits(
	id_benefit int auto_increment,
	name_benefit varchar(50),
	points_benefit int,
	is_available_benefit boolean,
	primary key(id_benefit)
);

create table 1928_showroom.exchange_benefits(
	id_exchange int auto_increment,
	points_exchange int,
	id_client int,
	id_benefit int,
	primary key(id_exchange),
	foreign key (id_client) references 1928_showroom.clients(id_client),
	foreign key (id_benefit) references 1928_showroom.benefits(id_benefit)
);

create table 1928_showroom.turns(
	id_turn int auto_increment,
	date_acquired_turn date,
	date_turn date,
	id_client int,
	used_turn boolean,
	primary key(id_turn),
	foreign key (id_client) references 1928_showroom.clients(id_client)
);

create table 1928_showroom.type_product(
	id_type int auto_increment,
	name_type varchar(50),
	primary key(id_type)
);

create table 1928_showroom.size_product(
	id_size int auto_increment,
	name_size varchar(50),
	primary key(id_size)
);

create table 1928_showroom.points_products(
	id_product int auto_increment,
	amount_points int,
	primary key(id_product)
);

create table 1928_showroom.payment_method(
	id_method int auto_increment,
	name_method varchar(50),
	primary key(id_method)
);

create table 1928_showroom.payment_method(
	id_method int auto_increment,
	name_method varchar(50),
	primary key(id_method)
);

create table 1928_showroom.delivery_method(
	id_delivery int auto_increment,
	name_delivery varchar(50),
	primary key(id_delivery)
);

create table 1928_showroom.discount_amount(
	id_discount int auto_increment,
	name_discount int,
	primary key(id_discount)
);

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
		35034013,
		"Nicolas",
		"Smael",
		"nic.sma@gmail.com",
		"1989-11-24",
		"rghj849",
		"542914228596",
		"sarmiento 320",
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
		35034013,
		"Mariano",
		"Leto",
		"mar.let@gmail.com",
		"1998-05-06",
		"rghj159",
		"542914228597",
		"Mitre 320",
		"Mar del plata",
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
		35034013,
		"Jeremias",
		"Jafor",
		"jer.jar@gmail.com",
		"1995-05-06",
		"rghj147",
		"54291422789",
		"Panama 320",
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
		35034013,
		"Cristina",
		"Perlaes",
		"cri.per@gmail.com",
		"1985-05-06",
		"rghj853",
		"542914215596",
		"Uruguay 320",
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
		35034013,
		"Estefania",
		"Laive",
		"est.lai@gmail.com",
		"1972-05-06",
		"rghj753",
		"542914848596",
		"Laprida 320",
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
		35034013,
		"Norma",
		"Meles",
		"norm.mel@gmail.com",
		"2005-05-06",
		"rghj564",
		"542684228596",
		"Alem 320",
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
		35034013,
		"Luciano",
		"Hune",
		"luc.hun@gmail.com",
		"1960-05-06",
		"rgh284",
		"542414228596",
		"Rodriguez 320",
		"Sierra de la ventana",
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
		35034013,
		"Carmen",
		"Orin",
		"car.ori@gmail.com",
		"1999-05-06",
		"rghj946",
		"5429558596",
		"Cordoba 320",
		"Monte Hermoso",
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
		35034013,
		"Nestor",
		"Deluf",
		"nes.del@gmail.com",
		"1989-05-06",
		"rghj242",
		"542911584596",
		"Salta 320",
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
		35034013,
		"Gustavo",
		"Goel",
		"gus.goe@gmail.com",
		"2000-05-06",
		"rghj111",
		"542914268496",
		"Colon 320",
		"mar del plata",
		curdate(),
		null
	);

select
	*
from
	products;

insert into
	products(
		type_product,
		title_product,
		color_product,
		price_product,
		size_product,
		stock_product,
		point_product,
		description_product
	)
values
	(
		"jean",
		"Jean Chupin",
		"Azul",
		6500,
		"52",
		5,
		250,
		"Jean chupin color azul"
	);

insert into
	products(
		type_product,
		title_product,
		color_product,
		price_product,
		size_product,
		stock_product,
		point_product,
		description_product
	)
values
	(
		"jean",
		"Jean ancho ",
		"negro",
		6200,
		"48",
		2,
		200,
		"Jean ancho color negro"
	);

insert into
	products(
		type_product,
		title_product,
		color_product,
		price_product,
		size_product,
		stock_product,
		point_product,
		description_product
	)
values
	(
		"remera",
		"Remera oversize",
		"negro",
		3500,
		"xxl",
		3,
		150,
		"Remera oversize varios colores"
	);

insert into
	products(
		type_product,
		title_product,
		color_product,
		price_product,
		size_product,
		stock_product,
		point_product,
		description_product
	)
values
	(
		"remera",
		"Remera oversize",
		"blanco",
		3500,
		"xxl",
		2,
		150,
		"Remera oversize varios colores"
	);

insert into
	products(
		type_product,
		title_product,
		color_product,
		price_product,
		size_product,
		stock_product,
		point_product,
		description_product
	)
values
	(
		"sweater",
		"Sweater tejido",
		"verde",
		5400,
		"unico",
		2,
		200,
		"Sweater tejido talle unico"
	);

insert into
	products(
		type_product,
		title_product,
		color_product,
		price_product,
		size_product,
		stock_product,
		point_product,
		description_product
	)
values
	(
		"remera",
		"remera manga ancha",
		"gris",
		3000,
		"xl",
		1,
		180,
		"remera manga ancha con bordados"
	);

insert into
	products(
		type_product,
		title_product,
		color_product,
		price_product,
		size_product,
		stock_product,
		point_product,
		description_product
	)
values
	(
		"accesorio",
		"aros estrella",
		"plata",
		1500,
		"unico",
		2,
		50,
		"Aros en forma de estrella de acero quirurjico"
	);

insert into
	products(
		type_product,
		title_product,
		color_product,
		price_product,
		size_product,
		stock_product,
		point_product,
		description_product
	)
values
	(
		"remera",
		"Remera estampa paris",
		"rojo",
		3500,
		"xxl",
		1,
		350,
		"Remera con inscripcion paris colores varios"
	);

insert into
	products(
		type_product,
		title_product,
		color_product,
		price_product,
		size_product,
		stock_product,
		point_product,
		description_product
	)
values
	(
		"remera",
		"remera estampa love",
		"blanco",
		3000,
		"xxl",
		2,
		450,
		"remera estampa corazon color blanco"
	);

insert into
	products(
		type_product,
		title_product,
		color_product,
		price_product,
		size_product,
		stock_product,
		point_product,
		description_product
	)
values
	(
		"sweater",
		"sweater oversize",
		"beige",
		6350,
		"unico",
		3,
		550,
		"Sweater de algodon amplio"
	);

create
or replace view vw_products as (
	select
		id_product,
		title_product,
		price_product
	from
		products
);

select
	*
from
	vw_products;

create
or replace view vw_products_stock as (
	select
		id_product,
		title_product,
		stock_product
	from
		products
);

select
	*
from
	vw_products_stock;

create
or replace view vw_products_jeans as (
	select
		id_product,
		title_product,
		price_product,
		stock_product
	from
		products
	where
		type_product = "jean"
);

select
	*
from
	vw_products_jeans;

create
or replace view vw_products_5k as (
	select
		id_product,
		title_product,
		price_product,
		stock_product
	from
		products
	where
		price_product > 5000
);

select
	*
from
	vw_products_5k;

create
or replace view vw_clients_not_bahia as (
	select
		id_client,
		last_name_client,
		name_client,
		city_client
	from
		clients
	where
		city_client != "Bahia Blanca"
);

select
	*
from
	vw_clients_not_bahia;

drop function if exists createCompleteName;

DELIMITER / / CREATE FUNCTION createCompleteName (last_name char(15), first_name char(25)) returns char(40) DETERMINISTIC BEGIN RETURN concat(last_name, " ", first_name);

END / /;

DELIMITER;

select
	createCompleteName("smael", "nico") as complete_name;

drop function if exists can_add_product;

DELIMITER / / CREATE FUNCTION can_add_product (selected int, stock int) returns boolean DETERMINISTIC BEGIN DECLARE can boolean;

SET
	can = (stock >= selected);

RETURN can;

END / /;

DELIMITER;

select
	can_add_product(55, 45) as add_product;

select
	can_add_product(1, 1) as add_product;

drop function if exists updateStock;

DELIMITER / / CREATE FUNCTION updateStock (selected int, stock int) returns int DETERMINISTIC BEGIN RETURN stock - selected;

END / /;

DELIMITER;

select
	updateStock(5, 15) as stock_updated;

drop procedure if exists sp_order_clients;

delimiter / / create procedure sp_order_clients (
	inout param_order varchar(50),
	inout param_asc_desc varchar(50)
) begin
set
	@var1 = concat(
		"select * from clients u order by",
		" ",
		param_order,
		" ",
		param_asc_desc
	);

prepare param_stmt
from
	@var1;

execute param_stmt;

deallocate prepare param_stmt;

end / / delimiter;

set
	@param_order = 'last_name_client';

set
	@param_asc_desc = 'desc';

call sp_order_clients (@param_order, @param_asc_desc);

set
	@param_order = 'id_client';

set
	@param_asc_desc = 'desc';

call sp_order_clients (@param_order, @param_asc_desc);

set
	@param_order = 'birth_date_client';

set
	@param_asc_desc = 'asc';

call sp_order_clients (@param_order, @param_asc_desc);

drop procedure if exists sp_insert_turn;

delimiter / / create procedure sp_insert_turn(
	param_date_acquired_turn date,
	param_date_turn date,
	param_id_client int,
	param_used_turn boolean
) begin
insert into
	turns (
		date_acquired_turn,
		date_turn,
		id_client,
		used_turn
	)
values
	(
		param_date_acquired_turn,
		param_date_turn,
		param_id_client,
		param_used_turn
	);

end / / delimiter;

set
	@date_acquired_turn = curdate();

set
	@date_turn = curdate();

set
	@id_client = 5;

set
	@used_turn = true;

call sp_insert_turn (
	@date_acquired_turn,
	@date_turn,
	@id_client,
	@used_turn
);

select
	*
from
	turns;

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

DELIMITER / / create trigger trg_log_clients_create before
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

create user if not exists 'user_1' @'localhost' identified by '123456';

grant all on *.* to 'user_1' @'localhost';

revoke all privileges on *.*
from
	'user_1' @'localhost';

show grants for user_1 @localhost;

grant
select
	on 1928_showroom.vw_products to 'user_1' @'localhost';

show grants for user_1 @localhost;

create user if not exists 'user_2' @'localhost' identified by '123456';

create user if not exists 'user_3' @'localhost' identified by 'abcdef';

grant
select
,
insert
,
update
	on 1928_showroom.* to 'user_2' @'localhost',
	'user_3' @'localhost';

show grants for user_2 @localhost;

show grants for user_3 @localhost;

set
	sql_safe_updates = 0;

select
	@ @autocommit;

set
	@ @autocommit = 1;

set
	@ @autocommit = 0;

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