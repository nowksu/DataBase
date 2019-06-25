SELECT empno, ename,
  TO_CHAR( hiredate, 'YYYY/MM/DD' ) AS HIREDATE,
  TO_CHAR( NEXT_DAY( ADD_MONTHS( hiredate, 3 ), '¿ù¿äÀÏ' ), 'YYYY/MM/DD' ) AS R_JOB,
  TO_CHAR( NVL2( comm, TO_CHAR( comm ), 'N/A' ) ) AS COMM
  FROM emp;