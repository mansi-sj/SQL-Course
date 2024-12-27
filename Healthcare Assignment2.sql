create database healthcare_system;

drop database healthcare_system;

use healthcare_system;

create table patients (patient_id int Primary Key , Name varchar(15) Not Null, age varchar(15) Not Null 
check (age > 0 and age < 120),Gender varchar(15) Not Null, Contact varchar(11) Unique Key , 
address varchar(25) Not Null);

insert into patients values
(1,'Mansi','21','Female','9876543456','Bhandup'),
(2, 'Jane Smith', '28', 'Female', '1234567891', '456 Elm St'),
(3, 'Alice Brown', '40', 'Female', '1234567892', '789 Oak St'),
(4, 'Bob White', '50', 'Male', '1234567893', '101 Maple Ave'),
(5, 'Charlie Green', '23', 'Male', '1234567894', '202 Birch Ln'),
(6, 'Diana Black', '31', 'Female', '1234567895', '303 Pine Rd'),
(7, 'Eve Adams', '29', 'Female', '1234567896', '404 Cedar St'),
(8, 'Frank Hill', '45', 'Male', '1234567897', '505 Walnut Ave'),
(9, 'Grace Lee', '36', 'Female', '1234567898', '606 Cherry Blvd'),
(10, 'Hank Wilson', '39', 'Male', '1234567899', '707 Spruce Ct');

create table doctors (doctors_id int Primary Key , Name varchar(15) Not Null, Specialty varchar(15) Not Null, 
email varchar(25) Not Null, Contact varchar(11) Unique Key);

drop table doctors;

INSERT INTO Doctors (doctors_id, Name, Specialty, email, Contact)
VALUES
(1, 'John Smith', 'Cardiology', 'john.smith@med.com', '1234567890'),
(2, 'Alice Brown', 'Neurology', 'alice.brown@med.com', '1234567891'),
(3, 'Robert White', 'Pediatrics', 'robert.white@med.com', '1234567892'),
(4, 'Emily Davis', 'Orthopedics', 'emily.davis@med.com', '1234567893'),
(5, 'Michael Black', 'Dermatology', 'michael.black@med.com', '1234567894'),
(6, 'Laura Green', 'Oncology', 'laura.green@med.com', '1234567895'),
(7, 'James Hill', 'Radiology', 'james.hill@med.com', '1234567896'),
(8, 'Sophia Adams', 'Gynecology', 'sophia.adams@med.com', '1234567897'),
(9, 'David Wilson', 'Urology', 'david.wilson@med.com', '1234567898'),
(10, 'Olivia Johnson', 'Psychiatry', 'olivia.johnson@med.com', '1234567899');

create table appointments (appointments_id int Primary Key , patient_ID int , doctor_ID int,
Date_time datetime Null,Status varchar(15) Not Null, foreign key (patient_ID) references patients
(patient_id),foreign key (doctor_ID) references doctors (doctors_id));

INSERT INTO Appointments (appointments_id, patient_ID, doctor_ID, Date_time, Status)
VALUES
(1, 1, 1, '2024-01-05 09:00:00', 'Scheduled'),
(2, 2, 1, '2024-01-05 10:00:00', 'Scheduled'),
(3, 3, 2, '2024-01-06 11:00:00', 'Completed'),
(4, 4, 3, '2024-01-07 12:30:00', 'Canceled'),
(5, 5, 3, '2024-01-08 14:00:00', 'Scheduled'),
(6, 6, 4, '2024-01-09 15:15:00', 'Completed'),
(7, 7, 5, '2024-01-10 09:30:00', 'Scheduled'),
(8, 8, 6, '2024-01-11 16:45:00', 'Canceled'),
(9, 9, 7, '2024-01-12 17:00:00', 'Completed'),
(10, 10, 8, '2024-01-13 08:45:00', 'Scheduled');


create table medical_history (history_id int primary Key,patient_id int,diagnosis varchar(15) Not Null,treatment 
varchar(15) Not Null,Notes Text(15) Not Null,foreign key (patient_id) references patients(patient_id));

drop table medical_history;

INSERT INTO medical_history (history_id, patient_id, diagnosis, treatment, Notes)
VALUES
(1, 1, 'Flu', 'Rest', 'Follow-up needed'),
(2, 2, 'Diabetes', 'Insulin', 'Monitor sugar levels'),
(3, 3, 'Asthma', 'Inhaler', 'Avoid triggers'),
(4, 4, 'Cold', 'Medication', 'Drink fluids'),
(5, 5, 'Fever', 'Paracetamol', 'Check for infection'),
(6, 6, 'Fracture', 'Cast', 'Physiotherapy later'),
(7, 7, 'Hypertension', 'Diet', 'Regular exercise'),
(8, 8, 'Migraine', 'Painkillers', 'Manage stress'),
(9, 9, 'Allergy', 'Antihistamines', 'Avoid allergens'),
(10, 10, 'Arthritis', 'Pain relief', 'Physiotherapy');


create table medications (medication_id int Primary Key auto_increment , name varchar(15) Not Null, type varchar(15)
Not Null,price varchar(15) Not Null, Description Text Not Null);

INSERT INTO medications (name, type, price, Description)
VALUES
('Paracetamol', 'Tablet', '10', 'Pain reliever'),
('Ibuprofen', 'Tablet', '20', 'Anti-inflammatory'),
('Insulin', 'Injection', '300', 'Diabetes treatment'),
('Cetirizine', 'Tablet', '15', 'Allergy relief'),
('Amoxicillin', 'Capsule', '50', 'Antibiotic'),
('Salbutamol', 'Inhaler', '250', 'Asthma treatment'),
('Aspirin', 'Tablet', '25', 'Pain reliever and blood thinner'),
('Omeprazole', 'Tablet', '30', 'Acidity treatment'),
('Metformin', 'Tablet', '40', 'Diabetes management'),
('Multivitamins', 'Capsule', '60', 'Supplement');






create table prescription (prescription_id int Primary Key, patient_id int,medication_id int,
foreign key (patient_id) references patients(patient_id),foreign key (medication_id) references 
medications(medication_id) , date_provided Date Not Null, Dosage text(15) Not null);

drop table prescription;

INSERT INTO prescription (prescription_id, patient_id, medication_id, date_provided, Dosage)
VALUES
(1, 1, 1, '2024-01-01', '1 Tablet Twice Daily'),
(2, 2, 3, '2024-01-02', '1 Injection Daily'),
(3, 3, 6, '2024-01-03', '2 Puffs When Needed'),
(4, 4, 4, '2024-01-04', '1 Tablet Daily'),
(5, 5, 1, '2024-01-05', '1 Tablet Thrice Daily'),
(6, 6, 5, '2024-01-06', '1 Capsule Twice Daily'),
(7, 7, 9, '2024-01-07', '1 Tablet Daily'),
(8, 8, 7, '2024-01-08', '1 Tablet Daily'),
(9, 9, 2, '2024-01-09', '1 Tablet Twice Daily'),
(10, 10, 8, '2024-01-10', '1 Tablet Daily');




create table bills (bill_id int Primary Key,patient_id int,total_amount varchar(15) Not Null,payment_status 
varchar(15) Not Null, Date Date Not Null , foreign key (patient_id) 
references patients(patient_id));

INSERT INTO bills (bill_id, patient_id, total_amount, payment_status, Date)
VALUES
(1, 1, '500', 'Paid', '2024-01-01'),
(2, 2, '300', 'Pending', '2024-01-02'),
(3, 3, '250', 'Paid', '2024-01-03'),
(4, 4, '100', 'Pending', '2024-01-04'),
(5, 5, '150', 'Paid', '2024-01-05'),
(6, 6, '200', 'Paid', '2024-01-06'),
(7, 7, '350', 'Pending', '2024-01-07'),
(8, 8, '400', 'Paid', '2024-01-08'),
(9, 9, '450', 'Pending', '2024-01-09'),
(10, 10, '600', 'Paid', '2024-01-10');





create table staff (staff_id int Primary Key, name varchar(15) Not Null,role varchar(15) Not Null,phone varchar(15)
Unique Key,shift varchar(15) Not Null);

INSERT INTO staff (staff_id, name, role, phone, shift)
VALUES
(1, 'John', 'Nurse', '1234567890', 'Morning'),
(2, 'Alice', 'Doctor', '1234567891', 'Evening'),
(3, 'Bob', 'Technician', '1234567892', 'Night'),
(4, 'Diana', 'Receptionist', '1234567893', 'Morning'),
(5, 'Eve', 'Cleaner', '1234567894', 'Evening'),
(6, 'Frank', 'Admin', '1234567895', 'Night'),
(7, 'Grace', 'Pharmacist', '1234567896', 'Morning'),
(8, 'Hank', 'Security', '1234567897', 'Evening'),
(9, 'Ivy', 'Nurse', '1234567898', 'Night'),
(10, 'Jack', 'Doctor', '1234567899', 'Morning');





create table departments (department_id int Primary Key,name varchar(15) Not Null,contact varchar(15) Unique Key);

INSERT INTO departments (department_id, name, contact)
VALUES
(1, 'Cardiology', '9876543210'),
(2, 'Neurology', '9876543211'),
(3, 'Orthopedics', '9876543212'),
(4, 'Pediatrics', '9876543213'),
(5, 'Radiology', '9876543214'),
(6, 'Oncology', '9876543215'),
(7, 'Pharmacy', '9876543216'),
(8, 'Emergency', '9876543217'),
(9, 'ENT', '9876543218'),
(10, 'Dermatology', '9876543219');







create table facilities (facility_id int Primary Key,name varchar(15) Not Null,type varchar(15) Not Null,
cost varchar(15) Not Null,availability_status varchar(15) Not Null,maintenance_status varchar(15)
 Not Null Default  'Active');

INSERT INTO facilities (facility_id, name, type, cost, availability_status)
VALUES
(1, 'X-Ray', 'Diagnostic', '500', 'Available'),
(2, 'MRI', 'Diagnostic', '1500', 'Available'),
(3, 'ICU Bed', 'Inpatient', '2500', 'Unavailable'),
(4, 'CT Scan', 'Diagnostic', '2000', 'Available'),
(5, 'ECG', 'Diagnostic', '300', 'Available'),
(6, 'Ultrasound', 'Diagnostic', '600', 'Available'),
(7, 'Ventilator', 'Inpatient', '4000', 'Unavailable'),
(8, 'Laboratory', 'Diagnostic', '1000', 'Available'),
(9, 'Ambulance', 'Transport', '800', 'Available'),
(10, 'Pharmacy', 'Retail', 'Variable', 'Available');

-- QUERIES

-- Show all data from a table
select * from Patients;

-- Show specific columns
select Name, Age, Gender from Patients;

-- Truncate a table (deletes all records without dropping the table)
truncate table Medical_History;

-- Retrieve patients over 30 years of age
select * from Patients where Age > 30;

-- Retrieve doctors in the 'Cardiology' specialty
select Name, Specialty from Doctors where Specialty = 'Cardiology';


-- Rename a table
alter table Departments rename to Hospital_Departments;


-- Rename a column
alter table Patients change Contact Phone_Number varchar(15);

-- Update a patient's address
update Patients set Address = 'New Address' where Patient_ID = 1;

-- Update a bill's payment status
update Bills set Payment_Status = 'Paid' where Bill_ID = 2;

-- Add a new column
alter table Facilities add column Last_Maintained date;

-- Modify a column's data type
alter table  Bills modify column Total_Amount decimal(10, 2);

-- Drop a column
alter table Staff drop column Shift;

-- Delete a specific record
delete from Patients where name = 'Mansi';

-- Delete records with a certain condition
delete from Appointments where Status = 'Canceled';

-- WHERE clause
select * from Facilities where Availability_Status = 'Available';

-- GROUP BY clause
select Type, COUNT(*) as Facility_Count from Facilities group by Type;

-- HAVING clause
select Type, COUNT(*) as Facility_Count from Facilities group by  type having COUNT(*) > 2;

-- ORDER BY clause
select * from Bills order by  Total_Amount desc;

-- LIMIT clause
select * from Doctors limit 5;

-- Enable SQL_SAFE_UPDATES
set SQL_SAFE_UPDATES = 1;

-- Attempt an unsafe update (will fail)
update Patients set Age = 40;

-- Correctly update with a WHERE clause
update Patients set Age = 40 where Patient_ID = 1;

-- Disable SQL_SAFE_UPDATES
set SQL_SAFE_UPDATES = 0;

-- Generating a Billing Report for a Patient
select Bills.Bill_ID, Bills.Total_Amount, Bills.Payment_Status, Bills.Date
from Bills where Patient_ID = 3;

-- Scheduling a Patient's Next Appointment
insert into Appointments (Appointment_ID, Patient_ID, Doctor_ID, Date_Time, Status)
values (11, 3, 5, '2024-01-15 10:00:00', 'Scheduled');

-- Retrieving a Patient’s Medical History
select * from  Medical_History where Patient_ID = 3;


















