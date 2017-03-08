-- Check duplicate objects between SYS and SYSTEM
prompt
prompt Check duplicate objects between SYS and SYSTEM
prompt
select OBJECT_NAME, OBJECT_TYPE from
DBA_OBJECTS where OBJECT_NAME||OBJECT_TYPE
in (select OBJECT_NAME||OBJECT_TYPE from
DBA_OBJECTS where OWNER='SYS') and
OWNER='SYSTEM' and OBJECT_NAME not in
('AQ$_SCHEDULES_PRIMARY', 'AQ$_SCHEDULES',
'DBMS_REPCAT_AUTH');

-- Check invalid objects - pre-check.sql
prompt
prompt Checking invalid objects in SYS and SYSTEM users
prompt
select substr(owner,1,6) owner, substr(object_name,1,30) object, substr(object_type,1,30)
type, status, LAST_DDL_TIME from dba_objects where status <>'VALID' and owner like 'SYS%';
