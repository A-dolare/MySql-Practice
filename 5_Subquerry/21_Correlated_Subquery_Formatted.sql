-- =====================================================
-- 20_Correlated_Subquery.sql
-- Topic: Correlated Subqueries
-- =====================================================

-- =====================================================
-- EXISTS operator: returns TRUE if the subquery returns at least one row, FALSE otherwise.
-- NOT EXISTS operator: returns TRUE if the subquery returns zero rows.
-- =====================================================

--                                     ASSIGNMENT QUESTIONS

-- -----------------------------------------------------
-- Q1 WAQTD dnames in which there are employees working .
-- -----------------------------------------------------

SELECT DNAME
FROM DEPT D
WHERE EXISTS (
SELECT 1
FROM EMP E
WHERE E.DEPTNO = D.DEPTNO
);
-- +------------+
-- | DNAME      |
-- +------------+
-- | ACCOUNTING |
-- | RESEARCH   |
-- | SALES      |
-- +------------+

-- -----------------------------------------------------
-- Q2 WAQTD dname in which there are no employees working .
-- -----------------------------------------------------

SELECT DNAME
FROM DEPT D
WHERE NOT EXISTS (
SELECT 1
FROM EMP E
WHERE E.DEPTNO = D.DEPTNO
);
-- +------------+
-- | DNAME      |
-- +------------+
-- | OPERATIONS |
-- +------------+

-- -----------------------------------------------------
-- Q3 Find all employees who have at least one subordinate.
-- -----------------------------------------------------
SELECT ENAME
FROM EMP E
WHERE EXISTS (
SELECT 1 FROM EMP E2 WHERE E2.MGR = E.EMPNO
);
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- | BLAKE |
-- | CLARK |
-- | SCOTT |
-- | KING  |
-- | FORD  |
-- +-------+

-- -----------------------------------------------------
-- Q4 Find all managers who have at least one CLERK reporting to them.
-- -----------------------------------------------------
SELECT E1.ENAME
FROM EMP E1
WHERE EXISTS (
SELECT 1 FROM EMP E2
WHERE E2.MGR = E1.EMPNO AND E2.JOB = 'CLERK'
);
-- +-------+
-- | ENAME |
-- +-------+
-- | BLAKE |
-- | CLARK |
-- | SCOTT |
-- | FORD  |
-- +-------+

-- -----------------------------------------------------
-- Q5 Find all employees whose salary is greater than at least one employee in the same department..
-- -----------------------------------------------------
-- Method - 1
SELECT ENAME, DEPTNO, SAL
FROM EMP E1
WHERE SAL > (
SELECT MIN(SAL) FROM EMP E2 WHERE E2.DEPTNO = E1.DEPTNO
);
-- Method - 2
SELECT E1.ENAME, E1.DEPTNO, E1.SAL
FROM EMP E1
WHERE EXISTS (
SELECT 1 FROM EMP E2
WHERE E2.DEPTNO = E1.DEPTNO AND E2.SAL < E1.SAL
);

-- +--------+--------+------+
-- | ENAME  | DEPTNO | SAL  |
-- +--------+--------+------+
-- | ALLEN  |     30 | 1600 |
-- | WARD   |     30 | 1250 |
-- | JONES  |     20 | 2975 |
-- | MARTIN |     30 | 1250 |
-- | BLAKE  |     30 | 2850 |
-- | CLARK  |     10 | 2450 |
-- | SCOTT  |     20 | 3000 |
-- | KING   |     10 | 5000 |
-- | TURNER |     30 | 1500 |
-- | ADAMS  |     20 | 1100 |
-- | FORD   |     20 | 3000 |
-- +--------+--------+------+

-- -----------------------------------------------------
-- Q6 Find all departments where at least one employee earns more than 3000.
-- -----------------------------------------------------
SELECT D.DNAME, D.LOC
FROM DEPT D
WHERE EXISTS (
SELECT 1 FROM EMP E WHERE E.DEPTNO = D.DEPTNO AND E.SAL > 3000
);
-- +------------+----------+
-- | DNAME      | LOC      |
-- +------------+----------+
-- | ACCOUNTING | NEW YORK |
-- +------------+----------+

-- -----------------------------------------------------
-- Q7 Find all employees who have no subordinates (i.e., not a manager of anyone).
-- -----------------------------------------------------
SELECT ENAME
FROM EMP E
WHERE NOT EXISTS (
SELECT 1 FROM EMP E2 WHERE E2.MGR = E.EMPNO
);
-- +--------+
-- | ENAME  |
-- +--------+
-- | SMITH  |
-- | ALLEN  |
-- | WARD   |
-- | MARTIN |
-- | TURNER |
-- | ADAMS  |
-- | JAMES  |
-- | MILLER |
-- +--------+

-- -----------------------------------------------------
-- Q8 Find all managers who have no CLERK reporting to them.
-- -----------------------------------------------------
SELECT E1.ENAME
FROM EMP E1
WHERE E1.JOB IN ('MANAGER','PRESIDENT')
AND NOT EXISTS (
SELECT 1 FROM EMP E2
WHERE E2.MGR = E1.EMPNO AND E2.JOB = 'CLERK'
);
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- | KING  |
-- +-------+

-- -----------------------------------------------------
-- Q9 Find all departments where no employee earns more than 5000.
-- -----------------------------------------------------
SELECT D.DNAME, D.LOC
FROM DEPT D
WHERE NOT EXISTS (
SELECT 1 FROM EMP E WHERE E.DEPTNO = D.DEPTNO AND E.SAL > 5000
);
-- +------------+----------+
-- | DNAME      | LOC      |
-- +------------+----------+
-- | ACCOUNTING | NEW YORK |
-- | RESEARCH   | DALLAS   |
-- | SALES      | CHICAGO  |
-- | OPERATIONS | BOSTON   |
-- +------------+----------+

-- -----------------------------------------------------
-- Q10 Find all employees whose salary is not greater than any
-- -----------------------------------------------------
-- other employee in the same department (i.e., they earn the minimum in their dept).
SELECT E1.ENAME, E1.DEPTNO, E1.SAL
FROM EMP E1
WHERE NOT EXISTS (
SELECT 1 FROM EMP E2
WHERE E2.DEPTNO = E1.DEPTNO AND E2.SAL < E1.SAL
);
-- +--------+--------+------+
-- | ENAME  | DEPTNO | SAL  |
-- +--------+--------+------+
-- | SMITH  |     20 |  800 |
-- | JAMES  |     30 |  950 |
-- | MILLER |     10 | 1300 |
-- +--------+--------+------+