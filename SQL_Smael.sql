######################################################################
######################################################################
#CReacion schema
create schema 1928_showroom;

######################################################################
######################################################################
#posicionarce en el schema
use 1928_showroom;

######################################################################
######################################################################
#CREACION DE TABLAS

#TABLA PARA ALMACENAR LOS DATOS DE LOS CLIENTES
create table 1928_showroom.clients (
id_client int auto_increment, #numero de persona 
dni_client int, # DNI del cliente
name_client varchar(15) not null, #Nombre del cliente
last_name_client varchar(25) not null, #Apellido del cliente
email_client varchar(40) not null, #Email del cliente
birth_date_client datetime not null, #Fecha de nacimiento del cliente
password_client varchar(15) not null, #Contraseña de la cuenta
phone_client varchar(40) not null, #Numero de contacto
adress_client varchar(50) not null, #Direccion para envios
city_client varchar(20) not null, #Ciudad para envios
date_account_client date not null, #Dia de creacion de la cuenta
order_history_client varchar(100) , #Historial de pedidos realizados
primary key (id_client)
);

#TABLA PARA ALMACENAR TODOS LOS PRODUCTOS A LA VENTA
create table 1928_showroom.products(
id_product int auto_increment, #Numero de producto
type_product varchar(45) not null , #Tipo de producto
title_product varchar(20) not null, #Titulo del producto
color_product varchar(20) not null, #Color del producto
price_product float(2) not null, #Precio del producto
size_product varchar(10), #Talle del producto
quantity_selected_product int default 1, #Cantidad seleccionada del producto . Empieza en 1 y aumenta si el cliente elije mas de 1
stock_product int not null, #Stock del producto
image_product varchar(100), # ¿Se pueden almacenar fotos y no solo el url?
point_product int, #Puntos que acumula comprar el producto
description_product varchar(100), #Descripcion del producto
primary key (id_product)
);

#TABLA PARA ALMACENAR TODAS LAS ORDENES GENERADAS POR CLIENTES
create table 1928_showroom.orders(
id_order int auto_increment, #Numero de orden
id_client int ,  #Numero de cliente que hizo la orden
delivery_order varchar(20) not null, #Forma de entrega de la orden
pay_method_order varchar(20) not null, #Forma de pago de la orden
discount_order boolean not null, # Si tiene o no descuento
discount_total_order int , # Si tiene descuento de cuanto es , si no tiene null
mesage_order varchar(150) , #Mesaje opcional de la orden
is_paid_order boolean, # si esta paga o pendiente
points_order int, # puntos que acumula la orden (Total = productos x cantidad x puntosQueAcumula )
date_created_order date,  #Fecha en que se creo la orden
date_paid_order date,  #Fecha en que se pago la orden
primary key(id_order),
foreign key (id_client) references 1928_showroom.clients(id_client)
);

#TABLA PARA ALMACENAR TODO LOS PRODUCTOS DE CADA ORDEN
create table 1928_showroom.products_in_order(
id_item int auto_increment, #Numero de operacion
id_product int not null, #Producto de la orden
id_order int not null , #Numero de orden en la que esta el producto
id_client int not null ,  #Numero de cliente que hizo la orden con ese producto
quantity_product int not null, #Cantidad de productos en la orden id_orden
price_total_product int not null, #Precio total del producto (cant x precio) en id_orden

primary key(id_item),
foreign key (id_order) references 1928_showroom.orders(id_order),
foreign key (id_client) references 1928_showroom.clients(id_client),
foreign key (id_product) references 1928_showroom.products(id_product)
);


#TABLA DE BENEFICIOS PARA CANJEAR POR LOS CLIENTES
create table 1928_showroom.benefits(
id_benefit int auto_increment, #Numero que identifica el beneficio
name_benefit varchar(50), #Nombre del descuento ( 10% , 20% , 2da prenda al 50% , etc )
points_benefit int , #Cuanto cuesta usar el beneficio
is_available_benefit boolean , #Si esta o no activo el beneficio

primary key(id_benefit)
);

create table 1928_showroom.exchange_benefits(
id_exchange int auto_increment , #Numero de transaccion,
points_exchange int , #Numero de puntos usados ( Puntos del cliente  - puntos del beneficio)
id_client int , #Numero de cliente que hizo el cambio de puntos
id_benefit int , #Numero de Beneficio cambiado

primary key(id_exchange),
foreign key (id_client) references 1928_showroom.clients(id_client),
foreign key (id_benefit) references 1928_showroom.benefits(id_benefit)
);

#TABLA DE TURNOS SOLICITADOS POR LOS CLIENTES
create table 1928_showroom.turns(
id_turn int auto_increment, #Numero que identifica el turno
date_acquired_turn date , #Fecha que se pidio el turno
date_turn date , #Fecha para la cual se saco el turno
id_client int, #Numero del cliente que solicito el turno 
used_turn boolean , #Si concurrio o no al turno solicitado

primary key(id_turn),
foreign key (id_client) references 1928_showroom.clients(id_client)
);

# FIN CREACION DE TABLAS
######################################################################
######################################################################


######################################################################
######################################################################
#INICIO INSERCIONES

select * from clients;

#INSERCION EN LA TABLA CLIENTES
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client , date_account_client , order_history_client) 
			values (35034013 , "Nicolas" ,  "Smael" , "nic.sma@gmail.com" , "1989-11-24" , "rghj849" , "542914228596" , "sarmiento 320", "Bahia Blanca" , curdate() , null  );
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client , date_account_client , order_history_client) 
			values (35034013 , "Mariano" ,  "Leto" , "mar.let@gmail.com" , "1998-05-06" , "rghj159" , "542914228597" , "Mitre 320", "Mar del plata" , curdate() , null  );
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client , date_account_client , order_history_client) 
			values (35034013 , "Jeremias" ,  "Jafor" , "jer.jar@gmail.com" , "1995-05-06" , "rghj147" , "54291422789" , "Panama 320", "Bahia Blanca" , curdate() , null  );
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client , date_account_client , order_history_client) 
			values (35034013 , "Cristina" ,  "Perlaes" , "cri.per@gmail.com" , "1985-05-06" , "rghj853" , "542914215596" , "Uruguay 320", "Bahia Blanca" , curdate() , null  );
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client , date_account_client , order_history_client) 
			values (35034013 , "Estefania" ,  "Laive" , "est.lai@gmail.com" , "1972-05-06" , "rghj753" , "542914848596" , "Laprida 320", "Bahia Blanca" , curdate() , null  );
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client , date_account_client , order_history_client) 
			values (35034013 , "Norma" ,  "Meles" , "norm.mel@gmail.com" , "2005-05-06" , "rghj564" , "542684228596" , "Alem 320", "Bahia Blanca" , curdate() , null  );
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client , date_account_client , order_history_client) 
			values (35034013 , "Luciano" ,  "Hune" , "luc.hun@gmail.com" , "1960-05-06" , "rgh284" , "542414228596" , "Rodriguez 320", "Sierra de la ventana" , curdate() , null  );
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client , date_account_client , order_history_client) 
			values (35034013 , "Carmen" ,  "Orin" , "car.ori@gmail.com" , "1999-05-06" , "rghj946" , "5429558596" , "Cordoba 320", "Monte Hermoso" , curdate() , null  );
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client , date_account_client , order_history_client) 
			values (35034013 , "Nestor" ,  "Deluf" , "nes.del@gmail.com" , "1989-05-06" , "rghj242" , "542911584596" , "Salta 320", "Bahia Blanca" , curdate() , null  );
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client , date_account_client , order_history_client) 
			values (35034013 , "Gustavo" ,  "Goel" , "gus.goe@gmail.com" , "2000-05-06" , "rghj111" , "542914268496" , "Colon 320", "mar del plata" , curdate() , null  );
#FIN INSERCION CLIENTES

#INSERCION PRODUCTOS
select * from products;

insert into products(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values ("jean","Jean Chupin","Azul", 6500 , "52",5 , 250 , "Jean chupin color azul" );
insert into products(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values ("jean","Jean ancho ","negro", 6200 , "48",2 , 200 , "Jean ancho color negro" );
insert into products(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values ("remera","Remera oversize","negro", 3500 , "xxl", 3 , 150 , "Remera oversize varios colores" );
insert into products(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values ("remera","Remera oversize","blanco", 3500 , "xxl", 2 , 150 , "Remera oversize varios colores" );
insert into products(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values ("sweater","Sweater tejido","verde", 5400 , "unico",2 , 200 , "Sweater tejido talle unico" );
insert into products(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values ("remera","remera manga ancha","gris", 3000 , "xl",1 , 180 , "remera manga ancha con bordados" );
insert into products(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values ("accesorio","aros estrella","plata", 1500 , "unico", 2 , 50 , "Aros en forma de estrella de acero quirurjico" );
insert into products(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values ("remera","Remera estampa paris","rojo", 3500 , "xxl",1 , 350 , "Remera con inscripcion paris colores varios" );
insert into products(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values ("remera","remera estampa love","blanco", 3000 , "xxl", 2 , 450 , "remera estampa corazon color blanco" );
insert into products(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values ("sweater","sweater oversize","beige", 6350 , "unico", 3 , 550 , "Sweater de algodon amplio" );

#FIN INSERCION PRODUCTOIS

#FIN INSERCIONES
######################################################################
######################################################################


######################################################################
######################################################################
#INICIO CREACION VISTAS

#ver los productos disponibles
create  or replace  view vw_products as
( select id_product , title_product , price_product  from products ) ; 

select * from vw_products;

#ver los stocks de los productos
create  or replace  view vw_products_stock as
( select id_product , title_product , stock_product  from products ) ; 

select * from vw_products_stock;

#ver los productos que solo son jeans
create or replace view vw_products_jeans as
(select id_product , title_product , price_product ,stock_product from products
where type_product = "jean" );

select * from vw_products_jeans;

#ver los productos con precio mayores a 5mil
create or replace view vw_products_5k as
(select id_product , title_product , price_product ,stock_product from products
where price_product > 5000 );

select * from vw_products_5k;

#clientes que no son de bahia blanca
create or replace view vw_clients_not_bahia as
(select id_client , last_name_client , name_client ,city_client from clients
where city_client != "Bahia Blanca" );

select * from vw_clients_not_bahia;

#FIN CREACION VISTAS
######################################################################
######################################################################


######################################################################
######################################################################
#INICIO CREACION FUNCIONES

#creacion del apellido + nombre
drop function if exists createCompleteName;
DELIMITER // 
CREATE FUNCTION  createCompleteName (last_name char(15), first_name char(25))
 returns char(40)
DETERMINISTIC 
BEGIN 
RETURN concat(last_name," ",first_name); 
END// ;
DELIMITER ;

select createCompleteName("smael", "nico") as complete_name;

#chek si puede agregar los productos seleccionados
drop function if exists can_add_product;
DELIMITER // 
CREATE FUNCTION  can_add_product (selected int , stock int)
 returns boolean
DETERMINISTIC 
BEGIN 
  DECLARE can boolean;

  SET can = (stock >= selected);
  RETURN can;

END// ;
DELIMITER ;

select  can_add_product(55, 45) as add_product;
select  can_add_product(1, 1) as add_product;


#si compro los productos seleccionados, los resta de stock
drop function if exists updateStock;
DELIMITER // 
CREATE FUNCTION  updateStock (selected int , stock int)
 returns int
DETERMINISTIC 
BEGIN 
RETURN stock - selected; 
END// ;
DELIMITER ;

select updateStock(5, 15) as stock_updated;

#FIN  CREACION FUNCIONES
######################################################################
######################################################################

