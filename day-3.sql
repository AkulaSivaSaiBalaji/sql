-- how to drop a coloumn
-- ALTER TABLE TABLE-NAME DROP COLOUMN COLOUMN-NAME
-- USE PFS6;
-- ALTER TABLE EMPLOYEES DROP COLUMN LOCATION;
-- ALTER TABLE EMPLOYEES DROP COLUMN PF_ID;

-- how to change table name
-- ALTER TABLE TABLE-NAME RENAME NEW-TABLE-NAME
-- ALTER TABLE EMPLOYEES RENAME CODEGNAN_EMP;
-- ALTER TABLE CODEGNAN_EMP RENAME EMPLOYEES;
 -- drop table employees;
-- show tables;
-- USE PFS6;
-- create table company_staff(
-- emp_id int,
-- age tinyint,
-- expreience smallint,
-- gender char(1),
-- emp_name varchar(50),
-- address tinytext,
-- salary decimal(10,2),
-- department enum('HR','IT','Sales','Finance','Support'), -- enum will chose any one within given items
-- skills set('java','python','sql','excel','communication'),-- set will chose all options givien in it
-- joining_date date
-- );

-- 1)add email coloumn
-- alter table company_staff add column email varchar(20);

-- 2) add phone number column 
-- alter table company_staff add column phone_number int;

-- 3) add bonus column after salary
-- alter table company_staff add column bonus int after salary; 

-- 4) add status column after department
-- alter table company_staff add column Status char(10) after department;

-- 5)add company_name column first
-- alter table company_staff add column company_name varchar(30) first;

-- 6)add qualification column after emp_name
-- alter table company_staff add qualification char(10) after emp_name;

-- 7)modify emp_name column
-- alter table company_staff change emp_name employee_name varchar(50);

-- 8)modify salary column
-- alter table company_staff modify salary decimal(11,2);

-- 9) already did in 6th question

-- 10)rename joining_date to date_of_joining
-- alter table company_staff change joining_date  date_of_joining date;

-- 11) drop bonus column
-- alter table company_staff drop bonus;

use pfs6;
-- create table EMPLOYEES(
-- EMPID char(5) primary key,
-- FIRSTNAME VARCHAR(50),
-- LASTNAME VARCHAR(30),
-- AGE INT,
-- DOJ DATE,
-- ADDRESS TINYTEXT,
-- DEPT VARCHAR(20));

-- INSERT INTO EMPLOYEES -- (EMPID,FIRSTNAME,LASTNAME,AGE,DOJ,ADDRESS,DEPT) WE CAN MENTION 
-- VALUES
-- ('E0002','SUNNY','LEONE','35','2000-03-20','MUMBAI','SOCIALSERVICE'),
-- ('E0003','SAMPRNESH','BABU','40','1995-03-20','ANDHRAPRADESH','SOCIALSERVICE');
-- ('E0005','SAI','KIRAN','24','2002-03-20','VIZAG','TRAINING'),
-- ('E0006','SAI','VARDHAN','32','2002-03-20','BNG','ADMIN');

-- SELECT * FROM EMPLOYEES;

