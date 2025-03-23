-- Travel Agency

-- creating database 
create database travel_agency;

-- to use the database for queries 
use travel_agency;
 
 -- to see all the databases;
 show  databases;
 
 -- to delete the whole database
 drop database travel_agency;
 
 -- CREATION OF TABLES AND INSERTION OF RECORDS 
 
 -- TABLE 1 :- CUSTOMERS
 -- stores the information about the customer
create table customers (
    cust_id int primary key auto_increment, -- it is unique for all the cust and there will be automatic increment of the id's
    first_name varchar(100) Not Null, -- first name of the customer
    last_name varchar(100) Not Null, -- last name of the customer
    date_of_birth Date Not Null, -- date of birth of the customer
    email_id varchar(100) unique key Not Null, -- email id which will be unique for all the cutomers
    phone_number varchar(15) unique key Not Null,  -- phone no which will be unique
    aadhar_card_number VARCHAR(20) unique key Not Null); -- to confirm customer identity
    
-- INSERTING RECORDS INTO CUSTOMERS

insert into customers (first_name, last_name, date_of_birth, email_id, phone_number, aadhar_card_number) values
('Mansi', 'Jadhav', '2003-03-17', 'mansij@gmail,com', '9876543456', '214-545-678'),
('Kasturi', 'Jadhav', '2007-05-10', 'kasturij@gmail,com', '8765445656', '231-876-087'),
('Sakshi', 'Chavan', '1990-03-16', 'sakshic@gmail,com', '9876545678', '275-853-127'),
('Sanjay', 'Yadav', '2000-08-15', 'sanjayy@gmail,com', '9875443456', '251-871-987'),
('Sai', 'Patil', '1997-09-15', 'saip@gmail,com', '8765456721', '281-806-877'),
('Shraddha', 'Tembe', '1998-04-18', 'shraddhat@gmail,com', '9876518290', '211-776-787'),
('Arpita', 'Mojar', '2010-03-29', 'arpitam@gmail,com', '9824352617', '221-776-187'),
('Sayali', 'Sawant', '2013-02-16', 'sayalis@gmail,com', '8362567892', '221-676-887'),
('Siddhi', 'Gambre', '2005-09-15', 'siddhig@gmail,com', '9826352617', '241-876-887'),
('Priyanka', 'Giri', '2008-06-15', 'priyankag@gmail,com', '9835263728', '211-876-087');

    
 -- TABLE 2 :- TRIP
 -- stores the information about the trip 
    create table trip (
    trip_id int primary key auto_increment, -- it is unique for all the trip
    destination varchar(100) Not Null, -- place where will the trip will go
    departure_date date Not Null, -- date of departure
    return_date date Not Null,  -- return date 
    price_per_person decimal(10, 2) Not Null, -- price of the person 
    available_seats int Not Null, -- seats available 
    description_of_Journey TEXT Not Null); -- information about the trip


-- INSERTING RECORDS INTO TRIP

insert into trip (destination, departure_date, return_date, price_per_person, available_seats, description_of_Journey) values
('USA', '2025-03-25', '2025-03-30', 5000, 41, 'Great aborad to go'),
('Kerala', '2025-03-25', '2025-04-01', 4500, 15, 'To see the paintings'),
('Singapore', '2025-03-26', '2025-04-01', 3500, 20, 'Great place'),
('Amirstar', '2025-04-03', '2025-04-09', 2300, 15, 'Golden Temple'),
('Manali', '2025-04-07', '2025-04-15', 1200, 43, 'To play with ice'),
('Jammu Kashmir', '2025-04-12', '2025-04-19',1287, 46, 'temples and border'),
('China', '2025-04-15', '2025-04-21', 1287, 24, 'products manufacture'),
('Africa', '2025-04-17', '2025-04-22', 2400, 38, 'aborad place'),
('Japan', '2025-04-14', '2025-04-17', 2500, 13, 'great spots to go'),
('Ireland', '2025-03-24', '2025-04-01', 9000, 42, 'city of it');


 -- TABLE 3 :- Bookings
 -- stores information about the booking done by customers
create table bookings (
    booking_id int primary key auto_increment, -- it is unique for all the bookings
    customer_id int, 
    trip_id int, 
    booking_date date, -- date when the booking is done for trip
    number_of_people int, -- no of people which will go for trip
    total_price decimal(10, 2), -- total amount of the trip
    status varchar(20) check (status in ('pending', 'confirmed', 'cancelled')), -- status about the trip
    foreign key (customer_id) references customers(cust_id),
	foreign key (trip_id) references trip(trip_id));


-- INSERTING RECORDS INTO BOOKINGS

insert into bookings (customer_id, trip_id, booking_date, number_of_people, total_price, status) values
(9, 7, '2025-03-13', 2, 20000, 'cancelled'),
(4, 8, '2025-03-11', 1, 90000, 'pending'),
(6, 10, '2025-02-26', 2, 40000, 'cancelled'),
(2, 9, '2025-03-20', 2, 60000, 'pending'),
(4, 10, '2025-03-11', 3,50000, 'pending'),
(5, 2, '2025-03-11', 3, 30000, 'confirmed'),
(3, 8, '2025-02-21', 4, 84000, 'cancelled'),
(8, 1, '2025-03-16', 2, 25000, 'pending'),
(5, 6, '2025-02-22', 1, 67000, 'pending'),
(6, 5, '2025-02-27', 3, 32000, 'confirmed');

-- to see the structure of the table
desc customers;

-- to see all the tables
show tables;

-- to drop the table
drop table customers;

-- to remove all rows from table but keep structure
truncate table customers;

-- Queries

-- DDl,DMl,DQL,TCL,OPERATORS,INDEXING,CLAUSE AND COMMANDS, CASCADES ALL BAISC COMMANDS

-- 1 add  a new column to trip table 
alter table trip add column trip_type varchar(50);

-- 2 rename column phone_number to contact_number in customers table 
alter table customers rename column phone_number to contact_number;

-- 3 drop a column from trip table 
alter table trip drop column trip_type;

-- 4 create an index on email_id 
create index idx_email on customers(email_id);

-- 5 to remove all rows from table but keep structure
truncate table customers;

-- 6 update trip price
update trip set price_per_person = price_per_person + 500 where destination = 'Manali';

-- 7 delete customers born before 1995 
delete from customers where date_of_birth < '1995-01-01';

-- 8 insert a new customer 
insert into customers (first_name, last_name, date_of_birth, email_id, contact_number, aadhar_card_number)
values ('Ravi', 'Patel', '1995-07-19', 'ravipatel@gmail.com', '9998887776', '111-222-333');

-- 9 insert a new booking 
insert into bookings (customer_id, trip_id, booking_date, number_of_people, total_price, status)
values (1, 2, '2025-03-20', 2, 9000, 'confirmed');


-- 11 select all customers 
select * from customers;

-- 12 using concat
select concat(first_name, ' ', last_name) AS full_name FROM customers;

-- 13 find trips with price > 3000 and seats > 20 
select * from trip
where price_per_person > 3000 and available_seats > 20;

-- 14 get average trip price 
select avg (price_per_person) as avg_price from trip;

-- 15 group bookings by status 
select status, COUNT(*) as total_bookings from bookings group by status;

 -- 16 like command
select * from customers where  email_id like '%@gmail.com';

-- 17 transaction control - rollback 
start transaction;
delete from customers where cust_id = 5;
rollback;

-- 18 add on delete cascade
alter table bookings
drop foreign key bookings_ibfk_1,
add constraint fk_customer foreign key (customer_id) references customers(cust_id) on delete cascade;

-- 19 Use between and like
select * from customers where date_of_birth between '2000-01-01' and '2010-12-31' and email_id like '%gmail%';

-- 20 Order and limit trip results 
select destination, price_per_person from trip order by price_per_person desc limit 5;

-- 21 like command
select * from customers where first_name like 'R%';

 -- 22 like command
select * from customers where  email_id like '%@gmail.com';



-- FUNCTIONS AND BUILT IN USER DEFINED

 -- 1 using upper
select upper(first_name) as first_name_upper from customers;

 -- 2 using len function
select first_name, length(first_name) as name_length from customers;

-- 3 round function
select salary, round(salary, -3) as rounded_salary from customers;

-- 4 trips in year 2025
select * from trip where month(departure_date) = 3 and year(departure_date) = 2025;

-- 5 extract year from table
select first_name, year(date_of_birth) as d0b from customers;

-- 6 give current date
select * from trip where departure_date > curdate();

-- 7 returns the full name of a customer by combining their first and last name.
delimiter //
create function get_full_name(custID int)
returns varchar(200)
deterministic
begin
    declare fullName varchar(200);
    select concat(first_name, ' ', last_name) into fullName
    from customers
    where cust_id = custID;
    return fullName;
end;//
delimiter ;

-- 8
delimiter //
create function  get_trip_days(tripID int)
returns int
deterministic
begin
    declare days int;
    select datediff(return_date, departure_date) into days
    from trip
    where trip_id = tripID;
    return days;
end;//
delimiter ;

-- 9 Total Price per Person in Each Booking
select booking_id, total_price, number_of_people,(total_price / number_of_people) as price_per_person from bookings;

-- 10  customers Born in the Year 2000
select first_name, last_name, date_of_birth from customers where year(date_of_birth) = 2000;

select * from customers;


-- VIEWS AND CTE

-- 1 Customers Who Have Never Booked a Trip
with no_bookings as (select c.* from customers c
left join bookings b on c.cust_id = b.customer_id where b.booking_id is null )
select * from no_bookings;

-- 2 Revenue Per TripConfirmed
with trip_revenue as (
select t.trip_id,t.destination,sum(b.total_price) as total_revenue from trip t
join bookings b on t.trip_id = b.trip_id where b.status = 'confirmed' group by t.trip_id, t.destination)
SELECT * FROM trip_revenue;

-- 3 Most Expensive Trips
create view top_expensive_trips as
select * from trip order by price_per_person desc limit 5;

-- 4 Upcoming Trips After Today
create view upcoming_trips as select * from trip where departure_date >current_date();
 

-- 5 Customer Age Calculation View
create view customer_ages as
select cust_id,first_name,last_name,year(CURDATE()) - year(date_of_birth) as age from customers;


-- STORED PROCEDURE

-- 1 

DELIMITER $$

create procedure GetCustomerTrips(in custId int)
begin
    select b.booking_id,t.destination,t.departure_date,t.return_date,b.number_of_people,b.total_price,b.status
    from bookings b
    join trip t on b.trip_id = t.trip_id
    where b.customer_id = custId;
end $$

DELIMITER ;

-- Now call the procedure
call GetCustomerTrips(5);


-- TRIGGERS

DELIMITER //

create trigger calculate_total_price_before_insert before insert on bookings for each row begin
    declare trip_price decimal(10,2);

    -- Get the price_per_person from the trip table
    select price_per_person into trip_price from trip where trip_id = new.trip_id;
END; //

DELIMITER ;



-- WINDOW FUNCTIONS

-- 1 booking count by customer
select customer_id,COUNT(*) as total_bookings,rank() over (order by COUNT(*) desc) as booking_rank from bookings group by customer_id;

-- 2 total of bookings by date
select booking_date,COUNT(*) as daily_bookings,SUM(COUNT(*)) over (order by  booking_date) as running_total from bookings group by booking_date;

-- 3 amount spent by each customer
select customer_id,total_price,SUM(total_price) over (PARTITION BY customer_id) as total_spent from bookings;

-- 4 Show each trip with average price
select trip_id,total_price,avg(total_price) over (PARTITION BY trip_id) as avg_trip_price from bookings;


-- JOINS AND ALIAS

-- 1
select t.destination, count(b.booking_id) as total_bookings
from trip t left join bookings b on t.trip_id = b.trip_id group by t.destination;

-- 2
select t.destination, SUM(b.total_price) as total_revenue
from trip t right join bookings b on t.trip_id = b.trip_id
where b.status = 'confirmed' group by t.destination;

-- 3
select t.destination, count(b.booking_id) as total_bookings
from trip t cross join bookings b on t.trip_id = b.trip_id group by t.destination;


-- 4 
select t.destination, SUM(b.total_price) as total_revenue
from trip t left join bookings b on t.trip_id = b.trip_id
where b.status = 'confirmed' group by t.destination;

-- 5 
select  b.booking_id,CONCAT(c.first_name, ' ', c.last_name) AS customer_name,t.destination,b.booking_date,b.number_of_people,b.total_price,b.status
from bookings as b
join customers as c on b.customer_id = c.cust_id
join trip as t on b.trip_id = t.trip_id;



-- SUBQUERIES

-- 1 customers who have made at least one booking
select first_name, last_name from customers where cust_id in ( select customer_id from bookings);

-- 2 trips that have never been booked
select destination from trip
where trip_id not in (select trip_id from bookings);

-- 3 customer(s) who spent the most on a single booking
select first_name, last_name, total_price from customers
where cust_id = (select customer_id from bookings order by total_price desc limit 1);

-- 4 customers whose bookings are still pending
select first_name, last_name from customers where cust_id in (select customer_id from bookings where status = 'pending');

-- 5 trips with the highest number of people booked
select destination from trip where trip_id = 
(select trip_id from bookings order by number_of_people desc limit 1);








