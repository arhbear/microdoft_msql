use EDUCATION
select 'фамилия', surname, 'имя', fname,100 from STUDENT
select SURNAME,fname,stipend,-(STIPEND*KURS)/2 from STUDENT where KURS = 4 and STIPEND > 0
select surname + ' ' + fname, stipend from STUDENT where kurs = 4 and stipend > 0
select lower (surname), upper (fname) from STUDENT where kurs = 4 and STIPEND > 0
select SUBSTRING(fname,1,1)+' '+surname, city, len(city) from student where kurs in(2,3,4) and stipend > 0
select surname, charindex('ров',surname) as one, substring(surname,charindex('ров', surname),3) as two from STUDENT
select upper(STUDENT_ID) + char(59) + ' ' + upper(SURNAME) + char(59) + ' ' + upper(fname) + char(59) + ' ' + upper(STIPEND) + char(59) +  ' ' + upper(KURS) + char(59) from STUDENT
select (left(fname,1) + char(46) + surname + char(58) + 'местожительства' + char(45) + city + char(59) + 'родился' + char(45) + BIRTHDAY) as svedenia from STUDENT where CITY is not null and BIRTHDAY is not null
select fname + ' ' + surname +  ' родился в' + right(BIRTHDAY,4) + ' году' from STUDENT where KURS in (1,2,4)
select surname, fname, stipend * 100 as stipend from STUDENT
declare @myval decimal (5,2)
set @myval = 193.57
select cast(@myval as decimal(10,5))
select convert(varchar(6), @myval)
select surname,fname,birthday,convert(smalldatetime,birthday) from STUDENT
select surname,birthday,datediff(year,convert(smalldatetime,birthday),getdate()) as vozrast from STUDENT