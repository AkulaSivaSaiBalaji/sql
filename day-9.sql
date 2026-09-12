use da6;
-- select curdate(),curtime(),version(),sysdate(); #system informatic functions

-- Aggregate functions()
-- =====================

-- 1)count()
-- 2)min()
-- 3)max()
-- 4)avg()
-- 5)sum();

 -- select * from employees;
-- select count(*) from employees; # count(*) will include null values while counting and count(col_name) will doesnot count null values
-- insert into employees(emp_id,emp_name) values
-- (109,'sai');
-- select max(experience) from employees;
-- select max(salary) as highest_salary from employees;
-- select min(salary) as lowest_salary from employees;
-- select sum(salary) as total_salary  from employees;
-- select avg(salary) as avg_sal from employyes;
-- select * from employees;


-- Clauses: In mysql clauses are used to control how data is filtered,grouped,sorted or modified in sql quries.they make sql statements more meanningful and more powerful.
-- =======

-- where clause: filter records based on specefied conditions where clauses can be used as comparision operators, logical operators, logical operators and ...etc.
-- ============
-- syntax: select col-1,col-2.. from table where condition;

-- groupby clause: the group by clause is used to group rows having the same values in one or more colummns, it is commonly used with aggregate functions.
-- ==============
-- syntax: select col-name, aggerate_function(col-name) from table-name group by col-name;

-- having clause: the having clause is used to filter grouped records after group by clause. it is similar to where but it works on grouped instead of individual rows.alter
-- =============
-- syntax: clo-name, aggerate_function(col-name) from table-name group by column-name having condition

-- Order by clause: the order by clause id used to sort the result in ascending(ASC) order desc order
-- ================
-- syntax: select col-name from table-name order by column-name;

-- drop table students;

-- TASK:
-- =====
-- select name, marks from students where marks>60;
-- select name, marks from students where marks>80;
-- select name, age from students where age>22;
-- select name, department from students where department='CSE';
-- select name, city from students where city='Delhi';
-- select name, department, marks from students where department='CSE' and marks>90;
-- select * from students;

-- select department,count(*) as Total_students from students
-- group by department;

-- select department,avg(marks) as Avg_marks from students
-- group by department;

-- select department,max(marks) as HIGH_marks from students
-- group by department;

-- select department,min(marks) as Low_marks from students
-- group by department;

-- select department,sum(marks) as Total_marks from students #here i cannot display marks col where my aggerate functions depend on it
-- group by department;

-- select city, count(*) as toatal_students_per_city  from students
-- group by city;

-- select age, count(name) as toatal_students_per_age  from students
-- group by age;

-- select department,count(*) as Total_students from students
-- group by department
-- having Total_students >2;

-- select department,max(marks) as HIGH_marks from students
-- group by department
-- having HIGH_marks >80;

-- select department,avg(marks) as avg_marks from students
-- group by department
-- having avg_marks>75; 

-- select city,count(*) as total from students
-- group by city
-- having total>1; 

-- select department,sum(marks) as total_marks from students
-- group by department
-- having total_marks>150; 

-- select city,avg(marks) as avg_marks from students
-- group by city
-- having avg_marks>70; 

-- select department,min(marks) as low_marks from students
-- group by department
-- having low_marks<60; 

-- select department,max(marks) as max_marks from students
-- group by department
-- having max_marks>60; 

-- select department,sum(marks) as total_marks from students
-- group by department
-- having total_marks>100; 


-- select * from students order by city;
-- select name,age from students order by age desc;


-- execution order of clauses:
-- ===========================

-- from
-- where
-- group by
-- having
-- select
-- order by

-- select department,avg(marks) as avg_marks from students where age>20
-- group by department
-- having avg_marks >70
-- order by avg_marks desc;

-- select city,count(*) as total_students from students where marks>70
-- group by city
-- having total_students>1
-- order by total_students;

-- select department,sum(marks) as total_marks from students where city='Hyderabad' or city='Pune'
-- group by department
-- having total_marks >100
-- order by total_marks;

-- select city, max(marks) as highest_marks from students where department in ('ECE')
-- group by city
-- having highest_marks > 70
-- order by highest_marks;

-- select department,avg(age) as avg_age from students where city is not null
-- group by department
-- having avg_age>20
-- order by department;