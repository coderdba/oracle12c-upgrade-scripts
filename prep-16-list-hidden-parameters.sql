set echo on
propmt HIDDEN PARAMETERS - REMOVE THEM BEFORE UPGRADE

SELECT name, value from SYS.V$PARAMETER WHERE name LIKE '\_%' ESCAPE '\' order by name;

set echo off
