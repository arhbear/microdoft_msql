use EDUCATION
select subj_id, SUBJ_NAME, KHOUR, SEMESTR from SUBJECT

select * from EXAM_MARKS
where SUBJ_ID = 22

select KURS, SURNAME, FNAME, STUDENT_ID, STIPEND, KURS, CITY, BIRTHDAY, UNIV_ID from STUDENT 

select SUBJ_NAME, KHOUR from SUBJECT where SEMESTR = 4

select distinct mark from EXAM_MARKS

select surname from STUDENT where KURS >= 3

select surname, fname from STUDENT where STIPEND > 140

select SUBJ_NAME from SUBJECT where KHOUR > 30

select * from UNIVERSITY where RAITING > 300

select surname, fname, kurs from STUDENT where (STIPEND >= 100 and CITY = 'Воронеж')

select * from student where stipend < 100 or STUDENT_ID > 100

select * from STUDENT where not (BIRTHDAY='5/11/1979' or STIPEND < 100) and STUDENT_ID < 12

select * from EXAM_MARKS where convert(date,EXAM_DATE,104) between convert(date,'20.01.1999',104) and convert(date,'10.01.1999',104)

select SUBJ_ID from EXAM_MARKS where STUDENT_ID = 12 or STUDENT_ID = 32

select SUBJ_NAME from SUBJECT where SUBJ_NAME like'и%'

select * from STUDENT where FNAME like'и%'  or FNAME like'с%'

select * from EXAM_MARKS where MARK is null

select * from EXAM_MARKS where MARK is not null
