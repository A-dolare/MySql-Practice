-- ============================================================
-- MIXED PRACTICE QUESTIONS: JOINS
-- Schema: SCOTT
--
-- Questions are preserved as comments.
-- SQL queries remain executable.
-- Original output tables and row counts are preserved as comments.
-- MySQL command-line prompts (mysql>, ->) have been removed.
-- ============================================================

-- Q1 Employee details with department information

SELECT E.ENAME, E.JOB, E.SAL, D.DNAME, D.LOC
FROM EMP E
INNER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO
WHERE E.SAL > 2000
  AND D.LOC <> 'CHICAGO';
+-------+-----------+------+------------+----------+
| ENAME | JOB       | SAL  | DNAME      | LOC      |
+-------+-----------+------+------------+----------+
| JONES | MANAGER   | 2975 | RESEARCH   | DALLAS   |
| CLARK | MANAGER   | 2450 | ACCOUNTING | NEW YORK |
| SCOTT | ANALYST   | 3000 | RESEARCH   | DALLAS   |
| KING  | PRESIDENT | 5000 | ACCOUNTING | NEW YORK |
| FORD  | ANALYST   | 3000 | RESEARCH   | DALLAS   |
+-------+-----------+------+------------+----------+
5 rows in set (0.00 sec)


-- Q2 Employees working in departments whose names and jobs both start with S

SELECT E.ENAME, E.JOB, D.DNAME, D.LOC
FROM EMP E
INNER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO
WHERE E.JOB LIKE 'S%'
  AND D.DNAME LIKE 'S%';
+--------+----------+-------+---------+
| ENAME  | JOB      | DNAME | LOC     |
+--------+----------+-------+---------+
| ALLEN  | SALESMAN | SALES | CHICAGO |
| WARD   | SALESMAN | SALES | CHICAGO |
| MARTIN | SALESMAN | SALES | CHICAGO |
| TURNER | SALESMAN | SALES | CHICAGO |
+--------+----------+-------+---------+
4 rows in set (0.00 sec)


-- Q3 Employees receiving commission, with annual salary and department details

SELECT E.ENAME,
       E.SAL * 12 AS ANNUAL_SALARY,
       E.COMM,
       D.DNAME,
       D.LOC
FROM EMP E
INNER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO
WHERE E.COMM IS NOT NULL
  AND E.SAL > 1200;
+--------+---------------+------+-------+---------+
| ENAME  | ANNUAL_SALARY | COMM | DNAME | LOC     |
+--------+---------------+------+-------+---------+
| ALLEN  |         19200 |  300 | SALES | CHICAGO |
| WARD   |         15000 |  500 | SALES | CHICAGO |
| MARTIN |         15000 | 1400 | SALES | CHICAGO |
| TURNER |         18000 |    0 | SALES | CHICAGO |
+--------+---------------+------+-------+---------+
4 rows in set (0.00 sec)


-- Q4 Department-wise employee count and total salary

SELECT D.DNAME,
       D.LOC,
       COUNT(E.EMPNO) AS EMP_COUNT,
       SUM(E.SAL) AS TOTAL_SALARY
FROM EMP E
INNER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO
GROUP BY D.DEPTNO, D.DNAME, D.LOC
HAVING COUNT(E.EMPNO) > 3;
+----------+---------+-----------+--------------+
| DNAME    | LOC     | EMP_COUNT | TOTAL_SALARY |
+----------+---------+-----------+--------------+
| RESEARCH | DALLAS  |         5 |        10875 |
| SALES    | CHICAGO |         6 |         9400 |
+----------+---------+-----------+--------------+
2 rows in set (0.00 sec)


-- Q5 Generate employee-department combinations

SELECT E.ENAME,
       E.SAL,
       D.DNAME,
       D.LOC
FROM EMP E
CROSS JOIN DEPT D
WHERE E.SAL > 2500;
+-------+------+------------+----------+
| ENAME | SAL  | DNAME      | LOC      |
+-------+------+------------+----------+
| JONES | 2975 | OPERATIONS | BOSTON   |
| JONES | 2975 | SALES      | CHICAGO  |
| JONES | 2975 | RESEARCH   | DALLAS   |
| JONES | 2975 | ACCOUNTING | NEW YORK |
| BLAKE | 2850 | OPERATIONS | BOSTON   |
| BLAKE | 2850 | SALES      | CHICAGO  |
| BLAKE | 2850 | RESEARCH   | DALLAS   |
| BLAKE | 2850 | ACCOUNTING | NEW YORK |
| SCOTT | 3000 | OPERATIONS | BOSTON   |
| SCOTT | 3000 | SALES      | CHICAGO  |
| SCOTT | 3000 | RESEARCH   | DALLAS   |
| SCOTT | 3000 | ACCOUNTING | NEW YORK |
| KING  | 5000 | OPERATIONS | BOSTON   |
| KING  | 5000 | SALES      | CHICAGO  |
| KING  | 5000 | RESEARCH   | DALLAS   |
| KING  | 5000 | ACCOUNTING | NEW YORK |
| FORD  | 3000 | OPERATIONS | BOSTON   |
| FORD  | 3000 | SALES      | CHICAGO  |
| FORD  | 3000 | RESEARCH   | DALLAS   |
| FORD  | 3000 | ACCOUNTING | NEW YORK |
+-------+------+------------+----------+
20 rows in set (0.00 sec)


-- Q6 Compare employee salary with department location

SELECT E.ENAME, E.SAL, D.DNAME, D.LOC
FROM EMP E
INNER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO
WHERE E.SAL BETWEEN 1000 AND 3000
  AND D.LOC IN ('DALLAS', 'NEW YORK');
+--------+------+------------+----------+
| ENAME  | SAL  | DNAME      | LOC      |
+--------+------+------------+----------+
| MILLER | 1300 | ACCOUNTING | NEW YORK |
| CLARK  | 2450 | ACCOUNTING | NEW YORK |
| FORD   | 3000 | RESEARCH   | DALLAS   |
| ADAMS  | 1100 | RESEARCH   | DALLAS   |
| SCOTT  | 3000 | RESEARCH   | DALLAS   |
| JONES  | 2975 | RESEARCH   | DALLAS   |
+--------+------+------------+----------+
6 rows in set (0.00 sec)


-- Q7 Display all employees with their department names

SELECT E.ENAME, E.JOB, E.SAL, D.DNAME
FROM EMP E
LEFT OUTER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO;
+--------+-----------+------+------------+
| ENAME  | JOB       | SAL  | DNAME      |
+--------+-----------+------+------------+
| SMITH  | CLERK     |  800 | RESEARCH   |
| ALLEN  | SALESMAN  | 1600 | SALES      |
| WARD   | SALESMAN  | 1250 | SALES      |
| JONES  | MANAGER   | 2975 | RESEARCH   |
| MARTIN | SALESMAN  | 1250 | SALES      |
| BLAKE  | MANAGER   | 2850 | SALES      |
| CLARK  | MANAGER   | 2450 | ACCOUNTING |
| SCOTT  | ANALYST   | 3000 | RESEARCH   |
| KING   | PRESIDENT | 5000 | ACCOUNTING |
| TURNER | SALESMAN  | 1500 | SALES      |
| ADAMS  | CLERK     | 1100 | RESEARCH   |
| JAMES  | CLERK     |  950 | SALES      |
| FORD   | ANALYST   | 3000 | RESEARCH   |
| MILLER | CLERK     | 1300 | ACCOUNTING |
+--------+-----------+------+------------+
14 rows in set (0.00 sec)


-- Q8 Display all departments and their employees

SELECT D.DEPTNO, D.DNAME, E.ENAME, E.JOB
FROM EMP E
RIGHT OUTER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO;
+--------+------------+--------+-----------+
| DEPTNO | DNAME      | ENAME  | JOB       |
+--------+------------+--------+-----------+
|     10 | ACCOUNTING | MILLER | CLERK     |
|     10 | ACCOUNTING | KING   | PRESIDENT |
|     10 | ACCOUNTING | CLARK  | MANAGER   |
|     20 | RESEARCH   | FORD   | ANALYST   |
|     20 | RESEARCH   | ADAMS  | CLERK     |
|     20 | RESEARCH   | SCOTT  | ANALYST   |
|     20 | RESEARCH   | JONES  | MANAGER   |
|     20 | RESEARCH   | SMITH  | CLERK     |
|     30 | SALES      | JAMES  | CLERK     |
|     30 | SALES      | TURNER | SALESMAN  |
|     30 | SALES      | BLAKE  | MANAGER   |
|     30 | SALES      | MARTIN | SALESMAN  |
|     30 | SALES      | WARD   | SALESMAN  |
|     30 | SALES      | ALLEN  | SALESMAN  |
|     40 | OPERATIONS | NULL   | NULL      |
+--------+------------+--------+-----------+
15 rows in set (0.00 sec)


-- Q9 Display all departments and their employees,
-- but match only employees earning above 2000

SELECT D.DNAME, D.LOC, E.ENAME, E.SAL
FROM EMP E
RIGHT OUTER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO
   AND E.SAL > 2000;
+------------+----------+-------+------+
| DNAME      | LOC      | ENAME | SAL  |
+------------+----------+-------+------+
| ACCOUNTING | NEW YORK | KING  | 5000 |
| ACCOUNTING | NEW YORK | CLARK | 2450 |
| RESEARCH   | DALLAS   | FORD  | 3000 |
| RESEARCH   | DALLAS   | SCOTT | 3000 |
| RESEARCH   | DALLAS   | JONES | 2975 |
| SALES      | CHICAGO  | BLAKE | 2850 |
| OPERATIONS | BOSTON   | NULL  | NULL |
+------------+----------+-------+------+
7 rows in set (0.00 sec)


-- Q10 Display every employee and every department, including unmatched rows

SELECT E.ENAME, E.JOB, D.DNAME, D.LOC
FROM EMP E
LEFT OUTER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO

UNION

SELECT E.ENAME, E.JOB, D.DNAME, D.LOC
FROM EMP E
RIGHT OUTER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO;
+--------+-----------+------------+----------+
| ENAME  | JOB       | DNAME      | LOC      |
+--------+-----------+------------+----------+
| SMITH  | CLERK     | RESEARCH   | DALLAS   |
| ALLEN  | SALESMAN  | SALES      | CHICAGO  |
| WARD   | SALESMAN  | SALES      | CHICAGO  |
| JONES  | MANAGER   | RESEARCH   | DALLAS   |
| MARTIN | SALESMAN  | SALES      | CHICAGO  |
| BLAKE  | MANAGER   | SALES      | CHICAGO  |
| CLARK  | MANAGER   | ACCOUNTING | NEW YORK |
| SCOTT  | ANALYST   | RESEARCH   | DALLAS   |
| KING   | PRESIDENT | ACCOUNTING | NEW YORK |
| TURNER | SALESMAN  | SALES      | CHICAGO  |
| ADAMS  | CLERK     | RESEARCH   | DALLAS   |
| JAMES  | CLERK     | SALES      | CHICAGO  |
| FORD   | ANALYST   | RESEARCH   | DALLAS   |
| MILLER | CLERK     | ACCOUNTING | NEW YORK |
| NULL   | NULL      | OPERATIONS | BOSTON   |
+--------+-----------+------------+----------+
15 rows in set (0.00 sec)


-- Q11 Display all departments with employee counts, including empty departments

SELECT D.DNAME,
       D.LOC,
       COUNT(E.EMPNO) AS EMP_COUNT
FROM EMP E
RIGHT OUTER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO
GROUP BY D.DEPTNO, D.DNAME, D.LOC;
+------------+----------+-----------+
| DNAME      | LOC      | EMP_COUNT |
+------------+----------+-----------+
| ACCOUNTING | NEW YORK |         3 |
| RESEARCH   | DALLAS   |         5 |
| SALES      | CHICAGO  |         6 |
| OPERATIONS | BOSTON   |         0 |
+------------+----------+-----------+
4 rows in set (0.00 sec)


-- Q12 Display employees earning more than 2000 and all departments

SELECT D.DNAME, E.ENAME, E.SAL
FROM EMP E
RIGHT OUTER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO
   AND E.SAL > 2000;
+------------+-------+------+
| DNAME      | ENAME | SAL  |
+------------+-------+------+
| ACCOUNTING | KING  | 5000 |
| ACCOUNTING | CLARK | 2450 |
| RESEARCH   | FORD  | 3000 |
| RESEARCH   | SCOTT | 3000 |
| RESEARCH   | JONES | 2975 |
| SALES      | BLAKE | 2850 |
| OPERATIONS | NULL  | NULL |
+------------+-------+------+
7 rows in set (0.00 sec)


-- Q13 Display employee name, job, department name,
-- and location for employees working in Dallas

SELECT ENAME, JOB, DNAME, LOC
FROM EMP
NATURAL JOIN DEPT
WHERE LOC = 'DALLAS';
+-------+---------+----------+--------+
| ENAME | JOB     | DNAME    | LOC    |
+-------+---------+----------+--------+
| SMITH | CLERK   | RESEARCH | DALLAS |
| JONES | MANAGER | RESEARCH | DALLAS |
| SCOTT | ANALYST | RESEARCH | DALLAS |
| ADAMS | CLERK   | RESEARCH | DALLAS |
| FORD  | ANALYST | RESEARCH | DALLAS |
+-------+---------+----------+--------+
5 rows in set (0.00 sec)


-- Q14 Display employees working in SALES who earn more than 1500

SELECT ENAME, SAL, COMM, LOC
FROM EMP
NATURAL JOIN DEPT
WHERE DNAME = 'SALES'
  AND SAL > 1500;
+-------+------+------+---------+
| ENAME | SAL  | COMM | LOC     |
+-------+------+------+---------+
| ALLEN | 1600 |  300 | CHICAGO |
| BLAKE | 2850 | NULL | CHICAGO |
+-------+------+------+---------+
2 rows in set (0.00 sec)


-- Q15 Display employees working in SALES who earn more than 1500

SELECT D.DNAME,
       D.LOC,
       AVG(E.SAL) AS AVG_SALARY,
       COUNT(E.EMPNO) AS EMP_COUNT
FROM EMP E
INNER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO
GROUP BY D.DEPTNO, D.DNAME, D.LOC
HAVING AVG(E.SAL) > 2000;
+------------+----------+------------+-----------+
| DNAME      | LOC      | AVG_SALARY | EMP_COUNT |
+------------+----------+------------+-----------+
| RESEARCH   | DALLAS   |  2175.0000 |         5 |
| ACCOUNTING | NEW YORK |  2916.6667 |         3 |
+------------+----------+------------+-----------+
2 rows in set (0.00 sec)


-- Q16 Display employees working in SALES who earn more than 1500

SELECT E.ENAME AS EMPLOYEE_NAME,
       E.SAL AS EMPLOYEE_SALARY,
       M.ENAME AS MANAGER_NAME,
       M.SAL AS MANAGER_SALARY
FROM EMP E
INNER JOIN EMP M
    ON E.MGR = M.EMPNO;
+---------------+-----------------+--------------+----------------+
| EMPLOYEE_NAME | EMPLOYEE_SALARY | MANAGER_NAME | MANAGER_SALARY |
+---------------+-----------------+--------------+----------------+
| FORD          |            3000 | JONES        |           2975 |
| SCOTT         |            3000 | JONES        |           2975 |
| JAMES         |             950 | BLAKE        |           2850 |
| TURNER        |            1500 | BLAKE        |           2850 |
| MARTIN        |            1250 | BLAKE        |           2850 |
| WARD          |            1250 | BLAKE        |           2850 |
| ALLEN         |            1600 | BLAKE        |           2850 |
| MILLER        |            1300 | CLARK        |           2450 |
| ADAMS         |            1100 | SCOTT        |           3000 |
| CLARK         |            2450 | KING         |           5000 |
| BLAKE         |            2850 | KING         |           5000 |
| JONES         |            2975 | KING         |           5000 |
| SMITH         |             800 | FORD         |           3000 |
+---------------+-----------------+--------------+----------------+
13 rows in set (0.00 sec)


-- Q17 Display employees working in SALES who earn more than 1500

SELECT E.ENAME AS EMPLOYEE_NAME,
       E.SAL AS EMPLOYEE_SALARY,
       M.ENAME AS MANAGER_NAME,
       M.SAL AS MANAGER_SALARY,
       D.DNAME
FROM EMP E
INNER JOIN EMP M
    ON E.MGR = M.EMPNO
INNER JOIN DEPT D
    ON E.DEPTNO = D.DEPTNO
WHERE E.SAL < M.SAL;
+---------------+-----------------+--------------+----------------+------------+
| EMPLOYEE_NAME | EMPLOYEE_SALARY | MANAGER_NAME | MANAGER_SALARY | DNAME      |
+---------------+-----------------+--------------+----------------+------------+
| JAMES         |             950 | BLAKE        |           2850 | SALES      |
| TURNER        |            1500 | BLAKE        |           2850 | SALES      |
| MARTIN        |            1250 | BLAKE        |           2850 | SALES      |
| WARD          |            1250 | BLAKE        |           2850 | SALES      |
| ALLEN         |            1600 | BLAKE        |           2850 | SALES      |
| MILLER        |            1300 | CLARK        |           2450 | ACCOUNTING |
| ADAMS         |            1100 | SCOTT        |           3000 | RESEARCH   |
| CLARK         |            2450 | KING         |           5000 | ACCOUNTING |
| BLAKE         |            2850 | KING         |           5000 | SALES      |
| JONES         |            2975 | KING         |           5000 | RESEARCH   |
| SMITH         |             800 | FORD         |           3000 | RESEARCH   |
+---------------+-----------------+--------------+----------------+------------+
11 rows in set (0.00 sec)


-- Q18 Display employees who work as clerks and their managers' designations

SELECT E.ENAME AS EMPLOYEE_NAME,
       E.DEPTNO,
       M.ENAME AS MANAGER_NAME,
       M.JOB AS MANAGER_JOB
FROM EMP E
INNER JOIN EMP M
    ON E.MGR = M.EMPNO
WHERE E.JOB = 'CLERK';
+---------------+--------+--------------+-------------+
| EMPLOYEE_NAME | DEPTNO | MANAGER_NAME | MANAGER_JOB |
+---------------+--------+--------------+-------------+
| JAMES         |     30 | BLAKE        | MANAGER     |
| MILLER        |     10 | CLARK        | MANAGER     |
| ADAMS         |     20 | SCOTT        | ANALYST     |
| SMITH         |     20 | FORD         | ANALYST     |
+---------------+--------+--------------+-------------+
4 rows in set (0.00 sec)


-- Q19 Display employees whose managers work in
-- department 10 or 20 and earn more than 2500

SELECT E.ENAME AS EMPLOYEE_NAME,
       E.JOB AS EMPLOYEE_JOB,
       M.ENAME AS MANAGER_NAME,
       M.DEPTNO AS MANAGER_DEPTNO,
       M.SAL AS MANAGER_SALARY
FROM EMP E
INNER JOIN EMP M
    ON E.MGR = M.EMPNO
WHERE M.DEPTNO IN (10, 20)
  AND M.SAL > 2500;
+---------------+--------------+--------------+----------------+----------------+
| EMPLOYEE_NAME | EMPLOYEE_JOB | MANAGER_NAME | MANAGER_DEPTNO | MANAGER_SALARY |
+---------------+--------------+--------------+----------------+----------------+
| SMITH         | CLERK        | FORD         |             20 |           3000 |
| JONES         | MANAGER      | KING         |             10 |           5000 |
| BLAKE         | MANAGER      | KING         |             10 |           5000 |
| CLARK         | MANAGER      | KING         |             10 |           5000 |
| SCOTT         | ANALYST      | JONES        |             20 |           2975 |
| ADAMS         | CLERK        | SCOTT        |             20 |           3000 |
| FORD          | ANALYST      | JONES        |             20 |           2975 |
+---------------+--------------+--------------+----------------+----------------+
7 rows in set (0.00 sec)

-- 20 Display all employees with their manager's name,
-- including employees who have no manager


SELECT E.ENAME AS EMPLOYEE_NAME,
       E.JOB AS EMPLOYEE_JOB,
       M.ENAME AS MANAGER_NAME,
       M.JOB AS MANAGER_JOB
FROM EMP E
LEFT OUTER JOIN EMP M
    ON E.MGR = M.EMPNO;
+---------------+--------------+--------------+-------------+
| EMPLOYEE_NAME | EMPLOYEE_JOB | MANAGER_NAME | MANAGER_JOB |
+---------------+--------------+--------------+-------------+
| SMITH         | CLERK        | FORD         | ANALYST     |
| ALLEN         | SALESMAN     | BLAKE        | MANAGER     |
| WARD          | SALESMAN     | BLAKE        | MANAGER     |
| JONES         | MANAGER      | KING         | PRESIDENT   |
| MARTIN        | SALESMAN     | BLAKE        | MANAGER     |
| BLAKE         | MANAGER      | KING         | PRESIDENT   |
| CLARK         | MANAGER      | KING         | PRESIDENT   |
| SCOTT         | ANALYST      | JONES        | MANAGER     |
| KING          | PRESIDENT    | NULL         | NULL        |
| TURNER        | SALESMAN     | BLAKE        | MANAGER     |
| ADAMS         | CLERK        | SCOTT        | ANALYST     |
| JAMES         | CLERK        | BLAKE        | MANAGER     |
| FORD          | ANALYST      | JONES        | MANAGER     |
| MILLER        | CLERK        | CLARK        | MANAGER     |
+---------------+--------------+--------------+-------------+
14 rows in set (0.00 sec)
