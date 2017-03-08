#!/bin/ksh -x

grep "BEGIN catuppst.sql" $ORACLE_HOME/diagnostics/catupgrd0.log

echo
echo "INFO - If the string BEGIN catuppst.sql is missing in catupgrd0.log, then run $ORACLE_HOME_12C/rdbms/admin/catuppst.sql"
echo
