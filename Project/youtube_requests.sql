use youtube_db;

-- ��� �����, user_id = 10
select * from videos where user_id = 10;


-- ��� ��������, user_id = 10
select firstname, lastname, ch_name from users u
join (select s.user_id, ch_name from subscriptions s
join channels c on s.channel_id = c.id) temp on u.id = temp.user_id where u.id = 10;


-- ������ �������������
select firstname, lastname, ch_name from users u
join channels c on u.id = c.user_id order by firstname;


-- ���������� �������� � �������������
select firstname, lastname, count(*) as total_subscriptions from users u
join subscriptions s on u.id = s.user_id group by u.id;


-- ���������� ����������� � ������
select channel_id, ch_name, count(*) as total_subscribers from subscriptions s
join channels c on s.channel_id = c.id group by channel_id;


-- �������������
create or replace view my_subscriptions as select 
firstname, lastname, ch_name from users u
join (select s.user_id, ch_name from subscriptions s
join channels c on s.channel_id = c.id) temp on u.id = temp.user_id where u.id = 10;

create or replace view total_subscribers as 
select channel_id, ch_name, count(*) as total_subscribers from subscriptions s
join channels c on s.channel_id = c.id group by channel_id;


-- ������� ���������� ������������ ����� � ������� downloads
drop trigger new_video;
delimiter //
create trigger new_video after insert on videos for each row 
begin
insert into downloads (user_id, video_id, downloaded_at) values (new.user_id, new.id, now()); 
end;
delimiter ;

-- insert into videos (id, v_name, v_description, user_id) values (null, 'name', 'description', 10)
-- -----

-- �������� ��������� ��� 5 ����� �� ������
drop procedure top_5;
delimiter //
create procedure top_5()
begin
	select video_id as top_5, count(*) as total_likes from likes group by video_id order by total_likes desc;
end//
delimiter ;

call top_5() 


