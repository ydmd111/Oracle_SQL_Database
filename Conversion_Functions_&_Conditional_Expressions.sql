--Implicit conversion from varchar2 to Number:
select * from employees where salary > '5000';
--Implicit conversion from varchar2 to Date:
select * from employees where hire_date= '17-JUN-03';
--Implicit conversion from Date to varchar2:
select first_name || sysdate from employees;
--Explicit conversion (TO_CHAR Function) from date to varchar2:
select first_name,last_name,to_char(hire_date,'YYYY') from employees where TO_CHAR(employee_id)='100';
--Explicit conversion (TO_CHAR Function) from number to varchar2 with it's format:
select to_char(salary,'$999,999.00'),salary from employees;
--Explicit conversion (TO_NUMBER Function) from varchar2 to number:
select to_number ('$75,000.00','$99,999.00') from dual;
--Explicit conversion (TO_DATE Function) from varchar2 to date:
select first_name,last_name,to_char(hire_date,'DDSPTH Month YYYY') the_date from employees
where hire_date >TO_DATE('Jun 12 2005','Mon DD YYYY');
--Using NVL Function:
select first_name,last_name,nvl(commission_pct,0)nvl_pct,commission_pct from employees;
--Using NVL2 Function:
select first_name,last_name,nvl2(commission_pct,'HAS','HAS NOT')nvl2_pct,commission_pct from employees;
--Using NULLIF Function:
select first_name,last_name,nullif(LENGTH(first_name),LENGTH(last_name))result from employees;
--Using COALESCE Function:
select coalesce (null,null,null,1,2,3,null) result from dual;
--Conditional Expression-Simple case expression:
select first_name,last_name,salary,hire_date,job_id,
CASE job_id when 'ST_MAN' THEN 1.2 * salary
            when 'SH_MAN' THEN 1.3 * salary
            when 'SA_MAN' THEN 1.4 * salary
            ELSE salary END result
from employees;
--Conditional Expression-Searched case expression:
select first_name,last_name,salary,hire_date,job_id,
CASE  when job_id='ST_MAN' THEN 1.2 * salary
      when job_id='SH_MAN' THEN 1.3 * salary
      when job_id='SA_MAN' THEN 1.4 * salary
      ELSE salary END result
from employees;
--Conditional Expression-DECODE Function:
select first_name,last_name,salary,hire_date,job_id,
DECODE(job_id,'ST_MAN',1.2 * salary,
              'SH_MAN',1.3 * salary,
              'SA_MAN',1.4 * salary,
       salary) result
from employees;