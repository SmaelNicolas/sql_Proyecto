create schema 1928_showroom;

use 1928_showroom;

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

#FIN CREACION DE TABLAS