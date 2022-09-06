use 1928_showroom;

#####################################################################
#####################################################################
#CREACION DE TABLAS
#TABLA PARA ALMACENAR LOS DATOS DE LOS CLIENTES
drop table if exists 1928_showroom.clients;
create table 1928_showroom.clients (
    id_client int auto_increment,
    dni_client int not null,
    name_client char(15) not null,
    last_name_client char(25) not null,
    email_client char(40) not null,
    birth_date_client datetime not null,
    password_client char(15) not null,
    phone_client char(40) not null,
    adress_client char(50) not null,
    city_client char(25) not null,
    postal_code_client char(10) not null,
    date_account_client date not null,
    primary key (id_client)
);


#TABLA DE LOS DISTINTOS TIPOS DE PRODUCTO
drop table if exists 1928_showroom.product_types;
create table 1928_showroom.product_types(
    id_type int auto_increment,
    name_type char(15),
    primary key(id_type)
);

#TABLA DE LOS DISTINTOS TALLES DE PRODUCTO
drop table if exists 1928_showroom.product_sizes;
create table 1928_showroom.product_sizes(
    id_size int auto_increment,
    name_size char(8),
    primary key(id_size)
);

#TABLA DE BENEFICIOS PARA CANJEAR POR LOS CLIENTES
drop table if exists 1928_showroom.benefits;
create table 1928_showroom.benefits(
    id_benefit int auto_increment,
    name_benefit char(40),
    points_benefit int,
    primary key(id_benefit)
);

#TABLA DE LOS PUNTOS OBTENIDOS POR COMPRAR X PRODUCTO
drop table if exists 1928_showroom.product_points;
create table 1928_showroom.product_points(
    id_points int auto_increment,
    amount_points int,
    primary key(id_points)
);

#TABLA DE LAS FORMAS DE PAGO
drop table if exists 1928_showroom.payment_method;
create table 1928_showroom.payment_method(
    id_method int auto_increment,
    name_method char(40),
    #Nombre de la forma de pago (Efectivo , transferencia , qr , credito , debito ,etc)
    primary key(id_method)
);

#TABLA DEL ESTADO DE LA ORDEN
drop table if exists 1928_showroom.order_state;
create table 1928_showroom.order_state(
    id_state int auto_increment,
    name_state char(50),
    #Nombre del estado (En proceso  , Pendiente de abonar , Abonada , Cancelada)
    primary key(id_state)
);

#TABLA DE LAS FORMAS DE ENTREGA
drop table if exists 1928_showroom.delivery_method;
create table 1928_showroom.delivery_method(
    id_delivery int auto_increment,
	#Nombre de la forma de envio (retiro por el local , envio a domicilio)
    name_delivery char(50) not null,
    price_delivery int not null,
    primary key(id_delivery)
);

#TABLA DE LA CANTIDAD EN DESCUENTO
drop table if exists 1928_showroom.discount;
create table 1928_showroom.discount(
    id_discount int auto_increment,
    total_discount TINYINT(50),
    #cantidad del descuento (0,5,10,15,20,25,30,35,40,45,50)
    primary key(id_discount)
);

#TABLA PARA ALMACENAR TODOS LOS PRODUCTOS A LA VENTA
drop table if exists 1928_showroom.product;
create table 1928_showroom.product(
    id_product int auto_increment,
    type_product int not null,
    title_product char(25) not null,
    color_product char(20) not null,
    price_product float(2) not null,
    size_product int,
    quantity_selected_product int default 1,
    stock_product int not null,
    image_product varchar(500),
    point_product int not null,
    description_product char(254),
    primary key (id_product),
    foreign key (type_product) references 1928_showroom.product_types(id_type),
    foreign key (size_product) references 1928_showroom.product_sizes(id_size),
    foreign key (point_product) references 1928_showroom.product_points(id_points)
);


#TABLA PARA ALMACENAR TODAS LAS ORDENES GENERADAS POR CLIENTES
drop table if exists 1928_showroom.orders;
create table 1928_showroom.orders(
    id_order int auto_increment,
    id_client int not null,
    total_order int not null,
    delivery_order int not null,
    payment_order int not null,
    discount_order int not null,
    state_order int not null,
    points_order int,
    date_created_order date not null,
    date_paid_order date ,
    mesage_order varchar(150),
    primary key(id_order),
    foreign key (id_client) references 1928_showroom.clients(id_client),
	foreign key (delivery_order) references 1928_showroom.delivery_method(id_delivery),
	foreign key (payment_order) references 1928_showroom.payment_method(id_method),
	foreign key (discount_order) references 1928_showroom.discount(id_discount),
    foreign key (state_order) references 1928_showroom.order_state(id_state)
);


#TaBLA DE HISTORIAL DE VENTAS
drop table if exists 1928_showroom.sales_history;
create table 1928_showroom.sales_history(
	id_sale int auto_increment,
    id_product int not null,
    price_product float(2) not null,
    quantity_selected_product int not null,
    id_client int not null,
    id_order int not null,
    date_sold date not null,
    primary key (id_sale),
    foreign key (id_product) references 1928_showroom.product(id_product),
    foreign key (id_client) references 1928_showroom.clients(id_client),
    foreign key (id_order) references 1928_showroom.orders(id_order)
);


#TABLA DE HISTORIAL DE BENEFICIOS CANJEADOS
drop table if exists 1928_showroom.redeemed_benefits;
create table 1928_showroom.redeemed_benefits(
    id_redeemed int auto_increment,
    id_client int,
    id_benefit int,
    primary key(id_redeemed),
    foreign key (id_client) references 1928_showroom.clients(id_client),
    foreign key (id_benefit) references 1928_showroom.benefits(id_benefit)
);


# FIN CREACION DE TABLAS
######################################################################
######################################################################