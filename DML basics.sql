create table workers(workers_code int unique,workers_name varchar(20) not null,workers_department varchar(20) default "General",
                     workers_joining_date date not null,workers_age int check(workers_age>18),workers_salary decimal(10,2) check(workers_salary>0));
                     
                   

insert into workers values(101, 'John Doe',default, '2020-01-15', 28, 50000.50),
(102, 'Jane Smith', 'Finance', '2019-04-20', 30, 60000.00),
(103, 'Emily Clark', null, '2021-06-05', 28, 70000.75),
(104, 'Michael Brown', 'Operations', '2018-09-12', 35, 55000.10),
(105, 'Olivia Davis', 'Marketing', '2020-11-22', 27, 45000.30);

select * from workers;

update workers set workers_salary=100000 where workers_code = 101;

update workers set workers_salary=300000 where workers_code = 105;

update workers set workers_salary=500000 where workers_department = 'Finance';

set sql_safe_updates = 0;

update workers set workers_age=20;

update workers set employees_ststus ='Active';

update workers set employees_ststus = 'Inactive' where  workers_code=105;

delete from workers where workers_code=104;

alter table workers rename column employees_ststus to workers_status;