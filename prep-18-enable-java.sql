set echo on

prompt
prompt If DBMS_JAVA_DEV package itself is NOT THERE - NO PROBLEM

exec dbms_java_dev.enable;
--exec dbms_java_dev.disabl;


set echo off
