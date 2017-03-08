set echo on

spool prep-04-check-tz

SELECT version FROM v$timezone_file;

select TZ_VERSION from registry$database;

SELECT PROPERTY_NAME, SUBSTR(property_value, 1, 30) value
FROM DATABASE_PROPERTIES
WHERE PROPERTY_NAME LIKE 'DST_%'
ORDER BY PROPERTY_NAME;

spool off

set echo off
