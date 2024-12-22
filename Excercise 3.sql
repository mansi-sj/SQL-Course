-- 1. What is a data type? Give two examples.

-- Category of the value
-- defines th type of data that can be stored in column of table
-- Essential for ensuring data integrity and optimizing storage

-- Examples are :-
-- 1 String :- (i) varcahar - Variable length Character String
-- (ii) char - Fixed length character string

-- 2 Numeric :- (i) int - Stores Integer
-- (ii) float :- stores approximate floating-point numbers


-- 2. What is the purpose of constraints in a database?

-- use to specify the rules and restrictions for the data in table
-- ensures the accuuracy and realiability of the data in table
-- defines how the data in table behaves and to maintain quality of the database
-- to manage redundancy 

-- 1 Enforce data accuracy
-- constraints ensure only valid and accurate data is entered into the db
-- eg check can enforce that a salary column only contains positive values

-- 2 Protect Against Logical errors
/* restricts invalid operations such as entering a duplicate value in column with a 
 Unique Constraint */

-- 3 Enhance security
/* help protects sensitive data by ensuring only proper values are stored, reducing the chances
of accidential or malicious errors */

-- 4 reduce redundancy and save storage
/* constraints like unique or primary key prevent duplicate records thereby reducing data 
redundancy and saving storage space */


-- 3. Define the PRIMARY KEY constraint.
-- that uniquely identifues each row in that table and cannot have same primary key
-- cannot contain NULL values becaue every row must have unique and valid identifier
-- ensures data integrity by preventing duplicate or null values 


-- 4. What is the difference between CHAR and VARCHAR data types?

-- 1 STORAGE BEHAVIOR

-- CHAR
-- fixed-length
-- always uses the defined space even if the actual value is shorter 
-- eg char(10) will always use 10 bytes padding with space if the value is shorter 
-- Mansi so it will 10 bytes with spaces

-- VARCHAR
-- uses only the spaces required for the actual value plus 1 or 2 bytes
-- eg varcahar(10) storing mansi with 5 bytes plus 1 or 2 byte for length

-- 2 PERFORMANCE

-- char
-- faster for fixed length data because it does not need to calculate the length
-- useful when data is consistently the same length eg country codes

-- varcahar
-- most storage efficient foe variable length data but slightly slower due to need for length calculations
-- ideal for data varying length eg name,address,names


-- 5. Write a SQL query to select all authors from the Authors table.

create database authors;
use authors;

drop database authors;
create table authors_info(
author_id int Primary Key,name char(25) Not Null,Nationality varchar(15) Not NUll,birth_year 
varchar(10) Not Null);

drop table authors_info;

insert into authors_info values
(1,'Jane Austen','British',1775),
(2,'Rabindranath Tagore','Indian',1941),
(3,'Haruki Murakami','Japanese',1949),
(4,'Mark Twain','American',1953);


select name from authors_info;

-- 6. What does the NOT NULL constraint do?

-- ensures that column cannot contain NULL values.
-- helps maintain data integrity by preventing incomplete or missing data
-- guarantees that col has value
-- This enforces a field to always contain a value, which means that you cannot insert a 
-- new record, or update a record without adding a value to this field.

-- create table publised
create table published (
    published_id INT PRIMARY KEY AUTO_INCREMENT, 
    authors_name VARCHAR(50) NOT NULL,         
    published_date DATE NOT NULL,  
    book_name TEXT  Not Null,
    country VARCHAR(30)); 
    
    drop table published;
    
-- inserting values in table published
    insert into published (authors_name, published_date, book_name, country) values
('J.K. Rowling', '2020-01-12', 'Harry Potter and the Philosopher\'s Stone', 'United Kingdom'),
('George R.R. Martin', '2024-01-20', 'A Game of Thrones', 'United States'),
('Yuval Noah Harari', '2020-01-04', 'Sapiens: A Brief History of Humankind', 'Israel'),
('Jane Austen', '2018-01-28', 'Pride and Prejudice', 'United Kingdom'),
('Dan Brown', '2023-01-15', 'The Da Vinci Code', 'United States');

drop table published;


-- 7. Write a SQL query to find all books published after January 1, 2020.

select * from published where published_date > '2020-01-01';

-- 8. Explain the purpose of the FOREIGN KEY constraint.

-- used to prevent actions that would destroy links between tables.
/* It ensures that the values in a column (or group of columns) of one table match the values in a column of 
another table, which is usually the primary key of the referenced table */

-- 1. Maintain Relationship Between Tables

/* defines a relationship between two tables by linking a column in one table to the primary key 
in another. 
Example: A transactions table may reference the id column of a members table to identify which member 
performed a transaction. */


-- 2. Improved Data Organization
-- The FOREIGN KEY helps normalize data by organizing related data into separate tables, reducing redundancy.


-- 9. Write a SQL query to count the number of books in the Books table.
select count(*) from published book_name;

-- 10. What is the purpose of the CHECK constraint? Provide an example.

-- The CHECK constraint is used to limit the value range that can be placed in a column.

-- If you define a CHECK constraint on a column it will allow only certain values for this column.

/* If you define a CHECK constraint on a table it can limit the values in certain columns based on values in 
other columns in the row. */

-- 1 Data Validation

/* Ensures that only valid data is entered into a table, reducing errors and ensuring data consistency.
Example: Ensuring that an age column only accepts values greater than or equal to 0.
Business Rule Enforcement */

-- 2. Business Rule Enforcement
/* Enforces specific business rules at the database level, ensuring that invalid data cannot be stored.
Example: Ensuring that salaries are greater than a minimum threshold.
Automatic Validation */

-- 3 Automatic Validation
/* The CHECK constraint automatically validates data during INSERT or UPDATE operations without requiring 
additional application-level validation. */




