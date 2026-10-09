-- ===============================================================
-- INTERVIEW_ORIENTED_QUESTIONS.sql
-- SCOTT Schema - SQL Interview Practice
-- Directly Executable MySQL Script
-- ===============================================================

-- This file contains frequently asked SQL interview questions.
-- Questions cover joins, subqueries, grouping, aggregates,
-- correlated subqueries, self joins, and analytical thinking.

-- INTERVIEW QUESTIONS

-- ===============================================================
-- Q1 Find the employee(s) earning the highest salary
-- ===============================================================

SELECT *
FROM EMP
WHERE SAL = (
SELECT MAX(SAL)
FROM EMP
);
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- +-------+-------+-----------+------+------------+------+------+--------+

-- ===============================================================
-- Q2 Find the employee(s) earning the second highest salary
-- ===============================================================

SELECT *
FROM EMP
WHERE SAL = (
SELECT MAX(SAL)
FROM EMP
WHERE SAL < (
SELECT MAX(SAL)
FROM EMP
)
);
-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- ===============================================================
-- Q3 Find the employee(s) earning the third highest salary
-- ===============================================================

SELECT *
FROM EMP
WHERE SAL = (
SELECT MAX(SAL)
FROM EMP
WHERE SAL < (
SELECT MAX(SAL)
FROM EMP
WHERE SAL < (
SELECT MAX(SAL)
FROM EMP
)
)
);
-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- ===============================================================
-- Q4 Find employees earning more than the average salary
-- ===============================================================

SELECT ENAME, SAL
FROM EMP
WHERE SAL > (
SELECT AVG(SAL)
FROM EMP
);
-- +-------+------+
-- | ENAME | SAL  |
-- +-------+------+
-- | JONES | 2975 |
-- | BLAKE | 2850 |
-- | CLARK | 2450 |
-- | SCOTT | 3000 |
-- | KING  | 5000 |
-- | FORD  | 3000 |
-- +-------+------+

-- ===============================================================
-- Q5 Find employees earning less than the average salary
-- ===============================================================

SELECT ENAME, SAL
FROM EMP
WHERE SAL < (
SELECT AVG(SAL)
FROM EMP
);
-- +--------+------+
-- | ENAME  | SAL  |
-- +--------+------+
-- | SMITH  |  800 |
-- | ALLEN  | 1600 |
-- | WARD   | 1250 |
-- | MARTIN | 1250 |
-- | TURNER | 1500 |
-- | ADAMS  | 1100 |
-- | JAMES  |  950 |
-- | MILLER | 1300 |
-- +--------+------+

-- ===============================================================
-- Q6 Find employees earning more than their manager
-- ===============================================================

SELECT E.ENAME,
E.SAL,
M.ENAME AS MANAGER_NAME,
M.SAL AS MANAGER_SAL
FROM EMP E
JOIN EMP M
ON E.MGR = M.EMPNO
WHERE E.SAL > M.SAL;
-- +-------+------+--------------+-------------+
-- | ENAME | SAL  | MANAGER_NAME | MANAGER_SAL |
-- +-------+------+--------------+-------------+
-- | FORD  | 3000 | JONES        |        2975 |
-- | SCOTT | 3000 | JONES        |        2975 |
-- +-------+------+--------------+-------------+

-- ===============================================================
-- Q7 Find employees hired before their manager
-- ===============================================================

SELECT E.ENAME,
E.HIREDATE,
M.ENAME AS MANAGER_NAME,
M.HIREDATE AS MANAGER_HIREDATE
FROM EMP E
JOIN EMP M
ON E.MGR = M.EMPNO
WHERE E.HIREDATE < M.HIREDATE;
-- +--------+------------+--------------+------------------+
-- | ENAME  | HIREDATE   | MANAGER_NAME | MANAGER_HIREDATE |
-- +--------+------------+--------------+------------------+
-- | TURNER | 1980-09-08 | BLAKE        | 1981-05-01       |
-- | WARD   | 1981-02-22 | BLAKE        | 1981-05-01       |
-- | ALLEN  | 1981-02-20 | BLAKE        | 1981-05-01       |
-- | CLARK  | 1981-06-09 | KING         | 1981-11-17       |
-- | BLAKE  | 1981-05-01 | KING         | 1981-11-17       |
-- | JONES  | 1981-04-02 | KING         | 1981-11-17       |
-- | SMITH  | 1980-12-17 | FORD         | 1981-12-03       |
-- +--------+------------+--------------+------------------+

-- ===============================================================
-- Q8 Find employees working in the same department as SMITH
-- ===============================================================

SELECT ENAME
FROM EMP
WHERE DEPTNO = (
SELECT DEPTNO
FROM EMP
WHERE ENAME = 'SMITH'
);
-- +-------+
-- | ENAME |
-- +-------+
-- | SMITH |
-- | JONES |
-- | SCOTT |
-- | ADAMS |
-- | FORD  |
-- +-------+

-- ===============================================================
-- Q9 Find employees earning the maximum salary in each department
-- ===============================================================

SELECT E.*
FROM EMP E
WHERE SAL = (
SELECT MAX(SAL)
FROM EMP
WHERE DEPTNO = E.DEPTNO
);
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+-----------+------+------------+------+------+--------+

-- ===============================================================
-- Q10 Find employees earning the minimum salary in each department
-- ===============================================================

SELECT E.*
FROM EMP E
WHERE SAL = (
SELECT MIN(SAL)
FROM EMP
WHERE DEPTNO = E.DEPTNO
);
-- +-------+--------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7900 | JAMES  | CLERK | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-------+------+------------+------+------+--------+

-- ===============================================================
-- Q11 Find employees earning above department average salary
-- ===============================================================

SELECT E.ENAME,
E.SAL,
E.DEPTNO
FROM EMP E
WHERE SAL > (
SELECT AVG(SAL)
FROM EMP
WHERE DEPTNO = E.DEPTNO
);
-- +-------+------+--------+
-- | ENAME | SAL  | DEPTNO |
-- +-------+------+--------+
-- | ALLEN | 1600 |     30 |
-- | JONES | 2975 |     20 |
-- | BLAKE | 2850 |     30 |
-- | SCOTT | 3000 |     20 |
-- | KING  | 5000 |     10 |
-- | FORD  | 3000 |     20 |
-- +-------+------+--------+

-- ===============================================================
-- Q12 Find departments having no employees
-- ===============================================================

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

-- ===============================================================
-- Q13 Find departments having employees
-- ===============================================================

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

-- ===============================================================
-- Q14 Find departments having employees
-- ===============================================================

SELECT *
FROM EMP E
WHERE EXISTS (
SELECT 1
FROM EMP S
WHERE S.MGR = E.EMPNO
);
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7566 | JONES | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+-----------+------+------------+------+------+--------+

-- ===============================================================
-- Q15 Find managers having no subordinates
-- ===============================================================

SELECT *
FROM EMP E
WHERE NOT EXISTS (
SELECT 1
FROM EMP S
WHERE S.MGR = E.EMPNO
);
-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- |  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- ===============================================================
-- Q16 Find department with highest average salary
-- ===============================================================

SELECT DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) = (
SELECT MAX(AVG_SAL)
FROM (
SELECT AVG(SAL) AS AVG_SAL
FROM EMP
GROUP BY DEPTNO
) X
);
-- Empty Set

-- ===============================================================
-- Q17 Find department having maximum employees
-- ===============================================================

SELECT DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) = (
SELECT MAX(CNT)
FROM (
SELECT COUNT(*) AS CNT
FROM EMP
GROUP BY DEPTNO
) X
);
-- +--------+
-- | DEPTNO |
-- +--------+
-- |     30 |
-- +--------+

-- ===============================================================
-- Q18 Display employee count department-wise
-- ===============================================================

SELECT DEPTNO,
COUNT(*) AS EMP_COUNT
FROM EMP
GROUP BY DEPTNO;
-- +--------+-----------+
-- | DEPTNO | EMP_COUNT |
-- +--------+-----------+
-- |     20 |         5 |
-- |     30 |         6 |
-- |     10 |         3 |
-- +--------+-----------+

-- ===============================================================
-- Q19 Display total salary department-wise
-- ===============================================================

SELECT DEPTNO,
SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY DEPTNO;
-- +--------+--------------+
-- | DEPTNO | TOTAL_SALARY |
-- +--------+--------------+
-- |     20 |        10875 |
-- |     30 |         9400 |
-- |     10 |         8750 |
-- +--------+--------------+

-- ===============================================================
-- Q20. Display average salary department-wise
-- ===============================================================

SELECT DEPTNO,
AVG(SAL) AS AVG_SALARY
FROM EMP
GROUP BY DEPTNO;
-- +--------+------------+
-- | DEPTNO | AVG_SALARY |
-- +--------+------------+
-- |     20 |  2175.0000 |
-- |     30 |  1566.6667 |
-- |     10 |  2916.6667 |
-- +--------+------------+

-- ===============================================================
-- Q21 Find duplicate salaries
-- ===============================================================

SELECT SAL
FROM EMP
GROUP BY SAL
HAVING COUNT(*) > 1;
-- +------+
-- | SAL  |
-- +------+
-- | 1250 |
-- | 3000 |
-- +------+

-- ===============================================================
-- Q22 Find employees having duplicate salaries
-- ===============================================================

SELECT *
FROM EMP
WHERE SAL IN (
SELECT SAL
FROM EMP
GROUP BY SAL
HAVING COUNT(*) > 1
);
-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- ===============================================================
-- Q23 Find employee(s) receiving highest commission
-- ===============================================================

SELECT *
FROM EMP
WHERE COMM = (
SELECT MAX(COMM)
FROM EMP
);
-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- ===============================================================
-- Q24 Find employees not receiving commission
-- ===============================================================

SELECT *
FROM EMP
WHERE COMM IS NULL;
-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- ===============================================================
-- Q25 Find employees working in DALLAS
-- ===============================================================

SELECT E.ENAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE D.LOC = 'DALLAS';
-- +-------+
-- | ENAME |
-- +-------+
-- | SMITH |
-- | JONES |
-- | SCOTT |
-- | ADAMS |
-- | FORD  |
-- +-------+

-- ===============================================================
-- Q26 Find employees working in SALES department
-- ===============================================================

SELECT E.ENAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME = 'SALES';
-- +--------+
-- | ENAME  |
-- +--------+
-- | ALLEN  |
-- | WARD   |
-- | MARTIN |
-- | BLAKE  |
-- | TURNER |
-- | JAMES  |
-- +--------+

-- ===============================================================
-- Q27 Find longest serving employee
-- ===============================================================

SELECT *
FROM EMP
WHERE HIREDATE = (
SELECT MIN(HIREDATE)
FROM EMP
);
-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- ===============================================================
-- Q28 Find most recently hired employee
-- ===============================================================

SELECT *
FROM EMP
WHERE HIREDATE = (
SELECT MAX(HIREDATE)
FROM EMP
);
-- +-------+-------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-------+------+------------+------+------+--------+
-- |  7876 | ADAMS | CLERK | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- +-------+-------+-------+------+------------+------+------+--------+

-- ===============================================================
-- Q29 Find employee(s) earning top 3 distinct salaries
-- ===============================================================

SELECT *
FROM EMP E
WHERE 3 > (
SELECT COUNT(DISTINCT SAL)
FROM EMP
WHERE SAL > E.SAL
);
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7566 | JONES | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+-----------+------+------------+------+------+--------+

-- ===============================================================
-- Q30 Find employee name, department name and location
-- ===============================================================

SELECT E.ENAME,
D.DNAME,
D.LOC
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
-- +--------+------------+----------+
-- | ENAME  | DNAME      | LOC      |
-- +--------+------------+----------+
-- | SMITH  | RESEARCH   | DALLAS   |
-- | ALLEN  | SALES      | CHICAGO  |
-- | WARD   | SALES      | CHICAGO  |
-- | JONES  | RESEARCH   | DALLAS   |
-- | MARTIN | SALES      | CHICAGO  |
-- | BLAKE  | SALES      | CHICAGO  |
-- | CLARK  | ACCOUNTING | NEW YORK |
-- | SCOTT  | RESEARCH   | DALLAS   |
-- | KING   | ACCOUNTING | NEW YORK |
-- | TURNER | SALES      | CHICAGO  |
-- | ADAMS  | RESEARCH   | DALLAS   |
-- | JAMES  | SALES      | CHICAGO  |
-- | FORD   | RESEARCH   | DALLAS   |
-- | MILLER | ACCOUNTING | NEW YORK |
-- +--------+------------+----------+