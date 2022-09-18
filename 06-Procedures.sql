use 1928_showroom;

######################################################################
######################################################################
#INICIO CREACION PROCEDURES

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