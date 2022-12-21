--To create table called YASSIR:
create table yassir(
employee_id number not null,
first_name varchar2(50) default 'No Name',
last_name varchar2(50),
hire_date date default sysdate not null
);
--To display the table:
select * from yassir;
--To get a description about yassir's table:
desc yassir;
--To get information about yassir's table:
info yassir;
--If we want to add one new column to the table:
alter table yassir
add e_mail varchar2(20);
--If we want to add more than one column to a single table:
alter table yassir
add (password varchar2(20) default 'abc@123',
date_of_birth date);
--If we want to modify column info:
alter table yassir
modify password varchar2 (50) default 'abc_123';
--If we want to drop a column:
alter table yassir 
drop column e_mail;
--If we want to set unused column:
alter table yassir
set unused column date_of_birth ONLINE;
--If we want to check which tables r having unused column and how many unused columns columns are there:
select * from user_unused_col_tabs;
--If we want to drop the unused column:
alter table yassir drop unused columns;
--If we want to set reading only table (means it's impossible to modify infos):
alter table yassir READ ONLY;
--Even if its read only, its possible to add a column:
alter table yassir
add gender varchar2(1);
--To return the table as read write table:
alter table yassir READ WRITE;
--If we want to rename a column:
alter table yassir
RENAME COLUMN last_name TO surname;
--If we want to modify the table name:
alter table yassir RENAME TO daoud;
--Let's check the table with the new name:
select * from daoud;
--If we want to drop the a table:
drop table daoud;
--After dropping we can flash it back:
flashback table daoud to before drop;
--If we want to drop the table perminantly with no possible to flash it back:
drop table daoud PURGE;
