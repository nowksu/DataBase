SELECT empno, ename, mgr, 
    CASE 
	   WHEN mgr IS NULL THEN '0000'
	   WHEN SUBSTR( mgr, 1, 2 ) = '75' THEN '5555'
	   WHEN SUBSTR( mgr, 1, 2 ) = '76' THEN '6666'
	   WHEN SUBSTR( mgr, 1, 2 ) = '77' THEN '7777'
	   WHEN SUBSTR( mgr, 1, 2 ) = '78' THEN '8888'
	   ELSE TO_CHAR( mgr )
    END AS CHG_MG
	FROM emp;
