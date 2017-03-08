set echo on
spool post-11-tz-fix

alter system set cluster_database=false scope=spfile;

shutdown;

startup;

prompt
prompt
prompt VERIFYING TIMEZONE BEFORE FIX
prompt

SELECT version FROM v$timezone_file;

select TZ_VERSION from registry$database;

SELECT PROPERTY_NAME, SUBSTR(property_value, 1, 30) value
FROM DATABASE_PROPERTIES
WHERE PROPERTY_NAME LIKE 'DST_%'
ORDER BY PROPERTY_NAME;


prompt
prompt
prompt APPLYING FIX
prompt

@upg_tzv_apply

-- Dont do it here - do it separately
--alter system set cluster_database=true scope=spfile;

shutdown;

startup;

prompt
prompt
prompt VERIFYING TIMEZONE AFTER FIX
prompt

SELECT version FROM v$timezone_file;

select TZ_VERSION from registry$database;

SELECT PROPERTY_NAME, SUBSTR(property_value, 1, 30) value
FROM DATABASE_PROPERTIES
WHERE PROPERTY_NAME LIKE 'DST_%'
ORDER BY PROPERTY_NAME;

set echo off

spool off
