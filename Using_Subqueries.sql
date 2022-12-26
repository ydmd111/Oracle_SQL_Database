--Using SUBQUERY in where clause:
select first_name,last_name,salary from employees where salary>(select salary from employees where employee_id=145);
--Using single row Subqueries:
select * from employees where department_id = (select department_id from employees where employee_id=145);
--We can use more than a one subquery in a single main query:
select * from employees where department_id = (select department_id from employees where employee_id=145)
AND
salary < (select salary from employees where employee_id=145);
--We can use group functions in a single row subqueries:
select * from employees where hire_date = (select MIN(HIRE_DATE) from employees);
--Using Multiple Row Subqueries by using IN Operator:
select first_name,last_name,department_id,salary from employees where salary IN
(select min (salary) from employees group by department_id);
--Using ANY operator with multiple row subqueries:
select first_name,last_name,department_id,salary from employees where salary > ALL
(select salary from employees where job_id='SA_MAN');
--Using ALL operator with multiple row subqueries:
select first_name,last_name,department_id,salary from employees where salary IN
(select min (salary) from employees where job_id='SA_MAN');
--Muliple Row Subqueries can be nested:
select first_name,last_name,department_id,salary from employees where department_id IN
(select department_id from departments where location_id IN
(select location_id from locations where country_id IN
(select country_id from countries where country_name='United Kingdom')));
--For multiple column subqueries using Non-pairwise Subquery:
select first_name,last_name,department_id,salary from employees where department_id IN
(select department_id from employees where employee_id IN(103,105,110))
AND
salary IN(select salary from employees where employee_id IN(103,105,110));
--For using pairwise comparison subquery:
select first_name,last_name,department_id,salary from employees where (department_id,salary) IN
(select department_id,salary from employees where employee_id IN(103,105,110));
--Using subqueries as a Table:
select * from (select state_province,city,department_id,department_name from departments JOIN locations USING(location_id));
--Using Scalar Subqueries:
select employee_id,first_name,last_name from employees where department_id=
(select department_id from employees where upper(first_name)='LUIS');
--Using Correlated Subqueries:
select employee_id,first_name,last_name,department_id,salary from employees a
where salary=(select max(salary) from employees b
where b.department_id=a.department_id);
--Using Exists operator:
select employee_id,first_name,last_name,department_id,salary from employees a 
where EXISTS(select 1,employee_id from employees where manager_id=a.employee_id);
--Using NOT EXISTS operator:
select department_id,department_name from departments d where NOT EXISTS
(select department_id from employees where department_id=d.department_id);