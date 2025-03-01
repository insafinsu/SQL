-- this is a single line comment
# another
/* multi
-  
line
*/
#CREAT DATABASE
CREATE DATABASE LLAI;
-- ACTIVE DATABASE
USE LLAI;
CREATE TABLE students (
						std_ID INT PRIMARY KEY,
                        std_NAME VARCHAR(30),
                        std_AGE INT,
                        GRADE VARCHAR(10)
                        );
create table employees (
                        Emp_code int primary key,
                        First_name varchar(10),
                        Last_name  varchar(10),
                        Emp_age int,
                        Emp_gender char,
                        Hire_date date,
                        Emp_salary int,
                        Dept_code int
                        );
-- add a column
alter table  students add email varchar(20); 

-- modify column
alter table students modify email varchar(30);

-- drop column
alter table students drop column GRADE; 

-- SHOW TABLE
SELECT * FROM students;

-- drop database
# drop database dbs_name;

-- truncate it removes onlu dataremoves
# truncate table students;

-- Rename table name
RENAME TABLE students to learners;

-- rename column name
alter table learners 
rename column email to email_Id;

-- add new column
alter table learners add grade varchar(2);

-- add values in column
insert into learners (std_ID,std_NAME,std_AGE,email_ID,grade)
VALUES
(1, "John Doe", 18, "john.doe@email.com", "A"),
(2, 'Emma Smith', 19, 'emma.smith@email.com', 'B'),
(3, 'Liam Johnson', 20, 'liam.johnson@email.com', 'A'),
(4, 'Olivia Brown', 21, 'olivia.brown@email.com', 'C'),
(5, 'Noah Williams', 22, 'noah.williams@email.com', 'B'),
(6, 'Ava Jones', 19, 'ava.jones@email.com', 'A'),
(7, 'James Garcia', 20, 'james.garcia@email.com', 'B'),
(8, 'Sophia Martinez', 18, 'sophia.martinez@email.com', 'C'),
(9, 'Benjamin Rodriguez', 21, 'benjamin.rodriguez@email.com', 'B'),
(10, 'Charlotte Davis', 20, 'charlotte.davis@email.com', 'A'),
(11, 'Mason Lopez', 22, 'mason.lopez@email.com', 'C'),
(12, 'Mia Hernandez', 19, 'mia.hernandez@email.com', 'B'),
(13, 'Elijah Gonzalez', 18, 'elijah.gonzalez@email.com', 'A'),
(14, 'Amelia Wilson', 20, 'amelia.wilson@email.com', 'B'),
(15, 'Lucas Anderson', 21, 'lucas.anderson@email.com', 'C'),
(16, 'Harper Thomas', 19, 'harper.thomas@email.com', 'A'),
(17, 'Ethan Taylor', 20, 'ethan.taylor@email.com', 'B'),
(18, 'Evelyn Moore', 22, 'evelyn.moore@email.com', 'C'),
(19, 'Alexander Jackson', 18, 'alexander.jackson@email.com', 'A'),
(20, 'Isabella Martin', 21, 'isabella.martin@email.com', 'B'),
(21, 'Daniel White', 20, 'daniel.white@email.com', 'A'),
(22, 'Scarlett Thompson', 19, 'scarlett.thompson@email.com', 'C'),
(23, 'Matthew Clark', 18, 'matthew.clark@email.com', 'B'),
(24, 'Avery Lewis', 21, 'avery.lewis@email.com', 'A'),
(25, 'Henry Hall', 22, 'henry.hall@email.com', 'C'),
(26, 'Emily Allen', 19, 'emily.allen@email.com', 'B'),
(27, 'Sebastian Young', 20, 'sebastian.young@email.com', 'A'),
(28, 'Madison King', 18, 'madison.king@email.com', 'B'),
(29, 'David Wright', 21, 'david.wright@email.com', 'C'),
(30, 'Ella Scott', 20, 'ella.scott@email.com', 'A');

SELECT * FROM learners;

-- INSERT
INSERT INTO learners(std_ID,std_NAME,std_AGE,email_ID,grade)
values(31, 'Joseph Green', 22, 'joseph.green@gmail.com', 'C'); 

-- update value
update learners
set grade='P'
where std_id=3;

UPDATE learners 
SET grade = 'E' 
WHERE std_AGE > 20;

-- Delete
delete from learners
where std_NAME = 'Ella Scott';

-- count
select count(std_AGE) as COOUNT from learners where std_AGE>20;

-- sum
select sum(std_AGE)  from learners;

-- avg
select avg(std_AGE)  from learners;

-- max
select max(std_AGE) from learners;

-- min
select min(std_AGE) from learners;

-- order by ascending
select std_AGE from learners order by std_AGE;

-- order by using desc 
select * from learners order by std_AGE desc ;

SELECT * FROM learners
WHERE std_AGE > 20
ORDER BY std_AGE DESC;

-- 
select count(std_AGE),grade from learners group by grade;
