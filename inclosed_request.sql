use EDUCATION
select * from EXAM_MARKS where STUDENT_ID = (select STUDENT_ID from STUDENT where SURNAME = 'Зайцева' and FNAME = 'Ольга')
select * from EXAM_MARKS where STUDENT_ID in (select STUDENT_ID from STUDENT where CITY = 'Воронеж')
select count(STUDENT_ID) as st_c, AVG(mark) from EXAM_MARKS group by STUDENT_ID having avg(mark) > (select avg(mark) from EXAM_MARKS where STUDENT_ID = 12)
select * from SUBJECT su where '23/01/2000' in (select exam_date from EXAM_MARKS ex where su.SUBJ_ID = ex.SUBJ_ID)
select * from STUDENT st1 where STIPEND > (select avg(STIPEND) from student st2 group by KURS having st1.KURS = st2.KURS)
SELECT EXAM_DATE, SUM(MARK) FROM EXAM_MARKS A GROUP BY EXAM_DATE HAVING 10 > (SELECT COUNT(MARK) FROM EXAM_MARKS  В  WHERE A.EXAM_DATE = В.EXAM_DATE)
SELECT STUDENT_ID FROM EXAM_MARKS A WHERE EXISTS (SELECT * FROM EXAM_MARKS B WHERE MARK < 3 AND B.STUDENT_ID = A.STUDENT_ID)
SELECT  DISTINCT SUBJ_ID FROM EXAM_MARKS A WHERE EXISTS (SELECT * FROM EXAM_MARKS B WHERE A.SUBJ_ID=B.SUBJ_ID AND A.STUDENT_ID<>B.STUDENT_ID)
SELECT * FROM STUDENT S WHERE CITY = ANY (SELECT CITY FROM UNIVERSITY U WHERE U.UNIV_ID = S.UNIV_ID)
SELECT DISTINCT STUDENT_ID FROM EXAM_MARKS WHERE MARK > ANY (SELECT MARK FROM EXAM_MARKS WHERE EXAM_DATE = '18/01/2000')
SELECT * FROM UNIVERSITY WHERE RAITING > ALL (SELECT RAITING FROM UNIVERSITY WHERE CITY = 'Воронеж')
SELECT * FROM UNIVERSITY WHERE RAITING > ANY (SELECT RAITING FROM UNIVERSITY WHERE CITY = 'New York');
SELECT * FROM UNIVERSITY WHERE RAITING > ALL (SELECT RAITING FROM UNIVERSITY WHERE CITY = 'New York');
SELECT * FROM UNIVERSITY WHERE RAITING < ANY (SELECT RAITING FROM UNIVERSITY WHERE CITY = 'Москва'); 
SELECT * FROM UNIVERSITY A WHERE NOT EXISTS (SELECT * FROM UNIVERSITY B WHERE A.RAITING >= B.RAITING AND B.CITY = 'Москва')
SELECT * FROM  UNIVERSITY A WHERE 1 > (SELECT COUNT (*) FROM UNIVERSITY В WHERE A.RAITING > = B.RAITING AND B.CITY = 'Москва') -- не работает


select MARK, STUDENT_ID from EXAM_MARKS where STUDENT_ID = (SELECT STUDENT_ID from STUDENT where SURNAME like 'Котов') --оказалось, у студента иванова нет оценок, поэтому он был заменен на котова

select FNAME from STUDENT where student_id = (select student_id from exam_marks where mark > (select avg(MARK * 1.0) from EXAM_MARKS group by SUBJ_ID having SUBJ_ID = 22) and SUBJ_ID = 22)

select FNAME from STUDENT where student_id = (select student_id from exam_marks where mark < (select avg(MARK * 1.0) from EXAM_MARKS group by SUBJ_ID having SUBJ_ID = 22) and SUBJ_ID = 22)

select count(distinct subj_id) from exam_marks where STUDENT_ID in (select student_id from exam_marks group by STUDENT_ID having count(subj_id) > 1) -- никто не сдавал больше 3 экзаменов, поэтому порог был уменьшен до 1
select student_id from exam_marks group by STUDENT_ID having count(subj_id) > 1
select * from EXAM_MARKS

select student_id, fname from student a where stipend in (select max(stipend) from STUDENT b group by CITY having a.city = b.city)

select distinct CITY from STUDENT where city <> all (select city from UNIVERSITY)
