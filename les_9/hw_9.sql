-- 1
start transaction;
use shop;
DROP TABLE IF exists temp_users;
create table temp_users (select * from users where id = 1);
ALTER TABLE temp_users modify id bigint;
update temp_users set id = null;
commit;

start transaction;
insert into sample.users select * from shop.temp_users;
commit;

-- 2
create view name_prod as select products.name, catalogs.name from products p join catalogs c on p.cat_id = c.id;

-- -----------------

-- 1
delimiter //
drop function if exists hello //
create function hello ()
returns varchar(30) deterministic
begin
	declare t varchar(30);
	set t =
	(select 
	case
	  when (select date_format(now(), '%h:%i:%s') between str_to_date('06:00:00', '%h:%i:%s') and str_to_date('12:00:00', '%h:%i:%s')) then 'доброе утро'
	  when (select date_format(now(), '%h:%i:%s') between str_to_date('12:00:00', '%h:%i:%s') and str_to_date('18:00:00', '%h:%i:%s')) then 'добрый день'
	  when (select date_format(now(), '%h:%i:%s') between str_to_date('18:00:00', '%h:%i:%s') and str_to_date('23:59:59', '%h:%i:%s')) then 'добрый вечер'
	  when (select date_format(now(), '%h:%i:%s') between str_to_date('00:00:00', '%h:%i:%s') and str_to_date('06:00:00', '%h:%i:%s')) then 'доброй ночи'
	end);
	return (t);
end; //
delimiter ;

select hello();

-- 2
delimiter //
drop trigger if exists my_trigger//

create trigger my_trigger before update on products 
for each row
begin
	if
	new.name is null and new.description is null then SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE canceled';
	end if;
end//

delimiter ;


