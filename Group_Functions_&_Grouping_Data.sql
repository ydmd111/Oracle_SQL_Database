--To use AVG Function by using ALL and DISTINCT, here we will notice that if we write ALL or not write anything, the result is same:
select AVG(salary),AVG(ALL salary),AVG(DISTINCT salary) from employees;
--To handle the NULL values by using NVL function:
select avg(commission_pct),avg(NVL(commission_pct,0)) from employees;
--If we want to count the rows in table:
select count(*) from employees;
--If we want to ignore the null values:
select count(commission_pct) from employees;
--We can use nvl function to handle the null values:
select count(commission_pct),count(distinct commission_pct),count(distinct nvl(commission_pct,0)) from employees;
--Using MAX function:
select MAX(salary) from employees;
--Using MIN function:
select MIN(salary) from employees;
--We can use nvl function to handle the null values:
select min(commission_pct), min(nvl(commission_pct,0)) from employees;
--Using SUM function:
select sum(salary),sum(distinct salary) from employees;
--Using LISTAGG function:
select LISTAGG(salary,'_') within group (order by salary DESC) salaries from employees where job_id='IT_PROG';
--To group row with the given columns by using GROUP BY CLAUSE:
select job_id,avg(salary) from employees group by job_id;
--We can not use aliases with group by clause, but we can use it in order by clause:
select department_id dep_id,avg(salary) from employees group by department_id order by dep_id;
--We can use where clause to restrict the data:
select job_id,department_id,avg(salary) from employees where job_id IN('ST_MAN','SH_CLERK','ST_CLERK')
group by job_id,department_id order by AVG(salary) DESC;
--With WHERE Clause we can not use GROUP FUNCTIONS,here we use HAVING Clause to filter the date after grouping it:
select job_id,avg(salary) from employees group by job_id HAVING avg(salary)>5000;