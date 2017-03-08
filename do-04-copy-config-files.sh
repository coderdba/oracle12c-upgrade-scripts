#!/bin/ksh -x

if [ $# -lt 1 ]
then
echo
echo Usage: $0 DBINSTANCENAME
echo
exit
fi

export DBINSTANCENAME=$1
export ORACLE_HOME=/u02/app/oracle/product/11.2.0.4.RAC
export ORACLE_HOME_12C=/u02/app/oracle/product/12.1.0.2.RAC

cp $ORACLE_HOME/dbs/init${DBINSTANCENAME}.ora $ORACLE_HOME_12C/dbs/.
cp $ORACLE_HOME/dbs/orapw${DBINSTANCENAME} $ORACLE_HOME_12C/dbs/.
