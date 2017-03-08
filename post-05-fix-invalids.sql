set echo on

spool post-05-fix-invalids

@$ORACLE_HOME/rdbms/admin/utlrp.sql 

spool off

set echo off
