create database coffeeshop;

use coffeeshop;

create table customers (
cust_id int Primary Key auto_increment,
cust_name varchar(20) Not Null,
date_of_birth  Date,
email_id varchar(25) Unique Key,
contact_no varchar(15) Unique Key,
address varchar(20) Not Null,
postal_code varchar(20) Not Null,
created_at timestamp default current_timestamp,
preferred_language varchar(20) Not Null Default 'English',
special_request Text Not Null,
last_order_date Date );




