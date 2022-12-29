--Adding NOT NULL Constraint,its used in column level only:
create table yassir(
employee_id number not null,
first_name varchar2(50),
last_name varchar2 (50)CONSTRAINT SURNAME NOT NULL,
department_id number not null
);
--let's see the descroption of yassir table:
desc yassir;
--Now let's create a new table using unique constraint,it's possible to be used in column and table lavels:
 create table yassir2(
employee_id number not null,
first_name varchar2(50) unique,
--Column level constraint:
last_name varchar2 (50)CONSTRAINT SUR_NAME NOT NULL,
phone_no number unique not null,
department_id number not null,
--Table level constraint:
CONSTRAINT department_unique UNIQUE(department_id)
);
--Adding PRIMARY KEY CONSTRAINT,table level:
create table yassir3(
employee_id number constraint PK_YASSIR3 PRIMARY KEY,
first_name varchar2(50),
last_name varchar2 (50)
);
--Or we can add constraint in table level:
create table yassir4(
employee_id number,
first_name varchar2(50),
last_name varchar2 (50),
constraint PK_YASSIR4 PRIMARY KEY(employee_id)
);
--Adding CHECK Constraint in table level:
create table yassir5(
employee_id number,
first_name varchar2(50),
last_name varchar2 (50),
salary number,
email varchar2(50),
CONSTRAINT MIN_SALARY CHECK(SALARY>0)
);