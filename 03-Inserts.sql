use 1928_showroom;

#INICIO INSERCIONES

#INSERCION EN LA TABLA CLIENTES
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client ,postal_code_client  , date_account_client) 
			values (35034013 , "Nicolas" ,  "Smael" , "nic.sma@gmail.com" , "1989-11-24" , "rghj849" , "542914228596" , "sarmiento 320", "Bahia Blanca", "8000" , curdate());
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client ,postal_code_client  , date_account_client) 
			values (35033426 , "Mariano" ,  "Leto" , "mar.let@gmail.com" , "1998-05-06" , "rghj159" , "542914228597" , "Mitre 320", "Mar del plata", "8001" , curdate());
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client ,postal_code_client  , date_account_client) 
			values (35034754 , "Jeremias" ,  "Jafor" , "jer.jar@gmail.com" , "1995-05-06" , "rghj147" , "54291422789" , "Panama 320", "Bahia Blanca", "8000" , curdate());
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client ,postal_code_client  , date_account_client) 
			values (35009910 , "Cristina" ,  "Perlaes" , "cri.per@gmail.com" , "1985-05-06" , "rghj853" , "542914215596" , "Uruguay 320", "Bahia Blanca", "8000" , curdate());
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client ,postal_code_client  , date_account_client) 
			values (35335570 , "Estefania" ,  "Laive" , "est.lai@gmail.com" , "1972-05-06" , "rghj753" , "542914848596" , "Laprida 320", "Bahia Blanca", "8000" , curdate());
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client ,postal_code_client  , date_account_client) 
			values (29078652 , "Norma" ,  "Meles" , "norm.mel@gmail.com" , "2005-05-06" , "rghj564" , "542684228596" , "Alem 320", "Bahia Blanca", "8000" , curdate());
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client ,postal_code_client  , date_account_client) 
			values (19640923 , "Luciano" ,  "Hune" , "luc.hun@gmail.com" , "1960-05-06" , "rgh284" , "542414228596" , "Rodriguez 320", "Sierra de la ventana", "8002" , curdate());
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client ,postal_code_client  , date_account_client) 
			values (88328342 , "Carmen" ,  "Orin" , "car.ori@gmail.com" , "1999-05-06" , "rghj946" , "5429558596" , "Cordoba 320", "Monte Hermoso", "8003" , curdate());
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client ,postal_code_client  , date_account_client) 
			values (61823032 , "Nestor" ,  "Deluf" , "nes.del@gmail.com" , "1989-05-06" , "rghj242" , "542911584596" , "Salta 320", "Bahia Blanca", "8000" , curdate());
insert into clients (dni_client,name_client,last_name_client,email_client , birth_date_client , password_client, phone_client , adress_client , city_client ,postal_code_client  , date_account_client) 
			values (54372972 , "Gustavo" ,  "Goel" , "gus.goe@gmail.com" , "2000-05-06" , "rghj111" , "542914268496" , "Colon 320", "mar del plata", "8001" , curdate());
#FIN INSERCION CLIENTES


#INSERCION DE TIPOS DE PRODUCTO
insert into 1928_showroom.product_types(name_type)
		values ("remera");
insert into 1928_showroom.product_types(name_type)
		values ("jean");
insert into 1928_showroom.product_types(name_type)
		values ("sweater");
insert into 1928_showroom.product_types(name_type)
		values ("campera");
insert into 1928_showroom.product_types(name_type)
		values ("accesorio");
insert into 1928_showroom.product_types(name_type)
		values ("patanlon");
insert into 1928_showroom.product_types(name_type)
		values ("pollera");
insert into 1928_showroom.product_types(name_type)
		values ("vestido");
#FIN DE TIPOS DE PRODUCTO

# INSERCION DE TALLES
insert into 1928_showroom.product_sizes(name_size)
		values ("unico");
insert into 1928_showroom.product_sizes(name_size)
		values ("s");
insert into 1928_showroom.product_sizes(name_size)
		values ("m");
insert into 1928_showroom.product_sizes(name_size)
		values ("l");
insert into 1928_showroom.product_sizes(name_size)
		values ("xl");
insert into 1928_showroom.product_sizes(name_size)
		values ("xxl");
insert into 1928_showroom.product_sizes(name_size)
		values ("xxxl");
insert into 1928_showroom.product_sizes(name_size)
		values ("42");
insert into 1928_showroom.product_sizes(name_size)
		values ("44");
insert into 1928_showroom.product_sizes(name_size)
		values ("46");
insert into 1928_showroom.product_sizes(name_size)
		values ("48");
insert into 1928_showroom.product_sizes(name_size)
		values ("50");
insert into 1928_showroom.product_sizes(name_size)
		values ("52");
insert into 1928_showroom.product_sizes(name_size)
		values ("54");
insert into 1928_showroom.product_sizes(name_size)
		values ("56");
insert into 1928_showroom.product_sizes(name_size)
		values ("1");
insert into 1928_showroom.product_sizes(name_size)
		values ("2");
insert into 1928_showroom.product_sizes(name_size)
		values ("3");
insert into 1928_showroom.product_sizes(name_size)
		values ("4");
insert into 1928_showroom.product_sizes(name_size)
		values ("5");
insert into 1928_showroom.product_sizes(name_size)
		values ("6");
insert into 1928_showroom.product_sizes(name_size)
		values ("7");
insert into 1928_showroom.product_sizes(name_size)
		values ("8");
# FIN DE INSERCION DE TALLES

#INSERCION DE BENEFICIOS
insert into 1928_showroom.benefits(name_benefit , points_benefit)
		values ("descuento extra", 1000);
insert into 1928_showroom.benefits(name_benefit , points_benefit)
		values ("envio gratis", 1000);
insert into 1928_showroom.benefits(name_benefit , points_benefit)
		values ("accesorio regalo", 1500);
#FIN INSERCION BENEFICIOS

#INICIO INSERCION DE PUNTOS DE PRODUCTO
insert into 1928_showroom.product_points(amount_points  )
		values (25);
insert into 1928_showroom.product_points(amount_points  )
		values (50);
insert into 1928_showroom.product_points(amount_points  )
		values (75);       
insert into 1928_showroom.product_points(amount_points  )
		values (100);        
insert into 1928_showroom.product_points(amount_points  )
		values (125);        
insert into 1928_showroom.product_points(amount_points  )
		values (150);        
insert into 1928_showroom.product_points(amount_points  )
		values (175);        
insert into 1928_showroom.product_points(amount_points  )
		values (200);
#FIN INSERCION DE PUNTOS DE PRODUCTO

#INSERCION FORMAS DE PAGO
insert into 1928_showroom.payment_method(name_method)
		values ("efectivo");
insert into 1928_showroom.payment_method(name_method)
		values ("transferencia");        
insert into 1928_showroom.payment_method(name_method)
		values ("qr");        
insert into 1928_showroom.payment_method(name_method)
		values ("debito");        
insert into 1928_showroom.payment_method(name_method)
		values ("credito_1");
insert into 1928_showroom.payment_method(name_method)
		values ("credito_3");
insert into 1928_showroom.payment_method(name_method)
		values ("credito_6");        
insert into 1928_showroom.payment_method(name_method)
		values ("credito_9");        
insert into 1928_showroom.payment_method(name_method)
		values ("credito_12");          
#FIN FORMAS DE PAGO

#INSECION DE ESTADO DE ORDEN
insert into 1928_showroom.order_state(name_state)
		values ("abonada");  
insert into 1928_showroom.order_state(name_state)
		values ("pendiente");  
insert into 1928_showroom.order_state(name_state)
		values ("en proceso");  
insert into 1928_showroom.order_state(name_state)
		values ("cancelada");  
#FIN ESTADO DE ORDEN

#INSECION DE FORMAS DE ENVIO
insert into 1928_showroom.delivery_method(name_delivery,price_delivery)
		values ("retiro por el local", 0);
insert into 1928_showroom.delivery_method(name_delivery,price_delivery)
		values ("Envio a domicilio bahia" , 300);
insert into 1928_showroom.delivery_method(name_delivery,price_delivery)
		values ("Envio a domicilio otro" , 600);
#FIN INSERCION DE FORMAS DE ENVIO

#INSERCION CANTIDAD DE DESCUENTO
insert into 1928_showroom.discount(total_discount)
		values (0);
insert into 1928_showroom.discount(total_discount)
		values (5);        
insert into 1928_showroom.discount(total_discount)
		values (10);        
insert into 1928_showroom.discount(total_discount)
		values (15);        
insert into 1928_showroom.discount(total_discount)
		values (20);
insert into 1928_showroom.discount(total_discount)
		values (25);         
insert into 1928_showroom.discount(total_discount)
		values (30);
insert into 1928_showroom.discount(total_discount)
		values (35);         
insert into 1928_showroom.discount(total_discount)
		values (40);
insert into 1928_showroom.discount(total_discount)
		values (45);         
insert into 1928_showroom.discount(total_discount)
		values (50);        
#FIN CANTIDAD DE DESCUENTO

#INSERCION PRODUCTOS
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		2,
        "Jean Chupin",
        "Azul",
        6500 ,
        13,
        5 ,
        6,
        "Jean chupin color azul" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		2,
        "Jean Elastizado",
        "Negro",
        7000 ,
        12,
        2 ,
        6,
        "Jean elastizado color negro" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		2,
        "Jean Roturas",
        "Azul Oscuro",
        8500,
        14,
        2,
        6,
        "Jean con roturas color azul oscuro" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		2,
        "Jean MOM",
        "Celeste",
        9500,
        13,
        4,
        6,
        "Jean MOM color celeste" );

insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		1,
        "Remera Heart",
        "Gris",
        2650 ,
        7,
        2,
        2,
        "Remera gris estampa corazones" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		1,
        "Remera Paris",
        "Negro",
        3200 ,
        6,
        3,
        3,
        "Remera estampa paris color negra" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		1,
        "Remera amplia",
        "verde",
        3050 ,
        1,
        3,
        2,
        "Remera verde talle unico" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		1,
        "Remera flor",
        "blanco",
        2650 ,
        7,
        1,
        2,
        "Remera con estampa de flores color blanco" );

insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		3,
        "Sweater algodon",
        "Gris y Negro",
        5650 ,
        22,
        2,
        4,
        "Sweater de algodon dos colores" );

insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		3,
        "Sweater rayado",
        "blanco y rosa",
        5950 ,
        22,
        4,
        4,
        "Sweater tejido rayado blanco y rosa" );

insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		3,
        "Sweater amplio",
        "negro",
        5650 ,
        1,
        3,
        4,
        "Sweater talle unico , bien amplio color negro" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		3,
        "Sweater bremer",
        "naranja",
        6100 ,
        21,
        3,
        4,
        "Sweater de bremer color naranja" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		4,
        "Campera reversible",
        "Negro",
        12100 ,
        1,
        1,
        7,
        "Campera reversible polar colo negro , talle unico" );

insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		4,
        "Campera Plumas",
        "gris",
        15100 ,
        1,
        1,
        7,
        "Campera de pluma color gris , talle unico" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		5,
        "Anillo plata",
        "plata",
        1500 ,
        1,
        1,
        2,
        "Anillo plata liso" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		5,
        "Anillo oro",
        "oro",
        4500 ,
        1,
        1,
        2,
        "Anillo oro liso" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		5,
        "Anillo piedra",
        "plata",
        900 ,
        1,
        1,
        2,
        "Anillo plata con piedra" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		5,
        "collar dije",
        "plata",
        1200 ,
        1,
        1,
        2,
        "collar con dije" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		6,
        "Pantalon vestir",
        "negro",
        7500 ,
        14,
        2,
        6,
        "pantalon de vestir colo negro" );
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		6,
        "Pantalon algodon",
        "azul",
        7100 ,
        13,
        4,
        6,
        "pantalon joggin algodon color azul" );

insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		6,
        "Pantalon gabardina",
        "gris",
        7450 ,
        12,
        2,
        6,
        "pantalon gabardina chupin color gris" );

insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		7,
        "Pollera jean roturas",
        "celeste",
        5450 ,
        12,
        2,
        5,
        "Pollera de jean con roturas" );      
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		7,
        "Pollera engomada",
        "negra",
        5850 ,
        11,
        2,
        5,
        "Pollera engomada color negro" );   
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		7,
        "Pollera larga",
        "gris",
        5150 ,
        12,
        3,
        5,
        "Pollera larga liviana color gris" );   

insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		8,
        "Vestido corto",
        "negro",
		8000 ,
        22,
        2,
		8,
        "Vestido corto color negro" );   
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		8,
        "Vestido largo",
        "negro",
		9500 ,
        21,
        3,
		8,
        "Vestido largo color negro" );   
        
insert into product(type_product,title_product , color_product , price_product , size_product , stock_product , point_product , description_product)
		values (
		8,
        "Vestido bretel",
        "negro",
		10000 ,
        20,
        1,
		8,
        "Vestido corto de breteles color negro" );   
#FIN INSERCION PRODUCTOS

#INSERCION ORDENES
insert into orders(id_client, total_order , delivery_order , payment_order , discount_order , state_order, points_order, date_created_order, mesage_order)
		values(
        1,
        15000,
        1,
        1,
        3,
        1,
        260,
        "2022-09-09",
        "orden de compra ...."
        );

insert into orders(id_client, total_order , delivery_order , payment_order , discount_order , state_order, points_order, date_created_order, mesage_order)
		values(
        4,
        12000,
        2,
        2,
        3,
        1,
        200,
        "2022-05-24",
        "orden de compra ...."
        );
        
insert into orders(id_client, total_order , delivery_order , payment_order , discount_order , state_order, points_order, date_created_order, mesage_order)
		values(
        10,
        6000,
        1,
        3,
        3,
        1,
        50,
        "2022-01-15",
        "orden de compra ...."
        );
        
insert into orders(id_client, total_order , delivery_order , payment_order , discount_order , state_order, points_order, date_created_order, mesage_order)
		values(
		7,
        8550,
        1,
        1,
        3,
        1,
        150,
        "2022-04-15",
        "orden de compra ...."
        );
        
insert into orders(id_client, total_order , delivery_order , payment_order , discount_order , state_order, points_order, date_created_order, mesage_order)
		values(
        3,
        7600,
        1,
        6,
        4,
        1,
        100,
        "2021-06-10",
        "orden de compra ...."
        );
        
insert into orders(id_client, total_order , delivery_order , payment_order , discount_order , state_order, points_order, date_created_order, mesage_order)
		values(
        1,
        8400,
        1,
        1,
        3,
        1,
        120,
        "2022-10-14",
        "orden de compra ...."
        );
#FIN INSERCION ORDENES


# INSERCION HISTORIAL DE VENTAS
insert into sales_history(id_product , price_product , quantity_selected_product, id_client , id_order , date_sold )
		values(
			1,
            6500,
            1,
            1,
            1,
            "2022-09-09"
            ); 
insert into sales_history(id_product , price_product , quantity_selected_product, id_client , id_order , date_sold )
		values(
			7,
            3050,
            1,
            1,
            1,
            "2022-09-09"
            ); 
insert into sales_history(id_product , price_product , quantity_selected_product, id_client , id_order , date_sold )
		values(
			13,
            12100,
            1,
            1,
            1,
            "2022-09-09"
            ); 
insert into sales_history(id_product , price_product , quantity_selected_product, id_client , id_order , date_sold )
		values(
			9,
            5650,
            1,
            7,
            4,
            "2022-04-15"
            ); 
insert into sales_history(id_product , price_product , quantity_selected_product, id_client , id_order , date_sold )
		values(
			22,
            5450,
            1,
            7,
            4,
            "2022-04-15"
            ); 
insert into sales_history(id_product , price_product , quantity_selected_product, id_client , id_order , date_sold )
		values(
			16,
            4500,
            1,
            7,
            4,
            "2022-04-15"
            ); 
insert into sales_history(id_product , price_product , quantity_selected_product, id_client , id_order , date_sold )
		values(
			4,
            9500,
            2,
            3,
            6,
            "2021-06-10"
            ); 
insert into sales_history(id_product , price_product , quantity_selected_product, id_client , id_order , date_sold )
		values(
			19,
            7500,
            1,
            1,
            5,
            "2022-10-14"
            );
insert into sales_history(id_product , price_product , quantity_selected_product, id_client , id_order , date_sold )
		values(
			3,
            7000,
            1,
            1,
            5,
            "2022-10-14"
            );
# FIN INSERCION HISTORIAL DE VENTAS


# INSERCION BENEFICIOS CANJEADOS
insert into redeemed_benefits(id_client , id_benefit)
		values(
			1,
			1
            );

insert into redeemed_benefits(id_client , id_benefit)
		values(
			4,
			2
            );
#  FIN INSERCION BENEFICIOS CANJEADOS











