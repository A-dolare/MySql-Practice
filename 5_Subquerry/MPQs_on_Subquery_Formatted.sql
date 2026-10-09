-- ============================================================
-- MIXED PRACTICE QUESTIONS: SUBQUERIES
-- Schema: SCOTT
--
-- Questions are preserved as comments.
-- SQL queries remain executable.
-- Original output tables and row counts are preserved as comments.
-- MySQL command-line prompts (mysql>, ->) have been removed.
-- ============================================================

-- Q1 WAQTD the department name
-- and location of the department in which ALLEN works.

SELECT DNAME, LOC
FROM DEPT
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE ENAME = 'ALLEN'
);
+-------+---------+
| DNAME | LOC     |
+-------+---------+
| SALES | CHICAGO |
+-------+---------+
1 row in set (0.01 sec)


-- Q2 WAQTD the names and salaries of employees earning more than SMITH.

SELECT ENAME, SAL
FROM EMP
WHERE SAL > (
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'SMITH'
);
+--------+------+
| ENAME  | SAL  |
+--------+------+
| ALLEN  | 1600 |
| WARD   | 1250 |
| JONES  | 2975 |
| MARTIN | 1250 |
| BLAKE  | 2850 |
| CLARK  | 2450 |
| SCOTT  | 3000 |
| KING   | 5000 |
| TURNER | 1500 |
| ADAMS  | 1100 |
| JAMES  |  950 |
| FORD   | 3000 |
| MILLER | 1300 |
+--------+------+
13 rows in set (0.00 sec)


-- Q3 WAQTD the names and salaries of employees working
-- in departments where at least one employee earns a commission

SELECT ENAME, SAL
FROM EMP
WHERE DEPTNO IN (
    SELECT DEPTNO
    FROM EMP
    WHERE COMM IS NOT NULL
);
+--------+------+
| ENAME  | SAL  |
+--------+------+
| ALLEN  | 1600 |
| WARD   | 1250 |
| MARTIN | 1250 |
| BLAKE  | 2850 |
| TURNER | 1500 |
| JAMES  |  950 |
+--------+------+
6 rows in set (0.00 sec)


-- Q4 WAQTD the names and salaries of employees
-- earning more than every employee in department 10.

SELECT ENAME, SAL
FROM EMP
WHERE SAL > ALL (
    SELECT SAL
    FROM EMP
    WHERE DEPTNO = 10
);
Empty set (0.00 sec)


-- Q5 WAQTD the names and salaries of
-- employees earning more than at least one SALESMAN.

SELECT ENAME, SAL
FROM EMP
WHERE SAL > ANY (
    SELECT SAL
    FROM EMP
    WHERE JOB = 'SALESMAN'
);
+--------+------+
| ENAME  | SAL  |
+--------+------+
| ALLEN  | 1600 |
| JONES  | 2975 |
| BLAKE  | 2850 |
| CLARK  | 2450 |
| SCOTT  | 3000 |
| KING   | 5000 |
| TURNER | 1500 |
| FORD   | 3000 |
| MILLER | 1300 |
+--------+------+
9 rows in set (0.00 sec)


-- Q6 WAQTD the names and salaries of employees
-- earning less than all employees working as MANAGER.

SELECT ENAME, SAL
FROM EMP
WHERE SAL < ALL (
    SELECT SAL
    FROM EMP
    WHERE JOB = 'MANAGER'
);
+--------+------+
| ENAME  | SAL  |
+--------+------+
| SMITH  |  800 |
| ALLEN  | 1600 |
| WARD   | 1250 |
| MARTIN | 1250 |
| TURNER | 1500 |
| ADAMS  | 1100 |
| JAMES  |  950 |
| MILLER | 1300 |
+--------+------+
8 rows in set (0.00 sec)


-- Q7 WAQTD the third-highest distinct salary in the company.

SELECT MAX(SAL) AS THIRD_HIGHEST_SALARY
FROM EMP
WHERE SAL < (
    SELECT MAX(SAL)
    FROM EMP
    WHERE SAL < (
        SELECT MAX(SAL)
        FROM EMP
    )
);
+----------------------+
| THIRD_HIGHEST_SALARY |
+----------------------+
|                 2975 |
+----------------------+
1 row in set (0.00 sec)


-- Q8 WAQTD the third-lowest distinct salary in the company.

SELECT MIN(SAL) AS THIRD_LOWEST_SALARY
FROM EMP
WHERE SAL > (
    SELECT MIN(SAL)
    FROM EMP
    WHERE SAL > (
        SELECT MIN(SAL)
        FROM EMP
    )
);
+---------------------+
| THIRD_LOWEST_SALARY |
+---------------------+
|                1100 |
+---------------------+
1 row in set (0.00 sec)


-- Q9 WAQTD the name and employee number of the
-- employee earning the third-highest distinct salary.

SELECT ENAME, EMPNO
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
+-------+-------+
| ENAME | EMPNO |
+-------+-------+
| JONES |  7566 |
+-------+-------+
1 row in set (0.00 sec)


-- Q10 WAQTD the department name of the
-- employee earning the second-lowest distinct salary.

SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (
    SELECT DEPTNO
    FROM EMP
    WHERE SAL = (
        SELECT MIN(SAL)
        FROM EMP
        WHERE SAL > (
            SELECT MIN(SAL)
            FROM EMP
        )
    )
);
+-------+
| DNAME |
+-------+
| SALES |
+-------+
1 row in set (0.00 sec)


-- Q11 WAQTD the name of SMITH's manager's manager.

SELECT ENAME
FROM EMP
WHERE EMPNO = (
    SELECT MGR
    FROM EMP
    WHERE EMPNO = (
        SELECT MGR
        FROM EMP
        WHERE ENAME = 'SMITH'
    )
);
+-------+
| ENAME |
+-------+
| JONES |
+-------+
1 row in set (0.00 sec)


-- Q12 WAQTD the names and jobs of all employees reporting directly to KING.

SELECT ENAME, JOB
FROM EMP
WHERE MGR = (
    SELECT EMPNO
    FROM EMP
    WHERE ENAME = 'KING'
);
+-------+---------+
| ENAME | JOB     |
+-------+---------+
| JONES | MANAGER |
| BLAKE | MANAGER |
| CLARK | MANAGER |
+-------+---------+
3 rows in set (0.00 sec)


-- Q13 WAQTD the names and hire dates of
-- employees hired before every employee working as MANAGER.

SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE < ALL (
    SELECT HIREDATE
    FROM EMP
    WHERE JOB = 'MANAGER'
);
+--------+------------+
| ENAME  | HIREDATE   |
+--------+------------+
| SMITH  | 1980-12-17 |
| ALLEN  | 1981-02-20 |
| WARD   | 1981-02-22 |
| TURNER | 1980-09-08 |
+--------+------------+
4 rows in set (0.00 sec)


-- Q14 WAQTD the names, department numbers and salaries of employees earning
-- more than at least one other employee in the same department.

SELECT E1.ENAME, E1.DEPTNO, E1.SAL
FROM EMP E1
WHERE EXISTS (
    SELECT 1
    FROM EMP E2
    WHERE E2.DEPTNO = E1.DEPTNO
      AND E2.SAL < E1.SAL
);
+--------+--------+------+
| ENAME  | DEPTNO | SAL  |
+--------+--------+------+
| ALLEN  |     30 | 1600 |
| WARD   |     30 | 1250 |
| JONES  |     20 | 2975 |
| MARTIN |     30 | 1250 |
| BLAKE  |     30 | 2850 |
| CLARK  |     10 | 2450 |
| SCOTT  |     20 | 3000 |
| KING   |     10 | 5000 |
| TURNER |     30 | 1500 |
| ADAMS  |     20 | 1100 |
| FORD   |     20 | 3000 |
+--------+--------+------+
11 rows in set (0.00 sec)


-- Q15 WAQTD the names, department numbers and salaries of employees
-- earning the highest salary in their respective departments.

SELECT E1.ENAME, E1.DEPTNO, E1.SAL
FROM EMP E1
WHERE E1.SAL = (
    SELECT MAX(E2.SAL)
    FROM EMP E2
    WHERE E2.DEPTNO = E1.DEPTNO
);
+-------+--------+------+
| ENAME | DEPTNO | SAL  |
+-------+--------+------+
| BLAKE |     30 | 2850 |
| SCOTT |     20 | 3000 |
| KING  |     10 | 5000 |
| FORD  |     20 | 3000 |
+-------+--------+------+
4 rows in set (0.00 sec)


-- Q16 WAQTD the names of departments in which at least one employee works.

SELECT D.DNAME
FROM DEPT D
WHERE EXISTS (
    SELECT 1
    FROM EMP E
    WHERE E.DEPTNO = D.DEPTNO
);
+------------+
| DNAME      |
+------------+
| ACCOUNTING |
| RESEARCH   |
| SALES      |
+------------+
3 rows in set (0.00 sec)


-- Q17 WAQTD the names and locations of departments in which no employees work.

SELECT D.DNAME, D.LOC
FROM DEPT D
WHERE NOT EXISTS (
    SELECT 1
    FROM EMP E
    WHERE E.DEPTNO = D.DEPTNO
);
+------------+--------+
| DNAME      | LOC    |
+------------+--------+
| OPERATIONS | BOSTON |
+------------+--------+
1 row in set (0.00 sec)


-- Q18 WAQTD the names and employee numbers
-- of employees who have at least one subordinate.

SELECT E1.ENAME, E1.EMPNO
FROM EMP E1
WHERE EXISTS (
    SELECT 1
    FROM EMP E2
    WHERE E2.MGR = E1.EMPNO
);
+-------+-------+
| ENAME | EMPNO |
+-------+-------+
| JONES |  7566 |
| BLAKE |  7698 |
| CLARK |  7782 |
| SCOTT |  7788 |
| KING  |  7839 |
| FORD  |  7902 |
+-------+-------+
6 rows in set (0.00 sec)


-- Q19 WAQTD the names and employee numbers of employees who do not manage anyone.

SELECT E1.ENAME, E1.EMPNO
FROM EMP E1
WHERE NOT EXISTS (
    SELECT 1
    FROM EMP E2
    WHERE E2.MGR = E1.EMPNO
);
+--------+-------+
| ENAME  | EMPNO |
+--------+-------+
| SMITH  |  7369 |
| ALLEN  |  7499 |
| WARD   |  7521 |
| MARTIN |  7654 |
| TURNER |  7844 |
| ADAMS  |  7876 |
| JAMES  |  7900 |
| MILLER |  7934 |
+--------+-------+
8 rows in set (0.00 sec)


-- Q20 WAQTD the department names and locations of
-- departments in which at least one employee earns more than 3000.

SELECT D.DNAME, D.LOC
FROM DEPT D
WHERE EXISTS (
    SELECT 1
    FROM EMP E
    WHERE E.DEPTNO = D.DEPTNO
      AND E.SAL > 3000
);
+------------+----------+
| DNAME      | LOC      |
+------------+----------+
| ACCOUNTING | NEW YORK |
+------------+----------+
1 row in set (0.00 sec)
