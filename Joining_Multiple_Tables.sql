--Making NATURAL JOIN betwwen employees table and departments table:
select * from employees NATURAL JOIN departments;
--We can specify the columns that we want them from both tables:
select first_name,last_name,department_name from employees NATURAL JOIN departments;
--Joining with the USING clause (EQUIJOIN):
select first_name,last_name,department_name,department_id from employees JOIN departments USING(department_id);
--To avoid the COLUMN AMBIGUOUSLY DEFINED error we should put aliases to tables and use them with common column names
--we can use aliases for uncommon column names for readability:
select emp.first_name,emp.last_name,dep.department_name,dep.manager_id,department_id from employees emp JOIN departments dep USING (department_id);
--Using ON Clause:
select emp.first_name,emp.last_name,dep.department_name,dep.manager_id,dep.department_id from employees emp 
JOIN departments dep ON (emp.department_id=dep.department_id);
--For Multiple JOIN Operations:
select emp.first_name,emp.last_name,dep.department_name,city,postal_code,street_address from employees emp JOIN departments dep
ON(emp.department_id=dep.department_id) JOIN locations loc USING (location_id) NATURAL JOIN countries;
--For Restricting Joins:
select emp.first_name,emp.last_name,dep.department_name,dep.department_id,loc.city from employees emp JOIN departments dep
ON(dep.department_id=emp.department_id)
JOIN locations loc
ON(dep.location_id=loc.location_id)
WHERE dep.department_id=100;
--Geting each worker with his/her manager by using SELE Join:
select worker.first_name,worker.last_name,worker.employee_id,worker.manager_id,
manager.employee_id,manager.first_name,manager.last_name from employees worker JOIN employees manager
ON(worker.manager_id=manager.employee_id);
--Joining NON-EQUIJOINS:
select emp.employee_id,emp.first_name,emp.last_name,emp.job_id,emp.salary,j.min_salary,j.max_salary,j.job_id
from employees emp JOIN jobs j 
on emp.salary>j.max_salary
AND j.job_id='SA_REP';
--Making LEFT OUTER JOIN:
select first_name,last_name,department_id,department_name from employees LEFT JOIN departments
using(department_id);
--Making RIGHT OUTER JOIN:
select emp.first_name,emp.last_name,dep.department_id,dep.department_name from employees EMP RIGHT JOIN departments DEP
on(emp.department_id=dep.department_id);
--For the FULL OUTER JOIN:
select emp.first_name,emp.last_name,dep.department_id,dep.department_name from employees emp full JOIN departments dep
ON(emp.department_id=dep.department_id);
--Making CROSS JOIN:
select emp.first_name,emp.last_name,emp.department_id,dep.department_id,dep.department_name
from employees emp CROSS JOIN departments dep;
--Also we can make cross join Automatically:
select * from employees,departments;