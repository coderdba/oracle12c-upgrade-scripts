SQL> 
SQL> 	 SELECT 'CREATE '||DECODE(U.NAME,'PUBLIC','public ')||'DATABASE LINK '||CHR(10)
  2  	 ||DECODE(U.NAME,'PUBLIC',Null, 'SYS','',U.NAME||'.')|| L.NAME||chr(10)
  3  	 ||'CONNECT TO ' || L.USERID || ' IDENTIFIED BY "'||L.PASSWORD||'" USING
  4  	 '''||L.HOST||''''
  5  	 ||chr(10)||';' TEXT
  6  	 FROM SYS.LINK$ L, SYS.USER$ U
  7  	 WHERE L.OWNER# = U.USER#;
SQL> 
SQL> spool off
