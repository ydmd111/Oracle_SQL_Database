--Firstly let's create tables to use it:
create table yassir as select * from employees where employee_id IN(103,104,105,107,108);
create table uday as select * from employees where employee_id IN(109,110,111,112,113);
--Now let's use UNION Operator without correcting the duplicate rows:
select * from yassir
UNION
select * from employees where job_id='IT_PROG';
--Also we can choose columns that we want to union them they should be same column number, same data type respectively:
select first_name,last_name,email,hire_date,salary from yassir
union
select first_name,last_name,email,hire_date,salary from employees where job_id='IT_PROG';
--If we want the result include the duplicate rows to be written:
select first_name,last_name,email,hire_date,salary from yassir
UNION ALL
select first_name,last_name,email,hire_date,salary from employees where job_id='IT_PROG';
--To match the unmatched queries:
select employee_id,first_name,last_name,email,hire_date,salary from yassir
UNION ALL
select employee_id,null,null,email,hire_date,salary from employees;
--Using ORDER BY Clause:
select employee_id,first_name,last_name,email,hire_date,salary from yassir
UNION
select employee_id,first_name,last_name,email,hire_date,salary from employees
ORDER BY salary;
--We can use aliases with order by clause but it should be written at the first table:
select employee_id,first_name,last_name,email,hire_date,salary s from yassir
UNION
select employee_id,first_name,last_name,email,hire_date,salary from employees
ORDER BY s;
--Using INTERSECT Operator to get the common rows in both tables:
select employee_id,first_name,last_name,email,hire_date,salary from yassir
INTERSECT
select employee_id,first_name,last_name,email,hire_date,salary from employees;
--Using MINUS Operator to get distinct rows from the first table:
select employee_id,first_name,last_name,email,hire_date,salary from employees
MINUS
select employee_id,first_name,last_name,email,hire_date,salary from yassir;
--Also we can combine multiple queries:
select employee_id,first_name,last_name,email,hire_date,salary from yassir
UNION
select employee_id,first_name,last_name,email,hire_date,null from employees
MINUS
select employee_id,first_name,last_name,email,hire_date,salary from uday;