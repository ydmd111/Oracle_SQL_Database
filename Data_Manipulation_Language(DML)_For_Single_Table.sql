--Let's create table called yassir and get some columns and rows from employees table:
create table yassir as select first_name,last_name,salary,commission_pct from employees;
--Let's display yassir table:
select * from yassir;
--Now let's count the rows inside yassir table,here will be 107 rows:
select count(*) from yassir;
--To insert row in yassir table:
insert into yassir(first_name,last_name,salary,commission_pct)values('Yassir','Daoud',13000,0.2);
--We can insert row without mentioning column name and we can insert null if the column accept null values:
insert into yassir values('Daoud','Mukhtar',16000,null);
--We can use subquery to insert rows:
insert into yassir select first_name,last_name,salary,commission_pct from employees 
where manager_id=(select manager_id from departments where department_id=60);
--We can insert multiple rows in a single statement,but here we should use select statement:
insert all
    into yassir values('Uday','Daoud',12000,0.1)
    into yassir values('Usama','Daoud',13000,0.11)
select * from dual;
--Let's check the total number of rows in the yassir table,here we will find 115 rows,8 are inserted:
select count(*) from yassir;
--If we want to delete rows,we can get them back by rolling them back:
delete yassir;
--if we want to delete rows faster and commit it, we can use truncate key word:
truncate table yassir;
--To drop yassir table:
drop table yassir;