use lab8
--1
select detail_id, sum(quantity) quantity from SPJ group by detail_id
--2
select distinct(detail_id) from spj where dealer_id = 'S1'
--3
select dealer_id, last_name from s where dealer_id in (select dealer_id from spj where product_id in (select product_id from spj where detail_id = 'P1' and quantity > (select avg(quantity) from spj group by detail_id having detail_id = 'P1')))
--4
select sum(quantity) quantity from spj group by detail_id, dealer_id having detail_id = 'P1' and dealer_id = 'S1'
--5
select detail_id from spj where dealer_id in (select dealer_id from s where city = 'Лондон') and product_id in (select product_id from j where city = 'Лондон')
--6
select dealer_id, last_name from s where dealer_id in (select dealer_id from spj group by dealer_id having count(distinct(detail_id)) = 1)
--7
select count(product_id) product_count from spj where dealer_id = 'S1'
--8
select distinct(product_id) from spj where dealer_id in (select dealer_id where detail_id in (select detail_id from p where color = 'Красный'))
--9
select * from spj where quantity >= 300 and quantity <= 750
--10
update s set raiting = raiting + 10 where raiting < (select raiting from s where dealer_id = 'S4')
select * from s
--11
select distinct(color), city from p
--12
insert s(dealer_id, last_name, city) values ('S10', 'Уайт', 'Нью-Йорк')
select * from s
--13
delete from spj where product_id in (select product_id from j where city ='Рим')
delete from j where city ='Рим'
--14
select distinct(s1.city) from (select city from s union all select city from p union all select city from j) s1
--15
update p set color = 'Желтый' where mass < 15 and color = 'Красный' 
select * from p
--16
select product_id, city from j where city like '_о%'