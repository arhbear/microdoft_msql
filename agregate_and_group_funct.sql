use EDUCATION

select count(STUDENT_ID) from EXAM_MARKS where SUBJ_ID = 22
select count(distinct(SUBJ_ID)) from EXAM_MARKS
select STUDENT_ID,max(MARK) from EXAM_MARKS group by STUDENT_ID
select min(surname) from STUDENT where SURNAME like 'È%'
select SUBJ_NAME, max(semestr) as semestr from SUBJECT group by SUBJ_NAME
select EXAM_DATE, count(STUDENT_ID) as st_count from EXAM_MARKS group by EXAM_DATE
select AVG(MARK) as average_mark, SUBJ_ID from EXAM_MARKS group by SUBJ_ID
select AVG(MARK) as average_mark, STUDENT_ID from EXAM_MARKS group by STUDENT_ID
select AVG(MARK) as average_mark, EXAM_ID from EXAM_MARKS group by EXAM_ID
select count(STUDENT_ID) as st_c, EXAM_ID from EXAM_MARKS where mark is not null group by EXAM_ID 
select count(SUBJ_ID) as subj_c, semestr from SUBJECT group by SEMESTR
select STUDENT_ID, SURNAME, STIPEND*1.2 as stipend from STUDENT order by stipend
select STUDENT_ID, SURNAME, STIPEND*1.2 as stipend from STUDENT order by SURNAME
select STUDENT_ID, max(mark) as max_mark, min(mark) as min_mark from EXAM_MARKS group by STUDENT_ID
select SEMESTR, SUBJ_NAME, SUBJ_ID from SUBJECT order by SEMESTR
select SEMESTR, SUBJ_NAME, SUBJ_ID from SUBJECT order by KHOUR
select SUM(mark) as mark_sum, exam_date from EXAM_MARKS group by EXAM_DATE order by mark_sum desc
select AVG(mark) as avg_mark, EXAM_DATE from EXAM_MARKS group by exam_date
select min(mark) as min_mark, EXAM_DATE from EXAM_MARKS group by exam_date
select max(mark) as max_mark, EXAM_DATE from EXAM_MARKS group by exam_date
