-- creating database 
create database grocery_shop;

-- using the database to exceute the queries
use grocery_shop;

-- drop database
drop database grocery_shop;

-- to see the databases created
show databases;

-- using exists and not exists
create database if not exists shop;


-- creating tables
-- Table 1 of customer table
create table customers(cust_id int Primary Key auto_increment , name varchar(15) Not Null , 
location varchar(25) Not Null, contact varchar(15) Unique Key , email varchar(25) Unique Key);

-- inserting values in Table customers
insert into customers (name,location,contact,email) values 
('Mansi', 'Bhandup','987654345678','mansi@gmail.com'),
('kasturi', 'powai','9876543234','kasturi@gmail.com'),
('sanjay', 'thane','8765434567','sanjay@gmail.com'),
('sakshi', 'kalwa','98765432323','sakshi@gmail.com'),
('sai', 'mulund','9876545678','sai@gmail.com');

-- to see the tables 
show tables;

-- to drop the table
drop table customers;

-- to see the description of the table
desc customers;

-- Queries

-- Retrieve all records
select * from customers;

-- Retrieve specific columns
select name, location from customers;

-- Retrieve customers from a specific location
select * from customers where location = 'powai';

-- Rename the table
rename table customers to customerdetails;

-- -- Delete a specific record
delete from customers where name = 'sanjay';

-- Delete all records
delete from customers;

-- Update  customer's location
update customers set location = 'Thane' where name = 'Mansi';

-- Update  columns
update customers set contact = '9876549999', email = 'mansi.new@gmail.com' where name = 'Mansi';

--  enable safe update mode
SET SQL_SAFE_UPDATES = 1;

-- disable safe update mode
SET SQL_SAFE_UPDATES = 0

-- Add a new column
alter table customers add column age int;

-- Modify the data type of a column
alter table customers modify column contact varchar(20);

-- Drop a column
alter table customers drop column age;


-- Table 2 products
create table products (product_id int Primary Key auto_increment,name varchar(15) Not Null, price varchar(15)
Not Null,product_available varchar(15) Not Null);

-- to delete all the records
truncate table products;


-- inserting the records
insert into products (name, price, product_available) values
('Apple', '100', 'Yes'),
('Milk', '45', 'Yes'),
('Bread', '15', 'No'),
('Eggs', '50', 'Yes'),
('Banana', '50', 'Yes');

-- Retrieve all records
select * from products;

-- Retrieve specific products that are available
select name, price from products where product_available = 'Yes';

-- Rename the table
rename table products to product_inventory;


-- Delete a specific product
delete from products where name = 'Milk';

-- Delete all records
delete from products;

-- Update the price of a product
update products set price = '120' where name = 'Apple';

-- product as unavailable
update products set product_available = 'No' where name = 'Banana';

desc products;

-- Modify the data type 
alter table products modify column price decimal(10, 2);

-- Drop a column
alter table products drop column price;

desc products;


-- table 3 
create table orders (order_id int primary key,cust_id int, product_id int, orderdate date Not Null,
totalamount varchar(15) Not Null,status varchar(15) Not Null,foreign key (cust_id) references customers (cust_id) on update cascade,
foreign key (product_id) references products (product_id) On delete cascade);

-- inserting values 
insert into orders (order_id,orderdate, totalamount, status)values
(1,'2024-12-01', '50', 'Completed'),
(2,'2024-12-02', '70', 'Pending'),
(3,'2024-12-03', '45', 'Completed'),
(4,'2024-12-04', '80', 'Cancelled'),
(5, '2024-12-05', '100', 'Completed');

-- Insert sample data into orders
insert into orders (order_id,orderdate, totalamount, status)values
(9,'2024-12-01', '100.00', 'Completed');


-- Modify the data type 
alter table orders modify column status char(15);