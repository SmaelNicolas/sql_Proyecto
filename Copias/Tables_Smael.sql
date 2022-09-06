######################################################################
######################################################################
#CReacion schema
create schema 1928_showroom;

######################################################################
######################################################################
#Usar el schema
use 1928_showroom;

######################################################################
######################################################################
#CREACION DE TABLAS
#TABLA PARA ALMACENAR LOS DATOS DE LOS CLIENTES
create table 1928_showroom.clients (
    id_client int auto_increment,
    #numero de persona 
    dni_client int,
    # DNI del cliente
    name_client varchar(15) not null,
    #Nombre del cliente
    last_name_client varchar(25) not null,
    #Apellido del cliente
    email_client varchar(40) not null,
    #Email del cliente
    birth_date_client datetime not null,
    #Fecha de nacimiento del cliente
    password_client varchar(15) not null,
    #Contraseña de la cuenta
    phone_client varchar(40) not null,
    #Numero de contacto
    adress_client varchar(50) not null,
    #Direccion para envios
    city_client varchar(20) not null,
    #Ciudad para envios
    date_account_client date not null,
    #Dia de creacion de la cuenta
    order_history_client varchar(100),
    #Historial de pedidos realizados
    primary key (id_client)
);

#TABLA PARA ALMACENAR TODOS LOS PRODUCTOS A LA VENTA
create table 1928_showroom.products(
    id_product int auto_increment,
    #Numero de producto
    type_product varchar(45) not null,
    #Tipo de producto
    title_product varchar(20) not null,
    #Titulo del producto
    color_product varchar(20) not null,
    #Color del producto
    price_product float(2) not null,
    #Precio del producto
    size_product varchar(10),
    #Talle del producto
    quantity_selected_product int default 1,
    #Cantidad seleccionada del producto . Empieza en 1 y aumenta si el cliente elije mas de 1
    stock_product int not null,
    #Stock del producto
    image_product varchar(100),
    # ¿Se pueden almacenar fotos y no solo el url?
    point_product int,
    #Puntos que acumula comprar el producto
    description_product varchar(100),
    #Descripcion del producto
    primary key (id_product)
);

#TABLA PARA ALMACENAR TODAS LAS ORDENES GENERADAS POR CLIENTES
create table 1928_showroom.orders(
    id_order int auto_increment,
    #Numero de orden
    id_client int,
    #Numero de cliente que hizo la orden
    delivery_order varchar(20) not null,
    #Forma de entrega de la orden
    pay_method_order varchar(20) not null,
    #Forma de pago de la orden
    discount_total_order int,
    # Valor del descuento
    mesage_order varchar(150),
    #Mesaje opcional de la orden
    is_paid_order boolean,
    # si esta paga o pendiente
    points_order int,
    # puntos que acumula la orden (Total = productos x cantidad x puntosQueAcumula )
    date_created_order date,
    #Fecha en que se creo la orden
    date_paid_order date,
    #Fecha en que se pago la orden
    primary key(id_order),
    foreign key (id_client) references 1928_showroom.clients(id_client)
);

#TABLA PARA ALMACENAR TODO LOS PRODUCTOS DE CADA ORDEN
create table 1928_showroom.products_in_order(
    id_item int auto_increment,
    #Numero de operacion
    id_product int not null,
    #Producto de la orden
    id_order int not null,
    #Numero de orden en la que esta el producto
    id_client int not null,
    #Numero de cliente que hizo la orden con ese producto
    quantity_product int not null,
    #Cantidad de productos en la orden id_orden
    price_total_product int not null,
    #Precio total del producto (cant x precio) en id_orden
    primary key(id_item),
    foreign key (id_order) references 1928_showroom.orders(id_order),
    foreign key (id_client) references 1928_showroom.clients(id_client),
    foreign key (id_product) references 1928_showroom.products(id_product)
);

#TaBLA DE HISTORIAL DE COMPRAS
create table 1928_showroom.history_clients(
    id_product int not null,
    quantity_selected_product int not null,
    id_cliente int not null,
    id_order int not null,
    foreign key (id_product) references 1928_showroom.products(id_product),
    foreign key (quantity_selected_product) references 1928_showroom.products(quantity_selected_product),
    foreign key (id_cliente) references 1928_showroom.clients(id_client),
    foreign key (id_order) references 1928_showroom.orders(id_order)
);

#TABLA DE BENEFICIOS PARA CANJEAR POR LOS CLIENTES
create table 1928_showroom.benefits(
    id_benefit int auto_increment,
    #Numero que identifica el beneficio
    name_benefit varchar(50),
    #Nombre del descuento ( 10% , 20% , 2da prenda al 50% , etc )
    points_benefit int,
    #Cuanto cuesta usar el beneficio
    is_available_benefit boolean,
    #Si esta o no activo el beneficio
    primary key(id_benefit)
);

#TABLA DE HISTORIAL DE BENEFICIOS CANJEADOS
create table 1928_showroom.redeemed_benefits(
    id_redeemed int auto_increment,
    #Numero de transaccion,
    id_client int,
    #Numero de cliente que hizo el cambio de puntos
    id_benefit int,
    #Numero de Beneficio cambiado
    points_redeemed int,
    #Numero de puntos usados ( Puntos del beneficio)
    primary key(id_exchange),
    foreign key (id_client) references 1928_showroom.clients(id_client),
    foreign key (id_benefit) references 1928_showroom.benefits(id_benefit) foreign key (points_redeemed) references 1928_showroom.benefits(points_benefit)
);

#TABLA DE LOS DISTINTOS TIPOS DE PRODUCTO
create table 1928_showroom.type_product(
    id_type int auto_increment,
    #Numero que identifica el tipo de producto
    name_type varchar(50),
    #Nombre del tipo de producto (remeras,jeans,sweaters,accesorios,etc ...)
    primary key(id_type)
);

#TABLA DE LOS DISTINTOS TALLES DE PRODUCTO
create table 1928_showroom.size_product(
    id_size int auto_increment,
    #Numero que identifica el talle de los productos
    name_size varchar(50),
    #Nombre del talle (s,m,l,xxl,xxxl,40,42,44,46,48,50,52,54,56,58,unico, 1 al 10)
    primary key(id_size)
);

#TABLA DE LOS PUNTOS OBTENIDOS POR COMPRAR X PRODUCTO
create table 1928_showroom.points_products(
    id_product int auto_increment,
    #Numero que identifica la cantidad de puntos
    amount_points int,
    #numero de puntos  (25,50,75,100,125,150,175,200)
    primary key(id_product)
);

#TABLA DE LAS FORMAS DE PAGO
create table 1928_showroom.payment_method(
    id_method int auto_increment,
    #Numero que identifica la forma de pago
    name_method varchar(50),
    #Nombre de la forma de pago (Efectivo , transferencia , qr , credito , debito ,etc)
    primary key(id_method)
);

#TABLA DEL ESTADO DE LA ORDEN
create table 1928_showroom.order_state(
    id_state int auto_increment,
    #Numero que identifica el estado de la orden
    name_state varchar(50),
    #Nombre del estado (En proceso  , Pendiente de abonar , Abonada , Cancelada)
    primary key(id_state)
);

#TABLA DE LAS FORMAS DE ENTREGA
create table 1928_showroom.delivery_method(
    id_delivery int auto_increment,
    #Numero que identifica la forma de envio
    name_delivery varchar(50),
    #Nombre de la forma de envio (retiro por el local , envio a domicilio)
    primary key(id_delivery)
);

#TABLA DE LA CANTIDAD EN DESCUENTO
create table 1928_showroom.discount_amount(
    id_discount int auto_increment,
    #Numero que identifica la cantidad de descuento
    name_discount int,
    #cantidad del descuento (5,10,15,20,25,30,35,40,45,50)
    primary key(id_discount)
);

# FIN CREACION DE TABLAS
######################################################################
######################################################################