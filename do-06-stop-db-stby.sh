if [ $# -lt 1 ]
then
echo
echo USAGE: $0 DB_UNIQUE_NAME
echo
exit
else
srvctl stop database -d $1
fi
