--If we want the name to be in lower case:
select lower('YASSIR') from dual;
--If we want the name to be in capital letter:
select upper('yassir') from dual;
--If we want the first letter of the name to be in capital letter and the rest in small letter:
select initcap('yassir') from dual;
--Also we can use these functions to return from table:
select lower(first_name),upper(last_name),initcap(email)from employees;
--We can use these functions in where clause also:
select * from employees where lower(last_name)='king';
--If we want to get part of string:
select substr('Yassir Daoud',1,6) from dual;
--If we want to get the length of the string:
select length('Yassir Daoud') from dual;
--If we want to concat 2 strings:
select concat('Yassir','Daoud') from dual;
--It's better to use concatination operator than using concatination function, because the function can concat only 2 string,but the operator can concat more:
select 'Yassir' || 'Daoud' || 'Mukhtar' from dual;
--If we want to know the location number of a letter in string:
select instr('Yassir Daoud','o') from dual;
--If we want to remove spaces from right and left of the string:
select trim('       Yassir Daoud     ') from dual;
--If we want to remove the left space only:
select trim(leading ' ' from '       Yassir Daoud     ') from dual;
--If we want to remove the right space only:
select trim(trailing ' ' from '       Yassir Daoud     ') from dual;
--Also we can remove letter,not spaces by using trim function:
select trim(trailing 'r' from 'my name is Yassir')from dual;
--We can use LTRIM to remove the left space:
select ltrim('    Yassir Daoud   ')from dual;
--Also we can remove letter by using ltrim:
select ltrim('my name is Yassir','my')from dual;
--We can use RTRIM to remove the right space:
select rtrim('    Yassir Daoud   ')from dual;
--Also we can remove letter by using rtrim:
select rtrim('my name is Yassir','ir')from dual;
--We can replace character with another by using replace function:
select replace('Yassir','s','*') from dual;
--If we want to add characters to the left of the string to make the totas as 10 for example:
select LPAD('Yassir','10','*') from dual;
--If we want to add to the right side:
select RPAD('Yassir','10','*') from dual;
--If we want to round a number with 2 decimal number:
select round(12.136,2) from dual;
--If we want to truncate number with 2 decimal numbers:
select trunc(12.136,2) from dual;
--If we want to smaller integer number greater than the value:
select ceil(2.001) from dual;
--If we want to get the highest number smaller than the value:
select floor(2.88) from dual;
--To return the remian from the division:
select MOD(9,7) from dual;
--If we want the date of the OS where oracle database is installed:
select sysdate from dual;
--If we want to get the date of the place of the user that he/she logged in from:
select current_date from dual;
--To get the time zone of the user's session:
select SESSIONTIMEZONE from dual;
--To get the date and time of the database:
select SYSTIMESTAMP from dual;
--To get the current date and time from the user's session:
select CURRENT_TIMESTAMP from dual;