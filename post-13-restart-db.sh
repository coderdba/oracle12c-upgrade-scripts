#!/bin/ksh -x

if [ $# -lt 1 ]
then

echo
echo Usage: $0 DB_UNIQUE_NAME
echo
exit

else
srvctl stop database -d $1 
srvctl start database -d $1 
fi
