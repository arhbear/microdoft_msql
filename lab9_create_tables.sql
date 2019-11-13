use master
drop database lab9
go
create database lab9
go

use lab9
create table CPU(
Code decimal(3) primary key,
Model varchar(10) not null,
Firm varchar(20) not null,
Frequency decimal(4) check(Frequency>600  and Frequency<3000),
Price decimal(4) check(Price > 0)) 
go

create table HDD(
Code decimal(3) primary key,
Firm varchar(20) not null,
Capacity decimal(3) check(Capacity>= 20 and Capacity<200),
Price decimal(4) check(Price > 0),
unique(Firm,Capacity))
go

create table Monitor(
Code decimal(3) primary key,
Firm varchar(20) not null,
Model varchar(10) unique,
Diagonal decimal(2) check(Diagonal>= 15 and Diagonal< 30),
Dot_pitch decimal(3,2) check(Dot_pitch>=0.2 and Dot_pitch< 0.3),
Width decimal(4) check(Width>= 800 and Width< 2000),
Height decimal(4) check(Height>= 600 and Height< 2000),
Price decimal(4) check(Price > 0))
go

create table Computer(
Model varchar(10),
Firm varchar(10),
CPU decimal(3) references CPU(Code) ,
HDD decimal(3) references HDD(Code),
Monitor decimal(3) references Monitor(Code),
primary key(Model,Firm))
go