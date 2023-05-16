create database if not exists employees_aleksandararsov;

show databases;

use employees_aleksandararsov;

drop table employees ;

drop table departments ;

create table if not exists employees
(employee_id int primary key,
 first_name varchar(255) ,
 last_name varchar(255) 
);

create table if not exists employees
( employee_id int primary key,
 first_name varchar(255) ,
 last_name varchar(255),
 department_id int,
 FOREIGN key(department_id) REFERENCES departments(department_id)
);

CREATE TABLE IF NOT EXISTS departments(
department_id int PRIMARY KEY,
department_name varchar(255) NOT NULL	
);

create table if not exists employees
( employee_id int primary key,
 first_name varchar(255) ,
 last_name varchar(255),
 department_id int
 );
 alter table employees
 add foreign key (department_id) REFERENCES departments(department_id);
 
 alter table employees 
 drop foreign key employees_ibfk_1;
 
create table if not exists employees
( employee_id int primary key,
 first_name varchar(255) ,
 last_name varchar(255),
 department_id int,
 email varchar(255) unique,
 FOREIGN key(department_id) REFERENCES departments(department_id)
 );

create table if not exists employees
( employee_id int primary key,
 first_name varchar(255) ,
 last_name varchar(255),
 department_id int,
 email varchar(255) unique,
 hire_date date default '2023-01-01',
 FOREIGN key(department_id) REFERENCES departments(department_id)
 );	

create table if not exists employees
( employee_id int primary key,
 first_name varchar(255) not null,
 last_name varchar(255) not null,
 department_id int,
 email varchar(255) unique,
 hire_date date default '2023-01-01',
 FOREIGN key(department_id) REFERENCES departments(department_id)
 );	

rename table employees to employees_updated;

rename table employees_updated to employees;

-- ///////////////////////////////////////////////////////////////////////////////
-- Lab Work 1 
-- Task 1
-- In the existing employees table add the following columns considering their proper data types and constraints (if needed):
-- Salary 
-- Previous_exeprience - should take values ‘Yes’ or ‘No’

create table if not exists employees
( employee_id int primary key,
 first_name varchar(255) not null,
 last_name varchar(255) not null,
 department_id int,
 email varchar(255) unique,
 hire_date date default '2023-01-01',
 salary float,
 previous_experience enum('Yes','no'),
 FOREIGN key(department_id) REFERENCES departments(department_id),
 
 
 );	
-- ALTER TABLE employees(
-- ADD salary float,
-- ADD previous_experience ENUM("yes","no)");


-- Task 2
-- In the existing departments table add the following columns considering their proper data types and constraints (if needed):
-- Manager_id - managers’ ids are comprised of numbers only
-- Location - Office city 


CREATE TABLE IF NOT EXISTS departments(
department_id int PRIMARY KEY,
department_name varchar(255) NOT null,
location varchar(255),
manager_id int,
foreign key(manager_id) references managers(manager_id)
);
-- ALTER TABLE departments(
-- ADD manager_id,
-- ADD location varchar(255)
-- add foreign key (manager_id) references managers(manager_id));

-- Task 3
-- Create a new table called managers with the following fields:
-- Manager_id - unique identifier of the table, related to the departments table
-- First_name - should not allow empty values
-- Last_name - should not allow empty values
-- Email - should not allow empty values and must be unique
-- Hire_date - should not allow empty values


create table if not exists managers(
manager_id int primary key,
firstName varchar(255) not null,
lastName varchar(255) not null,
email varchar(255) unique not null,
hire_date date not null
);







