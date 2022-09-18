use 1928_showroom;

#NOTA : Estan todas las funcionas entre un solo delimiter //

delimiter / / 

#Devuelve el id del cliente segun numero de documento 
create function get_client_id  (DNI_entry int) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE id_client_return int;
        set id_client_return = (select id_client from clients where DNI_entry = dni_client  );
		return id_client_return;

END ;

#Devuelve el DNI del cliente segun Id 
create function get_client_dni  (id_entry int) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE dni_client_return int;
        set dni_client_return = (select dni_client from clients where id_entry = id_client  );
		return dni_client_return;

END ;

#Devuelve el nombre completo del cliente segun DNI 
create function get_client_full_name  (DNI_entry int) 
	returns varchar(50) 
    DETERMINISTIC 
	BEGIN 
		DECLARE full_name_client_return varchar(50);
        DECLARE name_search varchar(10);
        DECLARE last_name_search varchar (10);
        
        set name_search =(select  name_client  from clients where DNI_entry = dni_client  );
        set last_name_search = (select  last_name_client  from clients where DNI_entry = dni_client  );
		set full_name_client_return = concat(last_name_search ," " , name_search);       
      
		return (full_name_client_return);

END ;

#Devuelve la direccion completa del cliente segun DNI 
create function get_client_full_adress  (DNI_entry int) 
	returns varchar(100) 
    DETERMINISTIC 
	BEGIN 
		DECLARE full_adress_client_return varchar(100) ;
        DECLARE adress_search varchar(50);
        DECLARE city_search varchar (50);
		DECLARE postal_search varchar (50);
        
        set adress_search =(select  adress_client  from clients where DNI_entry = dni_client  );
        set city_search = (select  city_client  from clients where DNI_entry = dni_client  );
		set postal_search = (select  postal_code_client  from clients where DNI_entry = dni_client  );
		set full_adress_client_return = concat(adress_search ," - " , city_search , " - " , postal_search);       
      
		return (full_adress_client_return);

END ;

#devuelve el precio del producto segun id
create function get_product_price  (id_entry int) 
	returns float(2) 
    DETERMINISTIC 
	BEGIN 
		DECLARE price_return float(2) ;
        set price_return = (select price_product from product where id_entry = id_product  );
		return price_return;

END ;

#devuelve el stock del producto segun id
create function get_product_stock  (id_entry int) 
	returns float(2) 
    DETERMINISTIC 
	BEGIN 
		DECLARE stock_return float(2) ;
        set stock_return = (select stock_product from product where id_entry = id_product  );
		return stock_return;

END ;

#devuelve el titulo del producto segun id
create function get_product_name (id_entry int) 
	returns char(25)
    DETERMINISTIC 
	BEGIN 
		DECLARE name_return char(25);
        set name_return = (select title_product from product where id_entry = id_product);
		return name_return;

END ;

#Devuelve el id del talle del producto ingresando el talle
create function get_size_id  (size_entry char(25)) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE size_return int;
        set size_return = (select id_size from product_sizes where size_entry = name_size  );
		return size_return;

END ;

#Devuelve el nombre del talle del producto ingresando el id
create function get_size_name  (id_entry int) 
	returns char(25) 
    DETERMINISTIC 
	BEGIN 
		DECLARE name_return char(25);
        set name_return = (select name_size from product_sizes where id_entry = id_size  );
		return name_return;

END ;

#Devuelve el id del tipo del producto ingrensado el tipo
create function get_type_id  (type_entry int) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE type_return int;
        set type_return = (select id_type from product_types where type_entry = name_type  );
		return type_return;
END ;

#Devuelve el nombre del tipo del producto ingrensado el id
create function get_type_name  (id_entry int) 
	returns char(25) 
    DETERMINISTIC 
	BEGIN 
		DECLARE name_return char(25);
        set name_return = (select name_type from product_types where id_entry = id_type );
		return name_return;
END ;

#Devuelve el id ingresando la cantidad de puntos
create function get_points_id  (points_entry int) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE point_return int;
        set point_return = (select id_points from product_points where points_entry = amount_points  );
		return point_return;
END ;

#Devuelve la cantidad de puntos ingresando el id
create function get_points_amount  (id_entry int) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE amount_return int;
        set amount_return = (select amount_points from product_points where id_entry = id_points );
		return amount_return;
END ;

#Devuelve el id ingresando la cantidad de descuento
create function get_discount_id  (discount_entry int) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE id_return int;
        set id_return = (select id_discount from discount where discount_entry = total_discount  );
		return id_return;
END ;

#Devuelve la cantidad de descuento ingresando el id
create function get_discount_amount  (id_entry int) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE discount_return int;
        set discount_return = (select total_discount from discount where id_entry = id_discount );
		return discount_return;
END ;

#Devuelve el id ingresando el beneficio
create function get_benefit_id  (benefit_entry char(50)) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE id_return int;
        set id_return = (select id_benefit from benefits where benefit_entry = name_benefit  );
		return id_return;
END ;

#Devuelve el beneficio ingresando el id
create function get_benefit_name  (id_entry int) 
	returns varchar(50) 
    DETERMINISTIC 
	BEGIN 
		DECLARE name_return varchar(50);
        set name_return = (select name_benefit from benefits where id_entry = id_benefit );
		return name_return;
END ;

#Devuelve los puntos de costo de uso ingresando el id del beneficio
create function get_benefit_cost  (id_entry int) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE points_return int;
        set points_return = (select points_benefit from benefits where id_entry = id_benefit );
		return points_return;
END ;

#Devuelve el id ingresando el tipo de delivery
create function get_delivery_method_id  (delivery_method_entry char(50)) 
	returns int
    DETERMINISTIC 
	BEGIN 
		DECLARE id_return int ;
        set id_return = (select id_delivery from delivery_method where delivery_method_entry = name_delivery  );
		return id_return;
END ;

#Devuelve el tipo de delivery ingresando el id
create function get_delivery_method_name  (id_entry int) 
	returns varchar(50) 
    DETERMINISTIC 
	BEGIN 
		DECLARE name_return varchar(50);
        set name_return = (select name_delivery from delivery_method where id_entry = id_delivery );
		return name_return;
END ;

#Devuelve el costo del delivery ingresando el id
delimiter / / 
create function get_delivery_method_cost  (id_entry int) 
	returns int 
    DETERMINISTIC 
	BEGIN 
		DECLARE cost_return int;
        set cost_return = (select price_delivery from delivery_method where id_entry = id_delivery );
		return cost_return;
END ;

#Devuelve el id ingresando el estado de orden
create function get_order_state_id  (order_state_entry char(50)) 
	returns int
    DETERMINISTIC 
	BEGIN 
		DECLARE id_return int ;
        set id_return = (select id_state from order_state where order_state_entry = name_state  );
		return id_return;
END ;

#Devuelve el estado de orden ingresando el id
create function get_order_state_name  (id_entry int) 
	returns varchar(50) 
    DETERMINISTIC 
	BEGIN 
		DECLARE name_return varchar(50);
        set name_return = (select name_state from order_state where id_entry = id_state );
		return name_return;
END ;

#Devuelve el id ingresando la forma de pago
create function get_payment_method_id  (payment_method_entry char(50)) 
	returns int
    DETERMINISTIC 
	BEGIN 
		DECLARE id_return int ;
        set id_return = (select id_method from payment_method where payment_method_entry = name_method  );
		return id_return;
END ;

#Devuelve la forma de pago ingresando el id
create function get_payment_method_name  (id_entry int) 
	returns varchar(50) 
    DETERMINISTIC 
	BEGIN 
		DECLARE name_return varchar(50);
        set name_return = (select name_method from payment_method where id_entry = id_method );
		return name_return;
END ;


#Actualizar stock
create function update_stock  (quantity int, stock int) 
	returns int 
    DETERMINISTIC     
	BEGIN 
		DECLARE stock_return int;
        set stock_return = (stock - quantity) ;
		return stock_return;
END ;

// delimiter;

