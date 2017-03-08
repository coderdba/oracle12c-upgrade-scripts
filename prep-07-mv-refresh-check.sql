set echo on
prompt MV REFRESHES IN PROGRESS
select s.obj#,o.obj#,s.containerobj#,lastrefreshdate,pflags,xpflags,o.name,o.owner#, bitand(s.mflags, 8) 
from obj$ o, sum$ s
where o.obj# = s.obj# and o.type# = 42 AND bitand(s.mflags, 8) = 8;

set echo off
