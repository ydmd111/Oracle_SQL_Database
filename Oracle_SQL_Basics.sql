--When we call the employees table with all columns:
select * from employees;
--If we want to call some columns in employees table:
select first_name,last_name,email,salary from employees;
--Also we can add aliases to the column names and we can apply numeric and get it's result in column with alias(if alias is more than on word then we should put double parentheses)
select first_name as name,last_name as surname,email as E_mail,salary+1000 as "new salary" from employees;
--If we want to get description about the table:
desc employees;
--If we want to get more details about the table:
info employees;