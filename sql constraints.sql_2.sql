CREATE TABLE workers(
                  workers_code int unique,
                  workers_name varchar(15) not null ,
                  workers_department varchar(20) default 'Genenral',
                  workers_joining_date date not null,
                  workers_age int check (workers_age > 18),
                  workers_salary decimal(10,2) check (workers_salary > 0));
                  
insert into workers(workers_code,
                  workers_name,
                  workers_department,
                  workers_joining_date,
                  workers_age,
                  workers_salary)
values
(101, 'John Doe',default, '2020-01-15', 28, 50000.50),
(102, 'Jane Smith', 'Finance', '2019-04-20', 30, 60000.00),
(103, 'Emily Clark', null, '2021-06-05', 28, 70000.75),
(104, 'Michael Brown', 'Operations', '2018-09-12', 35, 55000.10),
(105, 'Olivia Davis', 'Marketing', '2020-11-22', 27, 45000.30);    

select * from workers;

TRUNCATE WORKers;

ALTER TABLE workers MODIFY workers_code int auto_increment;

insert into workers (
                  workers_name,
                  workers_department,
                  workers_joining_date,
                  workers_age,
                  workers_salary)
values('John D','HR','2020-01-15',25,50000.50);

insert into workers (workers_name,workers_department,workers_joining_date,workers_age,workers_salary)values("johhul","IT","2020-01-15",19,52000.50);

insert into workers(workers_name,workers_department,workers_joining_date,workers_age,workers_salary)values("nabeel","manager","IT","2020-01-15",17,10000);

