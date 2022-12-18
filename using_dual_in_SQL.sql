--dual is used for executing functions which are not having table for example:
select 'Hello World' from dual;
--printing statement and using alias:
select 'My name is Yassir' as Output from dual;
--to avoid the confusion of the single quotation of I'm, we do:
select q'[I'm Yassir i use Oracle SQL Developer]' Output from dual;
--or we put 2 single quotations with I''m:
select 'I''m Yassir i use Oracle SQL Developer' Output from dual;
--We can execute numerical counts:
select 1+1 from dual;
--Also we can use dual for concatenation:
select 'My name is'||' '||'Yassir'||' '||'Daoud' from dual;