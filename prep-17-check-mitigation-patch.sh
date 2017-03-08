echo "Checking if mitigation patch 19721304 has been applied"
echo "  Enable java-development if you see it in the output below"
echo
$ORACLE_HOME/OPatch/opatch lsinventory |grep 19721304 
