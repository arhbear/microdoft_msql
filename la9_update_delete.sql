use lab9
select * from CPU
select * from HDD
select * from Monitor
update CPU set price = price * 0.95 where model = 'Celeron' and firm = 'Intel'
update CPU set price = price * 0.95 where model = 'Duron' and firm = 'AMD'
update HDD set price = price * 1.05 where firm = 'IBM'
update Monitor set price = price * 1.10 where diagonal = 17
delete from computer where CPU in (select code from cpu where frequency < 800)
delete from CPU where frequency < 800
delete from computer where monitor in (select code from monitor where diagonal = 15)
delete from Monitor where diagonal = 15

