-- 1
select user_id from orders group by user_id;

-- ------------------

-- 2
select p.name prod_name, c.name cat_name from products p
join catalogs c
on p.catalog_id = c.id;

-- ------------------

-- 3

select fr.id, fr.f_from, c.name as f_to from (
select fl.id, c.name as f_from, fl.f_to from flights fl
join cities c
on fl.f_from = c.label) fr
join cities c
on fr.f_to = c.label order by id;