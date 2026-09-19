-- =====================================================
-- FORMATTED VERSION: Cross-&-Inner_joins(1).sql
-- Cleaned for direct execution in MySQL
-- =====================================================

# CROSS JOIN

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

-- NOTE: Few questions on cross join as it is not used much

# INNER JOIN

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
