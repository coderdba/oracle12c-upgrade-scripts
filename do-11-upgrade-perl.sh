exec > do-11-upgrade-perl.out 2>> do-11-upgrade-perl.out

cd $ORACLE_HOME/rdbms/admin
$ORACLE_HOME/perl/bin/perl catctl.pl -n  12 -l $ORACLE_HOME/diagnostics catupgrd.sql
