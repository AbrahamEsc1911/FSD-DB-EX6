create database flights;

use flights;

create table user (
id int primary key auto_increment not null,
name varchar(50) not null,
is_active boolean default true,
email varchar(70) unique not null,
phone int
);

create table flights (
id int primary key auto_increment not null,
airline_name varchar(70) not null,
from_city varchar(20),
destination varchar(20)
);

create table reservations (
id int primary key auto_increment not null,
user_id int,
foreign key (user_id) references user(id),
flights_id int,
foreign key (flights_id) references flights(id),
created_at datetime default current_timestamp,
due_date datetime
);

create table notifications (
id int primary key auto_increment not null,
user_id int,
foreign key (user_id) references user(id),
flights_id int,
foreign key (flights_id) references flights(id),
description text,
created_at datetime default current_timestamp
);