use lab9
go
--1
CREATE INDEX  i_monitor  ON  computer(monitor);
select * from Computer where Firm = 'SONY'
--2
CREATE INDEX  i_resolution  ON  monitor(height,width);
select * from Monitor where width = 1024 and height = 768
--3
drop index  i_resolution  ON  monitor
--4
create table order_tab(
order_code decimal(5),
order_f varchar(15),
computer_model varchar(10),
prod_f varchar(10),
quantity decimal(4),
price decimal(8,2));

CREATE CLUSTERED INDEX
c_order_code ON order_tab(order_code);

insert into order_tab (order_code,order_f,computer_model,prod_f,quantity,price) values (1, 'firm1','C-3','Compaq',4,1000)
insert into order_tab (order_code,order_f,computer_model,prod_f,quantity,price) values (2, 'firm2','C-4','Compaq',4,1100)

select * from order_tab where order_code = 1