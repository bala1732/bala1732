create database employee_attendence1;
use employee_attendence1;

create table department1(
dept_id int primary key auto_increment,
dept_name varchar(40)
);

create table employees(
emp_id int primary key auto_increment,
emp_name varchar(200),
dept_id int,
date_of_joining date,
foreign key (dept_id) references depatrments(dept_id)
);

create table attendenceregister(
attendence_id int primary key auto_increment ,
emp_id int,
clockin_tine datetime,
clockout_time datetime,
officehours decimal(7, 3),
atteendence_date date,
foreign key (emp_id) references employees(emp_id)
 );
 
 create table leaverequest(
 leaverequest_id int primary key auto_increment,
 emp_id int,
 Leavetype varchar(60),
 leavestartdate date,
 leaveenddate date,
 leavestats varchar(55),
 foreign key (emp_id) references employees(emp_id)
 );
 
 insert into departmemts (dept_name) values ("senior managesr"),("technical managers"),
 ("assitant managers"), ("executive"),("shift engineers"),("supervisoours"),("mst"),
("bms"),("plumber"),("carpenter");
select * from the departments;

insert into  employees(emp_name , dept_id , date_of_joining) values ("ashok", 1,"2024-4-8"),
("satyan", 2, "2022-6-9"),
("parthasarathr",2,"2019-7-5"),
("boothalingam",3,"2029-4-11"),
("karhthi",4,"2018-69"),
("franchisbabu",4,"2018-6-8"),
("dharma",4,"2017-6-9"),
("dinesh",5,"2019-6-4"),
("sasi",5,"2019-3-8"),
("panneersellvam",5,"2018-3-9"),
("balamuniswaran",6,"2018-8-9"),
("mani",6,"2018-8-12"),
("som",6,"2019-5-8"),
("nithish",6,"2020-6-8"),
("azar",7,"2019-8-5"),
("mathan",7,"2028-9-8"),
("namekumar",7,"2021-5-6"),
("vivek",8,"2022-9-11"),
("rajesh",9,"2023-9-10");

select * from employees;

insert into attendenceregister(emp_id, clockin_time, clock_outtime , officehours, attendence_date )values
(1, '2024-22-12  09:00' , '2024-22-22 18:00', 9.00, '2025-22-12'),
(2, '2024-22-12  01:00' , '2024-22-22 21:00', 9.00, '2025-22-12'),
(2, '2024-22-12  09:00' , '2024-22-22 18:00', 9.00, '2025-22-12'),
(3, '2024-22-12  07:00' , '2024-22-22 16:00', 9.00, '2025-22-12'),
(4, '2024-22-12  09:00' , '2024-22-22 18:00', 9.00, '2025-22-12'),
(4, '2024-22-12  09:00' , '2024-22-22 18:00', 9.00, '2025-22-12'),
(5, '2024-22-12  06:00' , '2024-22-22 15:00', 9.00, '2025-22-12'),
(5 , '2024-22-12  09:00' , '2024-22-22 18:00', 9.00, '2025-22-12'),
(5 , '2024-22-12  13:00' , '2024-22-22 21:00', 9.00, '2025-22-12'),
(5 , '2024-22-12  21:00' , '2024-22-22 06:00', 9.00, '2025-22-12'),
(6, '2024-22-12  09:00' , '2024-22-22 18:00', 9.00, '2025-22-12'),
(6, '2024-22-12  21:00' , '2024-22-22 06:00', 9.00, '2025-22-12'),
 (6, '2024-22-12  09:00' , '2024-22-22 18:00', 9.00, '2025-22-12'),
 (7, '2024-22-12  09:00' , '2024-22-22 18:00', 9.00, '2025-22-12'),
 (7, '2024-22-12  21:00' , '2024-22-22 06:00', 9.00, '2025-22-12'),
 (7, '2024-22-12  09:00' , '2024-22-22 18:00', 9.00, '2025-22-12'),
(8 , '2024-22-12  09:00' , '2024-22-22 18:00', 9.00, '2025-22-12'),
(9, '2024-22-12  01:00' , '2024-22-22 21:00', 9.00, '2025-22-12');

select * from attendenceregister;

insert into leaverequest(emp_name,emp_id, leavereason , startdate , enddate ,noofdays, status) values
(1,'vacation', '2024-12-12', '2024-13-12', 'informed'),
(2,'noreason', '2024-2-12', '2024-2-12', 'not informed'),
(1,'sports', '2024-6-12', '2024-13-12', 'informed'),
(5,'wife maternity leae', '2024-12-12', '2024-13-12', 'not informed'),
(7,'tour in family', '2024-6-11', '2024-13-11', 'informed'),
(1,'annual leave', '2024-12-12', '2024-13-12', 'informed'),
(3,'monthly leave', '2024-10-10', '2024-13-10', 'informed'),
(4,'not resposible', '2024-9-12', '2024-10-12', 'not informed'),
(8,'fever', '2024-22-12', '2024-22-12', 'informed'),
(9,'anniversary', '2024-12-12', '2024-13-12', 'informed'),
(3,'marriage', '2024-12-12', '2024-13-12', 'not informed'),
(4,'accident leave', '2024-1-12', '2024-13-12', 'informed');
select * from leaverequest;
select

e.emp_name,
e.date_of_joining,
e.dept_name,
a.attendance_date,
clock_in time,
clock_out time,
officehours,
employee from e
join departments d on  e.dept_name= e.emp_name;

(select * from departments
where dept_id in (select employeesgroupbydept_id)
having count(emp_id>2)
);

drop table employee_attendence1;
drop table leaverequest;
drop table attendenceregister;

select * from employees inner join department on e.emp-id=e.emp_name;

alter table employees drop coloummname;
alter table employees add name varchar(50);



















