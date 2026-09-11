use da6;
-- update employees set salary=salry+2000 where department='IT' and isactive=1 and salary<60000;

-- update employees set salary=salary-(salary*10/100) where department='Finance' or isactive=0;


-- select * from employees;

-- CREATE TABLE Projects (
 --   id INT,
 --  name VARCHAR(100),
 --  assignedto VARCHAR(100),
 --   start DATE,
 --  end DATE
-- );

-- INSERT INTO Projects VALUES
-- (1, 'Website Revamp', 'Alice', '2024-01-15', '2024-03-01'),
-- (2, 'Mobile App', 'Bob', '2024-02-01', NULL),
-- (3, 'Data Migration', NULL, NULL, NULL),
-- (4, 'SEO Optimization', 'Eve', '2024-03-10', '2024-04-20'),
-- (5, 'Cloud Migration', NULL, '2024-03-15', NULL);

-- select * from projects where assignedto is null;
-- select * from projects where start is null;
-- select * from projects where start is not null and end is not null;
-- select * from projects where assignedto is not null;


-- update projects set assignedto='Frank' where assignedto is null;
-- update projects set start= '2026-01-10' where start is null;
-- update projects set name='Completed' where end is not null;

-- delete from projects where assignedto is null;
-- delete from projects where start is null;
-- delete from projects where name='Completed' and end is not null;
-- select * from projects;

-- CREATE TABLE Orders (
 -- id INT,
 -- customer_name VARCHAR(100),
 -- order_date DATE,
 -- total_amount DECIMAL(10,2)
 -- );

-- STEP 2: Insert Records
-- INSERT INTO Orders VALUES
 -- (1, 'Alice', '2024-03-01', 1500.00),
 -- (2, 'Bob', '2024-03-05', 450.00),
 -- (3, 'Charlie', '2024-03-10', 2500.00),
 -- (4, 'Diana', '2024-03-15', 800.00),
 -- (5, 'Eve', '2024-03-20', 1200.00),
 -- (6, 'Frank', '2024-03-25', 3000.00),
 -- (7, 'Grace', '2024-04-02', 1800.00),
 -- (8, 'Henry', '2024-04-08', 950.00),
 -- (9, 'Ivy', '2024-04-12', 2750.00),
 -- (10, 'Jack', '2024-04-18', 650.00),
 -- (11, 'Kevin', '2024-04-22', 4200.00),
 -- (12, 'Lily', '2024-05-01', 1350.00),
 -- (13, 'Michael', '2024-05-08', 5000.00),
 -- (14, 'Nancy', '2024-05-15', 2250.00),
 -- (15, 'Oliver', '2024-05-25', 900.00);


-- select * from orders where order_date between '2024-03-03' and '2024-03-10';
-- select * from orders where total_amount between 500 and 1500;

-- update orders set total_amount=total_amount+1000 where order_date between '2024-03-03' and '2024-03-10';
-- update orders set total_amount=total_amount-200 where total_amount between 1000 and 2000;
-- update orders set total_amount=total_amount+(total_amount*10/100) where total_amount between 2500 and 5000;
-- delete from orders where order_date between '2024-03-10' and '2024-03-20';
-- select * from orders;

-- CREATE TABLE Emp (
 -- id INT,
 -- name VARCHAR(100),
 -- dept VARCHAR(20),
 -- salary INT
 -- );

-- STEP 2: Insert Records
-- INSERT INTO Emp VALUES
 -- (1, 'Alice', 'HR', 35000),
 -- (2, 'Bob', 'IT', 50000),
 -- (3, 'Charlie', 'Finance', 45000),
 -- (4, 'Diana', 'Marketing', 40000),
 -- (5, 'Eve', 'IT', 55000),
 -- (6, 'Frank', 'Finance', 48000),
 -- (7, 'Grace', 'Sales', 37000),
 -- (8, 'Henry', 'Admin', 42000),
 -- (9, 'Ivy', 'HR', 39000),
 -- (10, 'Jack', 'Sales', 46000),
 -- (11, 'Kevin', 'IT', 60000),
 -- (12, 'Lily', 'Marketing', 41000),
 -- (13, 'Michael', 'Admin', 38000),
 -- (14, 'Nancy', 'Finance', 52000),
 -- (15, 'Oliver', 'HR', 43000);


-- SELECT*FROM emp where dept in('finance','it');
-- update emp set salary=salary+2000 where dept in('hr','marketing');
-- delete from emp where dept in ('finance','marketing');
-- select * from emp


-- select emp_name,salary, 
-- case 
-- when salary>=80000 then 'High-salary'
-- when salary<=60000 then 'Medium-salary'
-- else 'Low-salary'
-- end as salary_category from employees;

-- select emp_name,experience,
-- case
-- when experience >=10 then 'Expert'
-- when experience >=5 then  'Senior'
-- when experience >=2 then 'junior'
-- else 'Fresher'
-- end as Experience_Level from employees;

-- select * from employees where emp_name like 'R%';
-- select * from employees where emp_name like 'p%a';
-- select * from employees where emp_name like '%a%';
 -- select * from employees where emp_name like 'a_i%';