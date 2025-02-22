-- Creating Databases 
create database company;

-- using the database 
use company;

-- deleting the table
drop database company;

-- to show all the databases 
show databases;

-- Creating the tables
create table emp(emp_id Int Primary Key auto_increment,first_name varchar(20) Not Null,last_name varchar(20) Not Null,address varchar(20) Not Null,phone_no varchar(20) Unique Key);

create table department (dept_id int,dept_name varchar(20) not null,position varchar(20) not null,manager_id int not null,roll_description varchar(500),constraint fk_manager 
foreign key (manager_id) references emp(emp_id),foreign key (dept_id) references emp(emp_id));

-- deleting the table 
drop table department;



-- inserting data into the table emp
insert into emp(first_name,last_name,address,phone_no) values 
('Mansi','Jadhav','Bhandup',9876543456) ,
('Kasturi','Jadhav','nahur',9874323456) ,
('Sakshi','Chavan','Thane',9876543432) ,
('pranay','tembe','Virar',9876543556) ,
('shreya','mahadik','Panvel',9876512356) ,
('shruti','mali','Sion',9877893456) ,
('harshal','dongare','Chembur',9877653456) ,
('shobha','shinde','Mulund',9870983456) ,
('manoj','yadav','Vashi',9871323456) ,
('Manali','Sawant','Kanjur',9876657456) ;


drop table department;

create table department (dept_id int,dept_name varchar(20) not null,position varchar(20) not null,role_description varchar(500),foreign key (dept_id) references emp(emp_id));

desc department;

-- inserting values
insert into department  values
(1,'Db','Senior Level','Retrieving the data using querie'),
(2,'Dba','Junior Level','Cleaning the data'),
(3,'Tester','Senior Level','Finding out the bugs which are on large scale'),
(4,'Tester','Junior Level','Checking the database if the function works or not'),
(5,'Hr','Senior Level','Taking the interview'),
(6,'SME','Senior Level','Guiding the emp in the company'),
(7,'It enginner','Junior Level','Helps if any issues happen in the system'),
(8,'Db Enginner','Senior Level','Cleaning the data which is raw'),
(9,'Hr','Junior Level','Shortlisting the resume of the candidates'),
(10,'Db Enginner','Junior Level','After cleaning the data by seniors it performs some queries'); 

-- fetching the data from the table
select * from emp;

-- display the structure of the table
desc emp;


-- Command and Clauses

-- Extracting data using where clause
select * from emp where emp_id = 1;

-- fetching all the data
select * from department;

-- add col in table emp
alter table emp add salary varchar(20);

-- update the values in the tables
update emp set first_name = 'Manish' where emp_id =1;

-- using count
select dept_name, COUNT(*) as total_employees from department group by dept_name;

-- Operators on the given database 

-- updating the values 
select  emp_id, first_name, emp_id + 10 as updates_id from emp;

-- using arthemetic operator
select * from emp where emp_id > 5;

-- using like operator
select * from emp where first_name like 'M%';

-- checking for null values
select * from emp where salary is null;

-- using between operator
select * from emp where emp_id between 3 and 7;

-- Built in and user defined function

-- Joins and alias

-- using left joins on table to get left side data
select e.emp_id, e.first_name, d.dept_name from emp e left join  department d on e.emp_id = d.dept_id;

-- subqueries

select emp_id, first_name from emp where emp_id in (select dept_id from department);


-- view and cte 

create view emp_dept as select e.emp_id, e.first_name, d.dept_name from  emp e join department d on e.emp_id = d.dept_id;

truncate table 




