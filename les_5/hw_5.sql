
--1
update users set created_at = now() where created_at is null;
update users set updated_at = now() where updated_at is null;

---------------------

--2
UPDATE users SET created_at = STR_TO_DATE(created_at, "%d.%m.%Y %k:%i");
UPDATE users SET updated_at = STR_TO_DATE(updated_at, "%d.%m.%Y %k:%i");

---------------------

--3
select id, name, value from storehouses_products  order by if (value = 0, 1, 0), value ;

---------------------

--4
select * from users where date_format((birthday, '%M') in ('may', 'august');

---------------------
---------------------
---------------------

--1
SELECT round(AVG(age), 0) FROM users;

---------------------

--2

---------------------

--3
select exp(sum(ln(value))) from catalog_new



