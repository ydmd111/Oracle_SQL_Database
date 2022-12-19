--Using where clause:
select * from employees where job_id='IT_PROG';
--Using where clause with numbers:
select * from employees where salary >10000;
--Using distinct rows with where clause:
select distinct first_name,last_name,salary from employees where salary>10000;
--Using where clause with date:
select * from employees where hire_date>'01-Jan-05';
--Using where clause with between...and operator:
select first_name,last_name,salary from employees where salary between 10000 and 12000;
--Using where clause with IN Operator by writing numbers:
select employee_id,first_name,last_name,salary from employees where employee_id IN(100,105,102,150);
--Using where clause with IN operator by writing characters(names are case sensetive):
select first_name,last_name,salary from employees where first_name IN('Steven','Peter','Adam');
--Using where clause with LIKE operator by choosing first 2 characters in job_id(it's case sensetive):
select * from employees where job_id LIKE 'SA%';
--Using where clause with LIKE operator by choosing a letter in middle of the first_name(it's case sensetive):
select * from employees where first_name LIKE '%a%';
--Using where clause when commission_pct is null:
select * from employees where commission_pct is null;
--Using where clause when commission_pct is not null:
select * from employees where commission_pct is not null;
--Using where clause with logical operator (AND):
select * from employees where job_id='SA_REP' AND salary > 10000;
--Using where clause with logical operator (OR):
select * from employees where job_id='SA_REP' OR salary > 10000;
