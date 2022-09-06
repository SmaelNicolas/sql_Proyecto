use 1928_showroom;

#Devuelve el id del cliente segun numero de documento (busca por documento ya que no existen 2 iguales)
delimiter / / 
create function get_client_id  (DNI_entry int) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE id_client_return int;
        set id_client_return = (select id_client from clients where DNI_entry = dni_client  );
		return id_client_return;

END ;
//delimiter;

#Devuelve el id del talle del producto
delimiter / / 
create function get_size_id  (size_entry char(25)) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE size_return int;
        set size_return = (select id_size from product_sizes where size_entry = name_size  );
		return size_return;

END ;
//delimiter;

#Devuelve el id del tipo del producto
delimiter / / 
create function get_type_id  (type_entry char(25)) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE type_return int;
        set type_return = (select id_type from product_types where type_entry = name_type  );
		return type_return;
END ;
//delimiter;

#Devuelve el id de la cantidad de puntos que suma el producto
delimiter / / 
create function get_points_id  (points_entry int) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE point_return int;
        set point_return = (select id_points from product_points where points_entry = amount_points  );
		return point_return;
END ;
//delimiter;

#devuelve todas las ordenes de compra del cliente con DNI XXXX
delimiter / / 
create function get_client_orders  (DNI_entry int) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		declare orders_client_return int;
        declare id_client_search int;
        set id_client_search = get_client_id(DNI_entry);
        set orders_client_return = (select id_order from orders where id_client_search = id_client  );
		return orders_client_return;
END ;
//delimiter;

select * from clients;
select * from orders;
