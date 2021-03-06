drop database EDUCATION;
go
create database EDUCATION collate Cyrillic_General_CI_AS;
go
use EDUCATION;
go

create table UNIVERSITY
(UNIV_ID int PRIMARY KEY,
 UNIV_NAME char(5) NOT NULL,
 RAITING INT,
 CITY varchar(20));
    go                                                                                                                                                                                                                                                             
insert into UNIVERSITY values(10,'ВГУ',296,'Воронеж');
insert into UNIVERSITY values(11,'НГУ',345,'Новосибирск');
insert into UNIVERSITY values(14,'БГУ',326,'Белгород');
insert into UNIVERSITY values(15,'ТГУ',368,'Томск');
insert into UNIVERSITY values(18,'ВГМА',327,'Воронеж');
insert into UNIVERSITY values(22,'МГУ',606,'Москва');
insert into UNIVERSITY values(32,'РГУ',416,'Ростов');
go
create table STUDENT
(STUDENT_ID int PRIMARY KEY,
 SURNAME varchar(20),
 FNAME varchar(12),
 STIPEND numeric(10,0),
 KURS int NOT NULL,
 CITY varchar(20),
 BIRTHDAY varchar(10),
 UNIV_ID int references UNIVERSITY(UNIV_ID));
go
----STUDENT------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into STUDENT values(1,'Иванов','Иван',150,1,'Орел','3\12\1982',10);
insert into STUDENT values(3,'Пертров','Петр',200,3,'Курск','1\12\1980',10);
insert into STUDENT values(6,'Сидоров','Вадим',150,4,'Москва','7\16\1979',22);
insert into STUDENT values(10,'Кузнецов','Борис',0,2,'Брянск','8\12\1981',10);
insert into STUDENT values(12,'Зайцева','Ольга',250,2,'Липецк','1\05\1982',10);
insert into STUDENT values(32,'Котов','Павел',150,5,'Белгород','5\11\1979',10);
insert into STUDENT values(55,'Белкин','Вадим',250,5,'Воронеж',NULL,14);
insert into STUDENT values(265,'Павлов','Андрей',0,3,'Воронеж','1\12\1981',10);
go

create table LECTURER
(LECTURER_ID int PRIMARY KEY,
 SURNAME varchar(20) NOT NULL,
 [NAME] varchar(20),
 CITY varchar(20),
 UNIV_ID int references UNIVERSITY(UNIV_ID));
                                                                                                                                                                                                                                                                 
----LECTURER------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into LECTURER values(24,'Колесников','Борис','Воронеж',10);
insert into LECTURER values(46,'Никонов','Иван','Воронеж',10);
insert into LECTURER values(74,'Лагутин','Павел','Москва',22);
insert into LECTURER values(108,'Струков','Николай','Москва',22);
insert into LECTURER values(276,'Николаев','Виктор','Воронеж',10);
insert into LECTURER values(328,'Сорокин','Андрей','Орел',10);
go

create table SUBJECT
(SUBJ_ID int PRIMARY KEY,
 SUBJ_NAME varchar(20) NOT NULL,
 KHOUR int,
 SEMESTR int);

   go                                                                                                                                                                                                                                                              
----SUBJECT------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into SUBJECT values(10,'Информатика',56,1);
insert into SUBJECT values(22,'Физика',34,1);
insert into SUBJECT values(43,'Математика',56,2);
insert into SUBJECT values(56,'История',34,4);
insert into SUBJECT values(73,'Физкультура',34,5);
insert into SUBJECT values(94,'Англиский',56,3);
go


create table SUBJ_LECT
(SUBJ_ID int references subject(subj_ID),
 LECTURER_ID int references LECTURER(LECTURER_ID));
go
insert into subj_lect values(10,24);
insert into subj_lect values(22,46);
insert into subj_lect values(94,74);
insert into subj_lect values(43,108);
insert into subj_lect values(56,276);
insert into subj_lect values(73,328);
go
create table EXAM_MARKS
(EXAM_ID int PRIMARY KEY,
 STUDENT_ID int references student(student_ID),
 SUBJ_ID int references subject(subj_ID),
 MARK int,
 EXAM_DATE varchar(10))
go
----EXAM_MARKS------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into EXAM_MARKS values(34,32,10,4,'12/01/2000');
insert into EXAM_MARKS values(43,6,22,4,'23/01/2000');
insert into EXAM_MARKS values(75,55,10,5,'05/01/2000');
insert into EXAM_MARKS values(145,12,10,5,'17/06/1999');
insert into EXAM_MARKS values(238,12,22,3,'22/06/1999');
insert into EXAM_MARKS values(639,55,22,NULL,'18/01/2000');
go
