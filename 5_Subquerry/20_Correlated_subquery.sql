
-- #                                    ASSIGNMENT QUESTIONS

 -- Q1 WAQTD dnames in which there are employees working .

mysSELECT E1.ENAME, E2.ENAME
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.JOB = 'CLERK';
-- +--------+-------+
-- | ENAME  | ENAME |
-- +--------+-------+
-- | JAMES  | BLAKE |
-- | MILLER | CLARK |
-- | ADAMS  | SCOTT |
-- | SMITH  | FORD  |
-- +--------+-------+
-- 4 rows in set (0.00 sec)

-- Q2 WAQTD dname in which there are no employees working .

SELECT E1.ENAME, E2.JOB
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E2.DEPTNO IN (10, 20);
-- +--------+-----------+
-- | ENAME  | JOB       |
-- +--------+-----------+
-- | SMITH  | ANALYST   |
-- | JONES  | PRESIDENT |
-- | BLAKE  | PRESIDENT |
-- | CLARK  | PRESIDENT |
-- | SCOTT  | MANAGER   |
-- | ADAMS  | ANALYST   |
-- | FORD   | MANAGER   |
-- | MILLER | MANAGER   |
-- +--------+-----------+
-- 8 rows in set (0.00 sec)
