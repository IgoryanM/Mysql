
-- Курсовая работа на примере видео сервиса Youtube, содержащая основной фуннкционал сервиса - видео, подписки, каналы, лайки.


drop database if exists youtube_db;

create database youtube_db;

use youtube_db;


-- пользователи --

drop table if exists users;
create table users(
    id serial primary key,
	firstname varchar(50),
	lastname varchar(50),
	email varchar(120) unique,
	phone varchar(20) unique,
	birtday date,
	hometown varchar(100),
	gender char(1),
	photo_id bigint unsigned,
	created_at datetime default now(),
	pass char(30)
);
create unique index email on users(email);


-- видео --

drop table if exists videos;
create table videos(
    id serial primary key,
    v_name varchar(150) not null,
    v_description text,
    user_id bigint unsigned not null,
    foreign key (user_id) references users(id)
    );
create index v_name on videos(v_name);
create index user_id on videos(user_id);


-- плейлисты --

drop table if exists playlists;
create table playlists(
    id serial primary key,
    pl_name varchar(150) not null,
    video_id bigint unsigned not null,
    foreign key (video_id) references videos(id)
    );
   

-- каналы пользователей --

drop table if exists channels;
create table channels(
    id serial primary key,
    ch_name varchar(50) not null,
    ch_description text,
    user_id bigint unsigned not null,
    created_at datetime default now(),
    foreign key (user_id) references users(id)
    );
   

-- история просмотров --

drop table if exists history;
create table history(
    id serial primary key,
    user_id bigint unsigned not null,
    video_id bigint unsigned not null,
    viewed_at datetime default now(),
    foreign key (video_id) references videos(id),
    foreign key (user_id) references users(id)
    );
   

-- подписки пользователей --

drop table if exists subscriptions;
create table subscriptions(
    id serial primary key,
    user_id bigint unsigned not null,
    channel_id bigint unsigned not null,
    created_at datetime default now(),
    foreign key (channel_id) references channels(id),
    foreign key (user_id) references users(id)
    );
create index user_id on subscriptions(user_id);
   

-- понравившиеся видео --

drop table if exists liked_videos;
create table liked_videos(
    id serial primary key,
    user_id bigint unsigned not null,
    video_id bigint unsigned not null,
    foreign key (video_id) references videos(id),
    foreign key (user_id) references users(id)
    );
   
   
-- загрузки пользователей --

drop table if exists downloads;
create table downloads(
    id serial primary key,
    user_id bigint unsigned not null,
    video_id bigint unsigned not null,
    downloaded_at datetime default now(),
    foreign key (video_id) references videos(id),
    foreign key (user_id) references users(id)
    );
   
 
-- комментарии --

drop table if exists comments;
create table comments (
	id serial primary key,
	user_id bigint unsigned not null,
	video_id bigint unsigned not null,
	comment text,
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp on update current_timestamp,
	foreign key (user_id) references users(id),
	foreign key (video_id) references videos(id)
);


-- лайки --

drop table if exists likes;
create table likes(
    id serial primary key,
    video_id bigint unsigned not null,
    comment_id bigint unsigned not null,
    user_id bigint unsigned not null,
    foreign key (user_id) references users(id),
    foreign key (video_id) references videos(id),
    foreign key (comment_id) references comments(id)
    );
   

-- аватарки пользователей --

drop table if exists photos;
create table photos(
	id serial primary key,
	filename varchar(255),
	user_id bigint unsigned not null,
	created_at datetime default current_timestamp,
	foreign key (user_id) references users(id)
);
   

-- настройки профиля --

drop table if exists settings;
create table settings(
	user_id serial primary key,
	subscription_paid boolean,
	can_comment ENUM('all', 'subscribers', 'nobody'),
	can_see_subscriptions ENUM('all', 'subscribers', 'nobody'),
	foreign key (user_id) references users(id)
);

