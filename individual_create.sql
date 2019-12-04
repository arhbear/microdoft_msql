use master
go
drop database ed_org 
go
create database ed_org collate Cyrillic_General_CI_AS;
go
use ed_org;
go

create table Specializations(
spec_id int primary key check(spec_id > 0),
spec_name varchar(10));
go

create table Groups(
group_id int check(group_id > 0 and group_id < 5),
spec_id int,
course int check(course > 0 and course < 6)
primary key(group_id, spec_id),
foreign key(spec_id) references Specializations(spec_id));
go

create table Students(
student_id int primary key,
group_id int,
spec_id int,
f_name varchar(10) not null,
l_name varchar(20) not null,
foreign key(group_id,spec_id) references Groups(group_id,spec_id));
go

create table Subjects(
subj_id int not null primary key,
subj_name varchar(10) not null,
subj_h int check(subj_h >= 10 and subj_h <= 100 ));
go

create table Rooms(
room_id int primary key,
room_name varchar(10));
go

create table Teachers(
teach_id int primary key,
f_name varchar(10) not null,
l_name varchar(20) not null);
go

create table Timetable(
group_id int,
spec_id int,
subj_id int references Subjects(subj_id),
teach_id int references Teachers(teach_id),
room_id int references Rooms(room_id),
week_day varchar(3),
class_type varchar(3),
class_number int check(class_number <= 3),
foreign key(group_id,spec_id) references Groups(group_id,spec_id),
primary key(room_id, week_day, class_number));
go