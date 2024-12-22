
-- Creating database Library
create database library;

-- to use the db to work on it
use library;

-- delete database
drop database library;

-- to see all the databases 
show databases;

-- creating tables 

-- TABLE 1
create table books
(book_id int Primary Key auto_increment, book_name char(25) Unique Key,
author_name varchar(15) Not Null,copies_of_books_available int Not Null,book_available varchar(15) Not Null);

-- delete the table 
drop table books;

-- inserting values in the table

insert into books (book_name,author_name,copies_of_books_available,book_available) values
('English','Sanjay Jadhav','2','yes'),
('Hindi','Sakshi Parab','4','No'),
('Nature of Beauty','Kasturi Sawant','7','yes'),
('The kerala Story','Sai chavan','4','yes'),
('Economics','Sourabh Patil','5','No');

-- to see the data stored in table
select * from books;

-- TABLE 2 
create table members
(id int Primary Key auto_increment,name char(20) Not Null,address varchar(15) Not Null,
phone_number varchar(15) Not Null,join_date DATE Not Null);

insert into members (name,address,phone_number,join_date) values
('gunjan','Bhandup','9876543456','2024-09-14'),
('shraddha','powai','9876653456','2023-01-19'),
('mayur','thane','9878543456','2024-12-1'),
('ram','kalyan','9887643456','2023-05-11'),
('ritesh','kalwa','9876553456','2023-07-20');

drop table members;

select * from members;


-- TABLE 3
create table transaction
(id int Primary Key auto_increment,member_id int,book_id int,amount varchar(15) Not Null,
issue_date date Not Null,return_date DATE Not Null,foreign key(member_id) references members(id),
foreign key(book_id) references books(book_id));

insert into transaction (amount,issue_date,return_date) values
('200','2024-04-14','2024-04-20'),
('500','2023-03-14','2023-03-20'),
('700','2024-06-14','2024-06-20'),
('300','2024-04-1','2024-04-8'),
('900','2022-04-14','2024-04-20');


drop table transaction;

-- TABLE 4
create table library_staff
(staff_id int Primary Key auto_increment,name char(20) Not Null,address varchar(15) Not Null,
phone_number varchar(15) Not Null,salary varchar(15));

insert into library_staff(name,address,phone_number,salary) values
('ritesh','thane','9876554356','40000'),
('mithesh','powai','9876645656','35000'),
('siddhi','thane','9878987456','25000'),
('kalyani','kalyan','9327643456','50000'),
('snehal','kalwa','9876576556','38000');

select * from library_staff;

-- TABLE 5
create table reviews
(id int Primary Key auto_increment,book_id int,member_id int,reviews TEXT Not Null,
Ratings varchar(10) Not Null,review_date Date Not Null,foreign key(member_id) references members(id),
foreign key(book_id) references books(book_id));

insert into reviews (reviews,ratings,review_date) values
('Good Book Must try','4 on 5','2024-04-20'),
('Better book to read','3 on 5','2023-03-20'),
('Must make the concept clear to understand otherwise good','2 on 5','2024-06-20'),
('Excellent Story','5 on 5','2024-04-8'),
('Good Concepts easy to understand','4 on 5','2024-04-20');

select * from reviews;

show tables;

-- select query to check book with id 4
select * from books where book_id=4;

select * from reviews;



-- to count number of members
select count(*) from members;


-- using like command
select * from books where book_name like 'E%';
truncate table books;
drop table books;
 create database if not exists authors;
 drop database if  exists authors;







