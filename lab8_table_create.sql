use master
drop database lab8
go
create database lab8
go

use lab8
create table S(
dealer_id varchar(6) primary key,
last_name varchar(20),
raiting int,
city varchar(20))

create table P(
detail_id varchar(6) primary key,
name varchar(20),
color varchar(20),
mass int,
city varchar(20))

create table J(
product_id varchar(6) primary key,
name varchar(20),
city varchar(20))

create table SPJ(
dealer_id varchar(6) references S(dealer_id),
detail_id varchar(6) references P(detail_id),
product_id varchar(6) references J(product_id),
quantity int,
primary key(dealer_id, detail_id, product_id))