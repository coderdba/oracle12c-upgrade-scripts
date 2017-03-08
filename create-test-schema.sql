create user test1 identified by test1_TEST1_test1;
grant connect, resource, unlimited tablespace to test1;
create table test1.xyz (id number, name varchar2(10));
INSERT INTO test1.XYZ VALUES (1,'1');
commit;

select owner, table_name, tablespace_name
from dba_tables 
where table_name = 'XYZ';
