--1
select abs(-25)
--2
select cos(45*3.14/180)
--3
select ceiling(13.65)
--4
select floor(13.45)
--5
select power(4,3)
--6
select round(125.383,2)
--7
select round(125.383,2)
--8
select sign(-10)
select sign(0)
select sign(10)
--9
select sqrt(49)
--10
select round(235.198,2,2)
--11
select round(235.198,-2,-2)

--new part
use lr10
--1
select char(78)
--2
select lastname + ' is a ' + title from humanresources.employees where empid = 7
--3
select upper('Белорусский государственный университет')
--4
select ltrim('   Минск')
--5
select lower('БЕЛОРУССКИЙ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ')
--6
select substring('УНИВЕРСИТЕТ',4,8)
--7
select * from DPROD where substring(descrip,1,10) = 'Телевизор'
--8
select * from DPROD where substring(descrip,1,20) = 'Телевизор Panasonic'
--9
select * from DPROD where substring(descrip,1,10) = 'Телевизор' and price < 300
--10
select replace('0123456789abcdefghijklmnopqrstuvwxyz ','n','N')

-- NEW PART

--1a
select CHARINDEX('OR',SUBSTRING('CORPORATE FLOOR',2,15))+2
select CHARINDEX('OR',SUBSTRING('CORPORATE FLOOR',3,15))+3
--1B
select CHARINDEX('OR',SUBSTRING('CORPORATE FLOOR',-3,15))+15-3
--2
select len('УНИВЕРСИТЕТ')

--new part

--1
select convert(varchar(10),hiredate) from HumanResources.Employees
select cast(hiredate AS varchar(10)) from HumanResources.Employees
--2
select year(hiredate) from HumanResources.Employees where deptno = 20
--3
set identity_insert HumanResources.Employees ON
insert into HumanResources.Employees(empid,lastname,firstname,title,titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,phone,mgrid,sal,comm,deptno)
 values(10,'Tylets','Pavel','ingeneer','Mr',convert(datetime,'18-07-1993'),convert(datetime,'23-09-19'),'pr G.Pravda','Minsk','Minsk','220000','BY','(555)555-55-55',10,6000,1500,10)
 set identity_insert HumanResources.Employees OFF
 --4
 select round(sal,2) from HumanResources.Employees

 -- new part

 --1
 select GETDATE(), DATEDIFF(day,getdate(),cast('30-11-19' as date))
 --2
 select mydate, datename(weekday,mydate)  from (select DATEADD(day,1,'2019-10-09') as mydate  union select DATEADD(day,2,'2019-10-09') 
 union select DATEADD(day,3,'2019-10-09') union select DATEADD(day,4,'2019-10-09') union select DATEADD(day,5,'2019-10-09')
  union select DATEADD(day,6,'2019-10-09') union select DATEADD(day,7,'2019-10-09')) as mydate2  where datename(weekday,mydate) = 'вторник'
--3
select DATEADD(year,2,hiredate) from HumanResources.Employees where title = 'Vice President, Sales'
 
 --new part

 --1
 select * from HumanResources.Employees where title in (select title from HumanResources.Employees where deptno = 10) and deptno != 10
 --2
 select firstname, title from HumanResources.Employees where deptno = (select deptno from HumanResources.Employees where lastname = 'Cameron')
 --3
 select firstname, title from HumanResources.Employees where deptno = (select deptno from HumanResources.Employees where lastname = 'Funk')
 
 --new part

 --1
 select max(hiredate) from HumanResources.Employees
 --2
 select max(sal) maximal, avg(sal) average,min(sal) minimal from HumanResources.Employees
 --3
 select max(sal) maximal, avg(sal) average,min(sal) minimal from HumanResources.Employees where deptno = 30
 --4
 select sum(sal) summary from HumanResources.Employees where deptno = 20
 --5
 select * from HumanResources.Employees where sal = (select min(sal) from HumanResources.Employees)
 --6
 select * from HumanResources.Employees where sal > (select avg(sal) from HumanResources.Employees) and deptno = 10
 --7
 select * from HumanResources.Employees where sal = (select max(sal) from HumanResources.Employees where deptno = 20) and deptno = 20
 --8
 select * from dbo.DPROD where price = (select max(price) from dbo.DPROD)
 --9
 select * from dbo.DPROD where price = (select max(price) from dbo.DPROD where descrip like 'Кроссовки%') and descrip like 'Кроссовки%'
 select * from dbo.DPROD where price = (select max(price) from dbo.DPROD where substring(descrip,1,9) = 'Кроссовки') and substring(descrip,1,9) = 'Кроссовки'
 --10
 select * from dbo.DPROD where price > (select avg(price) from dbo.DPROD)
 --11
 select sum(price) from dbo.DPROD
 --12
 select * from dbo.DPROD where price < (select avg(price) from dbo.DPROD where descrip like 'Телевизор SONY%') and descrip like 'Телевизор SONY%'

 --new part

 --1
 select avg(sal),title from HumanResources.Employees group by title
 --2
select max(sal), min(sal),title from HumanResources.Employees group by title
--3
select sum(sal),deptno from HumanResources.Employees group by deptno
--4
select firstname,DNAME, LOC from HumanResources.Employees e left join humanresources.dept d on e.deptno = d.deptno where comm is not NULL
--5
select * from HumanResources.Employees e left join humanresources.dept d on e.deptno = d.deptno where LOC ='NEW YORK'
--6
select sum(sal), d.DEPTNO from HumanResources.Employees e full join humanresources.dept d on e.deptno = d.deptno group by d.deptno
--7
select min(sal), max(sal) from HumanResources.Employees group by deptno having min(sal) < 1300 --меньше 1000 не было ни у одного отдела, поэтому меньше 1300
--8
select * from HumanResources.Employees e1 where sal = (select min(sal) from HumanResources.Employees e2 group by deptno having e1.deptno = e2.deptno) 
or sal = (select max(sal) from HumanResources.Employees e2 group by deptno having e1.deptno = e2.deptno)
--9
select * from HumanResources.Employees e1 where sal > (select avg(sal) from HumanResources.Employees e2 group by deptno having e1.deptno = e2.deptno) -- вариант, когда зп больше, чем средняя в ИХ отделе
select * from HumanResources.Employees e1 where sal > all (select avg(sal) from HumanResources.Employees e2 group by deptno) -- вариант, когда зп больше, чем средняя в ЛЮБОМ отделе