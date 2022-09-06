use 1928_showroom;

#ver todos los clientes
create
or replace view vw_clients as (
	select
		id_client,
        dni_client,
        name_client,
        last_name_client,
        email_client,
        birth_date_client,
        phone_client,
        adress_client,
        city_client,
        postal_code_client,
        date_account_client  
	from
		clients
);

#ver todos los productos
create
or replace view vw_product as (
	select
		id_product,
        type_product,
		title_product,
		price_product,
        size_product,
        stock_product,
        point_product
	from
		product
);

#ver todas las ordenes creadas
create
or replace view vw_orders as (
	select
		id_order,
		id_client,
		total_order,
		delivery_order,
        payment_order,
        discount_order,
        state_order,
        points_order,
        date_created_order,
        date_paid_order
	from
		orders
);

#ver todas los productos vendidos
create
or replace view vw_sales_history as (
	select
		id_sale,
        id_product,
        price_product,
        quantity_selected_product,
        id_client,
        id_order,
        date_sold
	from
		sales_history
);

#ver los productos que solo son jeans
create
or replace view vw_product_jean as (
	select
		id_product,
		title_product,
		price_product,
        size_product,
        color_product,
		stock_product,
        point_product
	from
		product
	where
		type_product = 2
);

#ver los productos que solo son remeras
create
or replace view vw_product_remera as (
	select
		id_product,
		title_product,
		price_product,
        size_product,
        color_product,
		stock_product,
        point_product
	from
		product
	where
		type_product = 1
);

#ver los productos que solo son sweaters
create
or replace view vw_product_sweater as (
	select
		id_product,
		title_product,
		price_product,
        size_product,
        color_product,
		stock_product,
        point_product
	from
		product
	where
		type_product = 3
);

#ver los productos que solo son campera
create
or replace view vw_product_campera as (
	select
		id_product,
		title_product,
		price_product,
        size_product,
        color_product,
		stock_product,
        point_product
	from
		product
	where
		type_product = 4
);

#ver los productos que solo son accesorio
create
or replace view vw_product_accesorio as (
	select
		id_product,
		title_product,
		price_product,
        size_product,
        color_product,
		stock_product,
        point_product
	from
		product
	where
		type_product = 5
);

#ver los productos que solo son pantalon
create
or replace view vw_product_pantalon as (
	select
		id_product,
		title_product,
		price_product,
        size_product,
        color_product,
		stock_product,
        point_product
	from
		product
	where
		type_product = 6
);

#ver los productos que solo son pollera
create
or replace view vw_product_pollera as (
	select
		id_product,
		title_product,
		price_product,
        size_product,
        color_product,
		stock_product,
        point_product
	from
		product
	where
		type_product = 7
);

#ver los productos que solo son vestido
create
or replace view vw_product_vestido as (
	select
		id_product,
		title_product,
		price_product,
        size_product,
        color_product,
		stock_product,
        point_product
	from
		product
	where
		type_product = 8
);

