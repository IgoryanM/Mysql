-- 2
select user_id, count(*) total_messages from (select
	case 
	    when to_user_id = 5 then from_user_id 
   		when from_user_id = 5 then to_user_id 
   	end
 	as user_id from messages)
 	
as total where user_id in 

(select initiator_user_id from friend_requests fr1 where target_user_id = 5 and status='approved'
union
select target_user_id from friend_requests fr2 where initiator_user_id = 5 and status='approved')

group by user_id;

-- --------------------

-- 3
select id, birtday from users u order by unix_timestamp(STR_TO_DATE(birtday, '%d-%m-%Y') ) asc

-- --------------------

-- 4
select gender, count(*) from likes l
join 
users u on l.user_id = u.id 
group by gender order by count(*) desc ;

-- --------------------

















