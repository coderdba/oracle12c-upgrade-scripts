spool post-04-list-invalids

prompt Running $ORACLE_HOME/rdbms/admin/utluiobj.sql
@$ORACLE_HOME/rdbms/admin/utluiobj.sql

prompt Running $ORACLE_HOME/rdbms/admin/dbupgdiag.sql ./ 
@dbupgdiag.sql ./ 

spool off
