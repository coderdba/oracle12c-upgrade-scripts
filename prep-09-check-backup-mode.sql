set echo on
select * from v$backup where status != 'NOT ACTIVE';
set echo off
