#!/bin/ksh -x

if [ $# -lt 1 ]
then

echo
echo Usage: $0 DB_UNIQUE_NAME
echo
exit

else
srvctl upgrade database -d $1 -o $ORACLE_HOME
fi
