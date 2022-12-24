--Using substitution variable,here will show a window ask us to enter the Department_No:
select employee_id,first_name,last_name from employees where department_id=&Department_No;
--If we want to use substitution variable for entering name, here we need to make the value enclosed with single quotes:
select employee_id,first_name,last_name from employees where first_name='&name';
--If we want to use substitution variable for entering date, here also we need to make the value enclosed with single quotes:
select employee_id,first_name,last_name,hire_date from employees where hire_date='&date';
--We can use more than one substitution variable at various places even in single SQL statement:
select employee_id,first_name,last_name,&column_name from &table_name where &condition order by &orderby_clause;
--We can use && for the substitution variable to the first one and rest are & only to substitute one value in multi places:
select employee_id,first_name,last_name,salary from employees where salary between &&sal and &sal+3000;
--Also here:
select &&column_name from employees group by &column_name order by &column_name;
--Or we can define the substitution variable before the statement:
DEFINE column_name='first_name';
select &&column_name from employees group by &column_name order by &column_name;
--If we want to remove the saved variable,here we can use undefine or undef:
undefine column_name;
--If we want to choose the display script we do:
accept department_no prompt 'Please Enter aValid Department No:';
select employee_id,first_name,last_name,salary from employees where department_id=&department_no;
--If we want to remove the department_no:
undef department_no;
--If we want to display the status of the variable befoe and after we use (set verify on) and write statement and pressrun script or (F5):
set verify on;
select employee_id,first_name,last_name from employees where employee_id=&emp_id;
--If we want to set verify off:
set verify off;
--If we have variable like 'R&D',here it will ask abt the R value,to solve this problem we do(it will return nothing because there is no department called R&D):
SET DEFINE OFF;
select * from departments where department_name='R&D';
--If we want to use the substitution variable, we should on it:
SET DEFINE ON;