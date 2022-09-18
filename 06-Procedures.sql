use 1928_showroom;

######################################################################
######################################################################
#INICIO CREACION PROCEDURES

#Crea un cliente completo
drop procedure if exists create_client;
delimiter //
create procedure create_client(in dni int , in name char(15) , in last_name char(25), in email char(40) , in birth_date datetime , in password char(15) , in phone char(40) , in adress char(50) , in city char(25) , in postal_code char(10) , in date_account date)
begin
	 insert into 1928_showroom.clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client ,postal_code_client  , date_account_client) 
			values (dni , name ,  last_name , email , birth_date , password , phone , adress, city, postal_code , curdate());
end //
delimiter ;
call create_client(35656565 , "test" ,  "ttteest" , "estest.sadi@gmail.com" , "1972-05-06" , "rghj753" , "542914848596" , "testt", "test", "8000" , curdate());

#crea un producto completo
drop procedure if exists create_product;
delimiter // 
create procedure create_product(in type char(10) , in title char(25), in color char(20) , in price float(2) , in size char(10), in stock int , in point int, in description char(254)) 
begin
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (get_type_id(type), title, color, price, get_size_id(size) , stock, get_points_id(point) ,description );
end //
delimiter ;
call create_product("remera","Title Test","Test CLR", 9500, "unico", 4, 100 ,"TEST DESCRIPTION" );

select * from product;

#Listado de clients , con su nombre direccion documento y telefono
drop procedure if exists get_list_clients;                                 
delimiter //
create procedure get_list_clients()
begin
    select get_client_full_name(dni_client) as NOMBRE,  dni_client as DOCUMENTO , get_client_full_adress(dni_client) as DIRECCION , phone_client as TELEFONO
    from 1928_showroom.clients;
 
end//
delimiter ;
call  get_list_clients();

#un cliente con su nombre direccion documento y telefono
drop procedure if exists get_client_by_id;                                 
delimiter //
create procedure get_client_by_id(in dni_search int)
begin
    select get_client_full_name(dni_client) as NOMBRE,  dni_client as DOCUMENTO , get_client_full_adress(dni_client) as DIRECCION , phone_client as TELEFONO
    from 1928_showroom.clients
    where dni_client = dni_search;
 
end//
delimiter ;
call  get_client_by_id(35034014);
call  get_client_by_id(35034015);

#Listado de productos con su tipo , precio , stock  talle
drop procedure if exists get_list_products;                                 
delimiter //
create procedure get_list_products()
begin
    select title_product as PRODUCTO,  get_type_name(type_product) as CATEGORIA , get_size_name(size_product) as TALLE , price_product as PRECIO , stock_product as STOCK , get_points_amount( point_product) as PUNTOS , description_product as DESCRIPCION
    from 1928_showroom.product;
 
end//
delimiter ;
call  get_list_products();

#Producto/s por tipo 
drop procedure if exists get_list_products_by_type;                                 
delimiter //
create procedure get_list_products_by_type(in type_search varchar(20))
begin
    select title_product as PRODUCTO,  get_type_name(type_product) as CATEGORIA , get_size_name(size_product) as TALLE , price_product as PRECIO , stock_product as STOCK ,get_points_amount( point_product) as PUNTOS , description_product as DESCRIPCION
    from 1928_showroom.product
    where type_product = get_type_id(type_search);
 end//
delimiter ;
call  get_list_products_by_type("remera");

#Lista de ordenes de compra
drop procedure if exists get_list_orders;
delimiter //
create procedure get_list_orders()
begin
	select get_client_full_name(get_client_dni(id_client)) as CLIENTE , total_order as TOTAL , get_delivery_method_name(delivery_order) as "FORMA DE ENTREGA" ,get_discount_amount(discount_order) as "DESCUENTO %" , get_payment_method_name(payment_order) as "FORMA DE PAGO" ,get_order_state_name(state_order) as "ESTADO DE ORDEN"
	from 1928_showroom.orders;
end //
delimiter ;
call get_list_orders();

#Lista de ordenes de compra de un cliente
drop procedure if exists get_list_orders_by_dni;
delimiter //
create procedure get_list_orders_by_dni(in dni_search int)
begin
	select id_order as "ORDEN N°" , total_order as TOTAL , get_delivery_method_name(delivery_order) as "FORMA DE ENTREGA" ,get_discount_amount(discount_order) as "DESCUENTO %" , get_payment_method_name(payment_order) as "FORMA DE PAGO" ,get_order_state_name(state_order) as "ESTADO DE ORDEN"
	from 1928_showroom.orders
    where id_client = get_client_id(dni_search);
end //
delimiter ;
call get_list_orders_by_dni(35034015);

#Lista de productos en la ordern X
drop procedure if exists get_list_products_in_order;
delimiter //
create procedure get_list_products_in_order(in id_search int)
begin
	select get_product_name(id_product) as "PRODUCTO" , price_product as "PRECIO" , quantity_selected_product as "CANTIDAD" , price_product * quantity_selected_product as "PRECIO FINAL" 
	from 1928_showroom.sales_history
    where id_search = id_order;
end //
delimiter ;
call get_list_products_in_order(5);


#FIN CREACION PROCEDURES
######################################################################
######################################################################