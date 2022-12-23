--Let's create some tables contain 4 columns with empty rows:
create table yassir as select employee_id,first_name,last_name,hire_date from employees where 1=2;
create table uday as select employee_id,first_name,last_name,hire_date from employees where 1=2;
create table usama as select employee_id,first_name,last_name,hire_date from employees where 1=2;
--Now let's check the created tables,we will find all are empty rows:
select * from yassir;
select * from uday;
select * from usama;
--Let's insert some rows in tables:
insert all
    into yassir values(100,'Waddah','Abdulhussein',sysdate)
    into uday values(101,'Nawar','Mikel',sysdate+1)
    into usama values(102,'Ammar','Essa',sysdate+2)
select * from dual;
--Now let's check the tables again:
select * from yassir;
select * from uday;
select * from usama;
--If we want to insert in multi tables with condition:
insert all
    when salary <5000 then
        into yassir values (employee_id,first_name,last_name,hire_date)
    when salary between 5000 and 10000 then
        into uday values(employee_id,first_name,last_name,hire_date)
    when salary > 1000 then
        into usama values(employee_id,first_name,last_name,hire_date)
select * from employees;
--Also we can insert rows by using subquery for the condition:
insert all
    when department_id IN
    (select department_id from departments where location_id IN(select location_id from locations where country_id='CA'))then
        into yassir values (employee_id,first_name,last_name,hire_date)
    when department_id IN
    (select department_id from departments where location_id IN(select location_id from locations where country_id='UK'))then
        into uday values(employee_id,first_name,last_name,hire_date)
    when department_id in
    (select department_id from departments where location_id IN(select location_id from locations where country_id='US'))then
        into usama values(employee_id,first_name,last_name,hire_date)
select * from employees;
--In select all its possible to insert same row in muli tables,if we want to avoid that we should use INSERT FIRST:
INSERT FIRST
    when salary <5000 then
        into yassir values (employee_id,first_name,last_name,hire_date)
    when salary between 5000 and 10000 then
        into uday values(employee_id,first_name,last_name,hire_date)
    ELSE
        into usama values(employee_id,first_name,last_name,hire_date)
select * from employees;
--Let's chack the row counts of all table we created recently:
select count(*) from yassir;
select count(*) from uday;
select count(*) from usama;
--We can update data inside table after it has been inserted:
UPDATE yassir 
    set employee_id=500
    where first_name='Waddah';
--Now let's chack the update:
select * from yassir;
--We can add comment to describe the table:
COMMENT ON TABLE yassir IS'This table contains list of employees';
--Also we can add a comment to the columns:
COMMENT ON COLUMN yassir.hire_date IS 'This is the date that the employee has started his job';
--If we want to check the table comment:
select * from user_tab_comments where table_name='YASSIR';
--If we want to check the employee comment:
select * from user_col_comments where table_name='YASSIR';
--To drop tabl's comment:
COMMENT ON TABLE yassir IS'';
--To drop column's comment:
COMMENT ON column yassir.hire_date IS'';
