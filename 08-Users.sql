#CREACION DEL USER_1 CON PERMISOS DE LECTURA SOBRE LA TABLA VIEW DE PRODUCTOS
create user if not exists 'user_1' @'localhost' identified by '123456';

#QUITAR TODOS LOS PERMISOS
revoke all privileges on *.*
from
	'user_1' @'localhost';

#DAR TODOS LOS PERMISOS
grant all on *.* to 'user_1' @'localhost';

show grants for user_1 @localhost;

#Creacion de 2 usuarios nuevos
create user if not exists 'user_2' @'localhost' identified by '123456';

create user if not exists 'user_3' @'localhost' identified by 'abcdef';

#permisos de ver , insertar y modificar a los 2 nuevos usuarios
grant
select
,
insert
,
update
	on 1928_showroom.* to 'user_2' @'localhost',
	'user_3' @'localhost';

show grants for user_2 @localhost;

show grants for user_3 @localhost;
