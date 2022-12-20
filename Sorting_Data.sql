--Returning some columns sorted by first_name column:
select first_name,last_name,salary from employees order by first_name;
--We can make a numeric count,give it alias and sort the returns by using the alias name:
select first_name,last_name,salary,salary+3000 as new_salary from employees order by new_salary;
--We can use numbers represents the columns respectively,for example 1 represents first_name column as the following:
select first_name,last_name,salary,salary+3000 as new_salary from employees order by 1;
--In employes table first_name column represents the second column,so it is represented by number 2:
select * from employees order by 2;
--We can sort the result by using 2 columns:
select * from employees order by first_name,last_name;
--By default, the sorts are ascending,if we want it to be descending:
select employee_id,first_name,last_name,salary from employees order by first_name DESC;
--We can use where clause along with order by clause:
select employee_id,first_name,last_name,salary from employees where salary>10000 order by first_name DESC;
--We can use more than one column to sort the result descendingly:
select employee_id,first_name,last_name,salary from employees order by first_name DESC,last_name DESC;
--If there is null value (like in commission_pct) the sort will be sorted ascendingly by default and th null will be in last:
select first_name,last_name,commission_pct as c_pct from employees order by c_pct;
--In descending the null values in commission_pct will be at first of the result:
select first_name,last_name,commission_pct as c_pct from employees order by c_pct DESC;
--If we want the result descendingly sorted based on commission_pct and null values at last:
select first_name,last_name,commission_pct as c_pct from employees order by c_pct DESC nulls last;
--Here the result will be sorted based on commission_pct column ascendingly and the null values will be at first:
select first_name,last_name,commission_pct as c_pct from employees order by c_pct nulls first;
