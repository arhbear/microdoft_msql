use lab8

insert into S(dealer_id, last_name, raiting, city) values ('S1', 'Смит', 20, 'Лондон');
insert into S(dealer_id, last_name, raiting, city) values ('S2', 'Джонс', 10, 'Париж');
insert into S(dealer_id, last_name, raiting, city) values ('S3', 'Блейк', 30, 'Париж');
insert into S(dealer_id, last_name, raiting, city) values ('S4', 'Кларк', 20, 'Лондон');
insert into S(dealer_id, last_name, raiting, city) values ('S5', 'Адамс', 30, 'Афины');

insert into P(detail_id, name, color, mass, city) values ('P1', 'Гайка', 'Красный', 12, 'Лондон');
insert into P(detail_id, name, color, mass, city) values ('P2', 'Болт', 'Зеленый', 17, 'Париж');
insert into P(detail_id, name, color, mass, city) values ('P3', 'Винт', 'Голубой', 17, 'Рим');
insert into P(detail_id, name, color, mass, city) values ('P4', 'Винт', 'Красный', 14, 'Лондон');
insert into P(detail_id, name, color, mass, city) values ('P5', 'Кулачок', 'Голубой', 12, 'Париж');
insert into P(detail_id, name, color, mass, city) values ('P6', 'Блюм', 'Красный', 19, 'Лондон');

insert into J(product_id, name, city) values ('J1', 'Жесткий диск', 'Париж');
insert into J(product_id, name, city) values ('J2', 'Перфоратор', 'Рим');
insert into J(product_id, name, city) values ('J3', 'Считыватель', 'Афины');
insert into J(product_id, name, city) values ('J4', 'Принтер', 'Афины');
insert into J(product_id, name, city) values ('J5', 'Флоппи-диск', 'Лондон');
insert into J(product_id, name, city) values ('J6', 'Терминал', 'Осло');
insert into J(product_id, name, city) values ('J7', 'Лента', 'Лондон');

insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S1','P1','J1',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S1','P1','J4',700)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J1',400)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J2',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J3',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J4',500)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J5',600)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J6',400)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P3','J7',800)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S2','P5','J2',100)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S3','P3','J1',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S3','P4','J2',500)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S4','P6','J3',300)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S4','P6','J7',300)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P2','J2',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P2','J4',100)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P5','J5',500)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P5','J7',100)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P6','J2',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P1','J4',100)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P3','J4',200)
insert into SPJ(dealer_id,detail_id,product_id,quantity)values('S5','P4','J4',800)