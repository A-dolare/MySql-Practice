-- =====================================================
-- FORMATTED VERSION: Cross-&-Inner_joins(1).sql
-- Cleaned for direct execution in MySQL
-- =====================================================

--  CROSS JOIN

-- -----------------------------------------------------
-- WAQTD ename and dept name for all the employees .
-- -----------------------------------------------------

SELECT ENAME , DNAME
FROM EMP CROSS JOIN DEPT ;

-- +--------+------------+
-- | ENAME  | DNAME      |
-- +--------+------------+
-- | SMITH  | OPERATIONS |
-- | SMITH  | SALES      |
-- | SMITH  | RESEARCH   |
-- | SMITH  | ACCOUNTING |
-- | ALLEN  | OPERATIONS |
-- | ALLEN  | SALES      |
-- | ALLEN  | RESEARCH   |
-- | ALLEN  | ACCOUNTING |
-- | WARD   | OPERATIONS |
-- | WARD   | SALES      |
-- | WARD   | RESEARCH   |
-- | WARD   | ACCOUNTING |
-- | JONES  | OPERATIONS |
-- | JONES  | SALES      |
-- | JONES  | RESEARCH   |
-- | JONES  | ACCOUNTING |
-- | MARTIN | OPERATIONS |
-- | MARTIN | SALES      |
-- | MARTIN | RESEARCH   |
-- | MARTIN | ACCOUNTING |
-- | BLAKE  | OPERATIONS |
-- | BLAKE  | SALES      |
-- | BLAKE  | RESEARCH   |
-- | BLAKE  | ACCOUNTING |
-- | CLARK  | OPERATIONS |
-- | CLARK  | SALES      |
-- | CLARK  | RESEARCH   |
-- | CLARK  | ACCOUNTING |
-- | SCOTT  | OPERATIONS |
-- | SCOTT  | SALES      |
-- | SCOTT  | RESEARCH   |
-- | SCOTT  | ACCOUNTING |
-- | KING   | OPERATIONS |
-- | KING   | SALES      |
-- | KING   | RESEARCH   |
-- | KING   | ACCOUNTING |
-- | TURNER | OPERATIONS |
-- | TURNER | SALES      |
-- | TURNER | RESEARCH   |
-- | TURNER | ACCOUNTING |
-- | ADAMS  | OPERATIONS |
-- | ADAMS  | SALES      |
-- | ADAMS  | RESEARCH   |
-- | ADAMS  | ACCOUNTING |
-- | JAMES  | OPERATIONS |
-- | JAMES  | SALES      |
-- | JAMES  | RESEARCH   |
-- | JAMES  | ACCOUNTING |
-- | FORD   | OPERATIONS |
-- | FORD   | SALES      |
-- | FORD   | RESEARCH   |
-- | FORD   | ACCOUNTING |
-- | MILLER | OPERATIONS |
-- | MILLER | SALES      |
-- | MILLER | RESEARCH   |
-- | MILLER | ACCOUNTING |
-- +--------+------------+

--                                                             ASSIGNMENT ON CROSS JOIN
-- Q1 WAQTD all possible combinations of employee names and department names.

SELECT E.ENAME, D.DNAME
FROM EMP E
CROSS JOIN DEPT D;

-- +--------+------------+
-- | ENAME  | DNAME      |
-- +--------+------------+
-- | SMITH  | OPERATIONS |
-- | SMITH  | SALES      |
-- | SMITH  | RESEARCH   |
-- | SMITH  | ACCOUNTING |
-- | ALLEN  | OPERATIONS |
-- | ALLEN  | SALES      |
-- | ALLEN  | RESEARCH   |
-- | ALLEN  | ACCOUNTING |
-- | WARD   | OPERATIONS |
-- | WARD   | SALES      |
-- | WARD   | RESEARCH   |
-- | WARD   | ACCOUNTING |
-- | JONES  | OPERATIONS |
-- | JONES  | SALES      |
-- | JONES  | RESEARCH   |
-- | JONES  | ACCOUNTING |
-- | MARTIN | OPERATIONS |
-- | MARTIN | SALES      |
-- | MARTIN | RESEARCH   |
-- | MARTIN | ACCOUNTING |
-- | BLAKE  | OPERATIONS |
-- | BLAKE  | SALES      |
-- | BLAKE  | RESEARCH   |
-- | BLAKE  | ACCOUNTING |
-- | CLARK  | OPERATIONS |
-- | CLARK  | SALES      |
-- | CLARK  | RESEARCH   |
-- | CLARK  | ACCOUNTING |
-- | SCOTT  | OPERATIONS |
-- | SCOTT  | SALES      |
-- | SCOTT  | RESEARCH   |
-- | SCOTT  | ACCOUNTING |
-- | KING   | OPERATIONS |
-- | KING   | SALES      |
-- | KING   | RESEARCH   |
-- | KING   | ACCOUNTING |
-- | TURNER | OPERATIONS |
-- | TURNER | SALES      |
-- | TURNER | RESEARCH   |
-- | TURNER | ACCOUNTING |
-- | ADAMS  | OPERATIONS |
-- | ADAMS  | SALES      |
-- | ADAMS  | RESEARCH   |
-- | ADAMS  | ACCOUNTING |
-- | JAMES  | OPERATIONS |
-- | JAMES  | SALES      |
-- | JAMES  | RESEARCH   |
-- | JAMES  | ACCOUNTING |
-- | FORD   | OPERATIONS |
-- | FORD   | SALES      |
-- | FORD   | RESEARCH   |
-- | FORD   | ACCOUNTING |
-- | MILLER | OPERATIONS |
-- | MILLER | SALES      |
-- | MILLER | RESEARCH   |
-- | MILLER | ACCOUNTING |
-- +--------+------------+
-- 56 rows in set (0.01 sec)

-- Q2 WAQTD all possible combinations of employee names and department locations.

SELECT E.ENAME, D.LOC
FROM EMP E
CROSS JOIN DEPT D;

-- +--------+----------+
-- | ENAME  | LOC      |
-- +--------+----------+
-- | SMITH  | BOSTON   |
-- | SMITH  | CHICAGO  |
-- | SMITH  | DALLAS   |
-- | SMITH  | NEW YORK |
-- | ALLEN  | BOSTON   |
-- | ALLEN  | CHICAGO  |
-- | ALLEN  | DALLAS   |
-- | ALLEN  | NEW YORK |
-- | WARD   | BOSTON   |
-- | WARD   | CHICAGO  |
-- | WARD   | DALLAS   |
-- | WARD   | NEW YORK |
-- | JONES  | BOSTON   |
-- | JONES  | CHICAGO  |
-- | JONES  | DALLAS   |
-- | JONES  | NEW YORK |
-- | MARTIN | BOSTON   |
-- | MARTIN | CHICAGO  |
-- | MARTIN | DALLAS   |
-- | MARTIN | NEW YORK |
-- | BLAKE  | BOSTON   |
-- | BLAKE  | CHICAGO  |
-- | BLAKE  | DALLAS   |
-- | BLAKE  | NEW YORK |
-- | CLARK  | BOSTON   |
-- | CLARK  | CHICAGO  |
-- | CLARK  | DALLAS   |
-- | CLARK  | NEW YORK |
-- | SCOTT  | BOSTON   |
-- | SCOTT  | CHICAGO  |
-- | SCOTT  | DALLAS   |
-- | SCOTT  | NEW YORK |
-- | KING   | BOSTON   |
-- | KING   | CHICAGO  |
-- | KING   | DALLAS   |
-- | KING   | NEW YORK |
-- | TURNER | BOSTON   |
-- | TURNER | CHICAGO  |
-- | TURNER | DALLAS   |
-- | TURNER | NEW YORK |
-- | ADAMS  | BOSTON   |
-- | ADAMS  | CHICAGO  |
-- | ADAMS  | DALLAS   |
-- | ADAMS  | NEW YORK |
-- | JAMES  | BOSTON   |
-- | JAMES  | CHICAGO  |
-- | JAMES  | DALLAS   |
-- | JAMES  | NEW YORK |
-- | FORD   | BOSTON   |
-- | FORD   | CHICAGO  |
-- | FORD   | DALLAS   |
-- | FORD   | NEW YORK |
-- | MILLER | BOSTON   |
-- | MILLER | CHICAGO  |
-- | MILLER | DALLAS   |
-- | MILLER | NEW YORK |
-- +--------+----------+
-- 56 rows in set (0.00 sec)

-- Q3 WAQTD employee name, job and every available department name.

-- mysql> SELECT E.ENAME, E.JOB, D.DNAME
--     -> FROM EMP E
--     -> CROSS JOIN DEPT D;
-- +--------+-----------+------------+
-- | ENAME  | JOB       | DNAME      |
-- +--------+-----------+------------+
-- | SMITH  | CLERK     | OPERATIONS |
-- | SMITH  | CLERK     | SALES      |
-- | SMITH  | CLERK     | RESEARCH   |
-- | SMITH  | CLERK     | ACCOUNTING |
-- | ALLEN  | SALESMAN  | OPERATIONS |
-- | ALLEN  | SALESMAN  | SALES      |
-- | ALLEN  | SALESMAN  | RESEARCH   |
-- | ALLEN  | SALESMAN  | ACCOUNTING |
-- | WARD   | SALESMAN  | OPERATIONS |
-- | WARD   | SALESMAN  | SALES      |
-- | WARD   | SALESMAN  | RESEARCH   |
-- | WARD   | SALESMAN  | ACCOUNTING |
-- | JONES  | MANAGER   | OPERATIONS |
-- | JONES  | MANAGER   | SALES      |
-- | JONES  | MANAGER   | RESEARCH   |
-- | JONES  | MANAGER   | ACCOUNTING |
-- | MARTIN | SALESMAN  | OPERATIONS |
-- | MARTIN | SALESMAN  | SALES      |
-- | MARTIN | SALESMAN  | RESEARCH   |
-- | MARTIN | SALESMAN  | ACCOUNTING |
-- | BLAKE  | MANAGER   | OPERATIONS |
-- | BLAKE  | MANAGER   | SALES      |
-- | BLAKE  | MANAGER   | RESEARCH   |
-- | BLAKE  | MANAGER   | ACCOUNTING |
-- | CLARK  | MANAGER   | OPERATIONS |
-- | CLARK  | MANAGER   | SALES      |
-- | CLARK  | MANAGER   | RESEARCH   |
-- | CLARK  | MANAGER   | ACCOUNTING |
-- | SCOTT  | ANALYST   | OPERATIONS |
-- | SCOTT  | ANALYST   | SALES      |
-- | SCOTT  | ANALYST   | RESEARCH   |
-- | SCOTT  | ANALYST   | ACCOUNTING |
-- | KING   | PRESIDENT | OPERATIONS |
-- | KING   | PRESIDENT | SALES      |
-- | KING   | PRESIDENT | RESEARCH   |
-- | KING   | PRESIDENT | ACCOUNTING |
-- | TURNER | SALESMAN  | OPERATIONS |
-- | TURNER | SALESMAN  | SALES      |
-- | TURNER | SALESMAN  | RESEARCH   |
-- | TURNER | SALESMAN  | ACCOUNTING |
-- | ADAMS  | CLERK     | OPERATIONS |
-- | ADAMS  | CLERK     | SALES      |
-- | ADAMS  | CLERK     | RESEARCH   |
-- | ADAMS  | CLERK     | ACCOUNTING |
-- | JAMES  | CLERK     | OPERATIONS |
-- | JAMES  | CLERK     | SALES      |
-- | JAMES  | CLERK     | RESEARCH   |
-- | JAMES  | CLERK     | ACCOUNTING |
-- | FORD   | ANALYST   | OPERATIONS |
-- | FORD   | ANALYST   | SALES      |
-- | FORD   | ANALYST   | RESEARCH   |
-- | FORD   | ANALYST   | ACCOUNTING |
-- | MILLER | CLERK     | OPERATIONS |
-- | MILLER | CLERK     | SALES      |
-- | MILLER | CLERK     | RESEARCH   |
-- | MILLER | CLERK     | ACCOUNTING |
-- +--------+-----------+------------+
-- 56 rows in set (0.00 sec)

-- Q4 WAQTD all possible combinations of employee salary and department number.

SELECT E.SAL, D.DEPTNO
FROM EMP E
CROSS JOIN DEPT D;

-- +------+--------+
-- | SAL  | DEPTNO |
-- +------+--------+
-- |  800 |     40 |
-- |  800 |     30 |
-- |  800 |     20 |
-- |  800 |     10 |
-- | 1600 |     40 |
-- | 1600 |     30 |
-- | 1600 |     20 |
-- | 1600 |     10 |
-- | 1250 |     40 |
-- | 1250 |     30 |
-- | 1250 |     20 |
-- | 1250 |     10 |
-- | 2975 |     40 |
-- | 2975 |     30 |
-- | 2975 |     20 |
-- | 2975 |     10 |
-- | 1250 |     40 |
-- | 1250 |     30 |
-- | 1250 |     20 |
-- | 1250 |     10 |
-- | 2850 |     40 |
-- | 2850 |     30 |
-- | 2850 |     20 |
-- | 2850 |     10 |
-- | 2450 |     40 |
-- | 2450 |     30 |
-- | 2450 |     20 |
-- | 2450 |     10 |
-- | 3000 |     40 |
-- | 3000 |     30 |
-- | 3000 |     20 |
-- | 3000 |     10 |
-- | 5000 |     40 |
-- | 5000 |     30 |
-- | 5000 |     20 |
-- | 5000 |     10 |
-- | 1500 |     40 |
-- | 1500 |     30 |
-- | 1500 |     20 |
-- | 1500 |     10 |
-- | 1100 |     40 |
-- | 1100 |     30 |
-- | 1100 |     20 |
-- | 1100 |     10 |
-- |  950 |     40 |
-- |  950 |     30 |
-- |  950 |     20 |
-- |  950 |     10 |
-- | 3000 |     40 |
-- | 3000 |     30 |
-- | 3000 |     20 |
-- | 3000 |     10 |
-- | 1300 |     40 |
-- | 1300 |     30 |
-- | 1300 |     20 |
-- | 1300 |     10 |
-- +------+--------+
-- 56 rows in set (0.00 sec)

-- Q5 WAQTD all possible combinations of employee name, department name and location.

SELECT E.ENAME, D.DNAME, D.LOC
FROM EMP E
CROSS JOIN DEPT D;
-- +--------+------------+----------+
-- | ENAME  | DNAME      | LOC      |
-- +--------+------------+----------+
-- | SMITH  | OPERATIONS | BOSTON   |
-- | SMITH  | SALES      | CHICAGO  |
-- | SMITH  | RESEARCH   | DALLAS   |
-- | SMITH  | ACCOUNTING | NEW YORK |
-- | ALLEN  | OPERATIONS | BOSTON   |
-- | ALLEN  | SALES      | CHICAGO  |
-- | ALLEN  | RESEARCH   | DALLAS   |
-- | ALLEN  | ACCOUNTING | NEW YORK |
-- | WARD   | OPERATIONS | BOSTON   |
-- | WARD   | SALES      | CHICAGO  |
-- | WARD   | RESEARCH   | DALLAS   |
-- | WARD   | ACCOUNTING | NEW YORK |
-- | JONES  | OPERATIONS | BOSTON   |
-- | JONES  | SALES      | CHICAGO  |
-- | JONES  | RESEARCH   | DALLAS   |
-- | JONES  | ACCOUNTING | NEW YORK |
-- | MARTIN | OPERATIONS | BOSTON   |
-- | MARTIN | SALES      | CHICAGO  |
-- | MARTIN | RESEARCH   | DALLAS   |
-- | MARTIN | ACCOUNTING | NEW YORK |
-- | BLAKE  | OPERATIONS | BOSTON   |
-- | BLAKE  | SALES      | CHICAGO  |
-- | BLAKE  | RESEARCH   | DALLAS   |
-- | BLAKE  | ACCOUNTING | NEW YORK |
-- | CLARK  | OPERATIONS | BOSTON   |
-- | CLARK  | SALES      | CHICAGO  |
-- | CLARK  | RESEARCH   | DALLAS   |
-- | CLARK  | ACCOUNTING | NEW YORK |
-- | SCOTT  | OPERATIONS | BOSTON   |
-- | SCOTT  | SALES      | CHICAGO  |
-- | SCOTT  | RESEARCH   | DALLAS   |
-- | SCOTT  | ACCOUNTING | NEW YORK |
-- | KING   | OPERATIONS | BOSTON   |
-- | KING   | SALES      | CHICAGO  |
-- | KING   | RESEARCH   | DALLAS   |
-- | KING   | ACCOUNTING | NEW YORK |
-- | TURNER | OPERATIONS | BOSTON   |
-- | TURNER | SALES      | CHICAGO  |
-- | TURNER | RESEARCH   | DALLAS   |
-- | TURNER | ACCOUNTING | NEW YORK |
-- | ADAMS  | OPERATIONS | BOSTON   |
-- | ADAMS  | SALES      | CHICAGO  |
-- | ADAMS  | RESEARCH   | DALLAS   |
-- | ADAMS  | ACCOUNTING | NEW YORK |
-- | JAMES  | OPERATIONS | BOSTON   |
-- | JAMES  | SALES      | CHICAGO  |
-- | JAMES  | RESEARCH   | DALLAS   |
-- | JAMES  | ACCOUNTING | NEW YORK |
-- | FORD   | OPERATIONS | BOSTON   |
-- | FORD   | SALES      | CHICAGO  |
-- | FORD   | RESEARCH   | DALLAS   |
-- | FORD   | ACCOUNTING | NEW YORK |
-- | MILLER | OPERATIONS | BOSTON   |
-- | MILLER | SALES      | CHICAGO  |
-- | MILLER | RESEARCH   | DALLAS   |
-- | MILLER | ACCOUNTING | NEW YORK |
-- +--------+------------+----------+
-- 56 rows in set (0.00 sec)

-- NOTE: Few questions on cross join as it is not used much

--  INNER JOIN

-- ============================================================
-- PART A
-- ============================================================

-- Q1. WAQTD ENAME AND DNAME FOR ALL THE EMPLOYEES

SELECT E.ENAME, D.DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;

-- +--------+------------+
-- | ENAME  | DNAME      |
-- +--------+------------+
-- | SMITH  | RESEARCH   |
-- | ALLEN  | SALES      |
-- | WARD   | SALES      |
-- | JONES  | RESEARCH   |
-- | MARTIN | SALES      |
-- | BLAKE  | SALES      |
-- | CLARK  | ACCOUNTING |
-- | SCOTT  | RESEARCH   |
-- | KING   | ACCOUNTING |
-- | TURNER | SALES      |
-- | ADAMS  | RESEARCH   |
-- | JAMES  | SALES      |
-- | FORD   | RESEARCH   |
-- | MILLER | ACCOUNTING |
-- +--------+------------+

------------------------------------------------------------

-- Q2. WAQTD ENAME AND LOC FOR ALL THE EMPLOYEES WORKING AS MANAGER

SELECT E.ENAME, D.LOC
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.JOB = 'MANAGER';

-- +-------+----------+
-- | ENAME | LOC      |
-- +-------+----------+
-- | CLARK | NEW YORK |
-- | JONES | DALLAS   |
-- | BLAKE | CHICAGO  |
-- +-------+----------+

------------------------------------------------------------

-- Q3. WAQTD ENAME, SAL AND DNAME OF THE EMPLOYEE WORKING AS
-- CLERK IN DEPT 20 WITH A SALARY OF MORE THAN 1800

SELECT E.ENAME, E.SAL, D.DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.DEPTNO = 20
  AND E.JOB = 'CLERK'
  AND E.SAL > 1800;

-- Empty set (0.00 sec)

------------------------------------------------------------

-- Q4. WAQTD ENAME, DEPTNO, DNAME AND LOC OF THE EMPLOYEE
-- EARNING MORE THAN 2000 IN NEW YORK

SELECT E.ENAME, D.DEPTNO, D.DNAME, D.LOC
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.SAL > 2000
  AND D.LOC = 'NEW YORK';

-- +-------+--------+------------+----------+
-- | ENAME | DEPTNO | DNAME      | LOC      |
-- +-------+--------+------------+----------+
-- | CLARK |     10 | ACCOUNTING | NEW YORK |
-- | KING  |     10 | ACCOUNTING | NEW YORK |
-- +-------+--------+------------+----------+

-- ============================================================
-- ASSIGNMENT ON INNER JOIN
-- ============================================================

-- Q1. NAME OF THE EMPLOYEE AND HIS LOCATION OF ALL THE EMPLOYEES

SELECT E.ENAME, D.LOC
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;

-- +--------+----------+
-- | ENAME  | LOC      |
-- +--------+----------+
-- | SMITH  | DALLAS   |
-- | ALLEN  | CHICAGO  |
-- | WARD   | CHICAGO  |
-- | JONES  | DALLAS   |
-- | MARTIN | CHICAGO  |
-- | BLAKE  | CHICAGO  |
-- | CLARK  | NEW YORK |
-- | SCOTT  | DALLAS   |
-- | KING   | NEW YORK |
-- | TURNER | CHICAGO  |
-- | ADAMS  | DALLAS   |
-- | JAMES  | CHICAGO  |
-- | FORD   | DALLAS   |
-- | MILLER | NEW YORK |
-- +--------+----------+

------------------------------------------------------------

-- Q2. WAQTD DNAME AND SALARY FOR ALL THE EMPLOYEES WORKING IN ACCOUNTING

SELECT D.DNAME, E.SAL
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME = 'ACCOUNTING';

-- +------------+------+
-- | DNAME      | SAL  |
-- +------------+------+
-- | ACCOUNTING | 2450 |
-- | ACCOUNTING | 5000 |
-- | ACCOUNTING | 1300 |
-- +------------+------+

------------------------------------------------------------

-- Q3. WAQTD DNAME AND ANNUAL SALARY FOR ALL EMPLOYEES WHOSE SALARY IS MORE THAN 2340

SELECT D.DNAME,
       E.SAL * 12 AS ANNUAL_SAL
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.SAL > 2340;

-- +------------+------------+
-- | DNAME      | ANNUAL_SAL |
-- +------------+------------+
-- | RESEARCH   |      35700 |
-- | SALES      |      34200 |
-- | ACCOUNTING |      29400 |
-- | RESEARCH   |      36000 |
-- | ACCOUNTING |      60000 |
-- | RESEARCH   |      36000 |
-- +------------+------------+

------------------------------------------------------------

-- Q4. WAQTD ENAME AND DNAME FOR EMPLOYEES HAVING CHARACTER 'A' IN THEIR DNAME

SELECT E.ENAME, D.DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME LIKE '%A%';

-- +--------+------------+
-- | ENAME  | DNAME      |
-- +--------+------------+
-- | SMITH  | RESEARCH   |
-- | ALLEN  | SALES      |
-- | WARD   | SALES      |
-- | JONES  | RESEARCH   |
-- | MARTIN | SALES      |
-- | BLAKE  | SALES      |
-- | CLARK  | ACCOUNTING |
-- | SCOTT  | RESEARCH   |
-- | KING   | ACCOUNTING |
-- | TURNER | SALES      |
-- | ADAMS  | RESEARCH   |
-- | JAMES  | SALES      |
-- | FORD   | RESEARCH   |
-- | MILLER | ACCOUNTING |
-- +--------+------------+

------------------------------------------------------------

-- Q5. WAQTD ENAME AND DNAME FOR ALL THE EMPLOYEES WORKING AS SALESMAN

SELECT E.ENAME, D.DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.JOB = 'SALESMAN';

-- +--------+-------+
-- | ENAME  | DNAME |
-- +--------+-------+
-- | TURNER | SALES |
-- | MARTIN | SALES |
-- | WARD   | SALES |
-- | ALLEN  | SALES |
-- +--------+-------+

------------------------------------------------------------

-- Q6. WAQTD DNAME AND JOB FOR ALL THE EMPLOYEES WHOSE JOB
-- AND DNAME STARTS WITH CHARACTER 'S'

SELECT D.DNAME, E.JOB
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME LIKE 'S%'
  AND E.JOB LIKE 'S%';

-- +-------+----------+
-- | DNAME | JOB      |
-- +-------+----------+
-- | SALES | SALESMAN |
-- | SALES | SALESMAN |
-- | SALES | SALESMAN |
-- | SALES | SALESMAN |
-- +-------+----------+

------------------------------------------------------------

-- Q7. WAQTD DNAME AND MGR NO FOR EMPLOYEES REPORTING TO 7839

SELECT D.DNAME, E.MGR
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.MGR = 7839;

-- +------------+------+
-- | DNAME      | MGR  |
-- +------------+------+
-- | ACCOUNTING | 7839 |
-- | RESEARCH   | 7839 |
-- | SALES      | 7839 |
-- +------------+------+

------------------------------------------------------------

-- Q8. WAQTD DNAME AND HIREDATE FOR EMPLOYEES HIRED AFTER 1983
-- INTO ACCOUNTING OR RESEARCH DEPT

SELECT D.DNAME, E.HIREDATE
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.HIREDATE > '1983-12-31'
  AND D.DNAME IN ('ACCOUNTING', 'RESEARCH');

-- Empty Set

------------------------------------------------------------

-- Q9. WAQTD ENAME AND DNAME OF THE EMPLOYEES WHO ARE GETTING COMM
-- IN DEPT 10 OR 30

SELECT E.ENAME, D.DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.COMM IS NOT NULL
  AND D.DEPTNO IN (10,30);

-- +--------+-------+
-- | ENAME  | DNAME |
-- +--------+-------+
-- | ALLEN  | SALES |
-- | WARD   | SALES |
-- | MARTIN | SALES |
-- | TURNER | SALES |
-- +--------+-------+

------------------------------------------------------------

-- Q10. WAQTD DNAME AND EMPNO FOR ALL THE EMPLOYEES WHOSE EMPNO
-- ARE (7839,7902) AND ARE WORKING IN LOC NEW YORK

SELECT D.DNAME, E.EMPNO
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.EMPNO IN (7839,7902)
  AND D.LOC = 'NEW YORK';

-- +------------+-------+
-- | DNAME      | EMPNO |
-- +------------+-------+
-- | ACCOUNTING |  7839 |
-- +------------+-------+
