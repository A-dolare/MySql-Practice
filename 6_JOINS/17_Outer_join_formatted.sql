-- =====================================================
-- 17_Outer_join(3)
-- Repository Formatted Version
-- Directly executable in MySQL
-- =====================================================

--  LEFT OUTER JOIN

-- EX: WAQTD names and dnames of all the employees even though
-- the employees Don’t work in any dept .

SELECT E.ENAME, D.DNAME
FROM EMP E LEFT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
;
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

-- RIGHT OUTER JOIN

-- EX: WAQTD names and dnames of all the employees even though
-- the there are no employees in a dept .

SELECT E.ENAME, D.DNAME
FROM EMP E RIGHT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
;
-- +--------+------------+
-- | ENAME  | DNAME      |
-- +--------+------------+
-- | MILLER | ACCOUNTING |
-- | KING   | ACCOUNTING |
-- | CLARK  | ACCOUNTING |
-- | FORD   | RESEARCH   |
-- | ADAMS  | RESEARCH   |
-- | SCOTT  | RESEARCH   |
-- | JONES  | RESEARCH   |
-- | SMITH  | RESEARCH   |
-- | JAMES  | SALES      |
-- | TURNER | SALES      |
-- | BLAKE  | SALES      |
-- | MARTIN | SALES      |
-- | WARD   | SALES      |
-- | ALLEN  | SALES      |
-- | NULL   | OPERATIONS |
-- +--------+------------+

--  FULL OUTER JOIN

-- EX: WAQTD names and dnames of all the employees and depts
-- even though the employees Don’t work in any dept and a dept
-- having no employees

SELECT E.ENAME, D.DNAME
FROM EMP E
LEFT JOIN DEPT D ON E.DEPTNO = D.DEPTNO

UNION

SELECT E.ENAME, D.DNAME
FROM EMP E
RIGHT JOIN DEPT D ON E.DEPTNO = D.DEPTNO;
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
-- | NULL   | OPERATIONS |
-- +--------+------------+

--                                                       ASSIGNMENT QUESTIONS 

mysql> -- LEFT OUTER JOIN

-- Q1 WAQTD all employee names along with their department names, including
--  employees even if they are not assigned to any department.

SELECT E.ENAME, D.DNAME
FROM EMP E
LEFT OUTER JOIN DEPT D
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
-- 14 rows in set (0.00 sec)

-- Q2 WAQTD employee name, salary and department location for all employees, 
-- including employees without matching department details.

SELECT E.ENAME, E.SAL, D.LOC
FROM EMP E
LEFT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
-- +--------+------+----------+
-- | ENAME  | SAL  | LOC      |
-- +--------+------+----------+
-- | SMITH  |  800 | DALLAS   |
-- | ALLEN  | 1600 | CHICAGO  |
-- | WARD   | 1250 | CHICAGO  |
-- | JONES  | 2975 | DALLAS   |
-- | MARTIN | 1250 | CHICAGO  |
-- | BLAKE  | 2850 | CHICAGO  |
-- | CLARK  | 2450 | NEW YORK |
-- | SCOTT  | 3000 | DALLAS   |
-- | KING   | 5000 | NEW YORK |
-- | TURNER | 1500 | CHICAGO  |
-- | ADAMS  | 1100 | DALLAS   |
-- | JAMES  |  950 | CHICAGO  |
-- | FORD   | 3000 | DALLAS   |
-- | MILLER | 1300 | NEW YORK |
-- +--------+------+----------+
-- 14 rows in set (0.00 sec)

-- Q3 WAQTD employee name and department name for employees earning more than 2000, while 
-- preserving employees even if their department record is missing.

SELECT E.ENAME, D.DNAME
FROM EMP E
LEFT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.SAL > 2000;
-- +-------+------------+
-- | ENAME | DNAME      |
-- +-------+------------+
-- | JONES | RESEARCH   |
-- | BLAKE | SALES      |
-- | CLARK | ACCOUNTING |
-- | SCOTT | RESEARCH   |
-- | KING  | ACCOUNTING |
-- | FORD  | RESEARCH   |
-- +-------+------------+
-- 6 rows in set (0.00 sec)

-- RIGHT OUTER JOIN

-- Q4 WAQTD all department names along with employee names, 
-- including departments having no employees.

SELECT E.ENAME, D.DNAME
FROM EMP E
RIGHT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
-- +--------+------------+
-- | ENAME  | DNAME      |
-- +--------+------------+
-- | MILLER | ACCOUNTING |
-- | KING   | ACCOUNTING |
-- | CLARK  | ACCOUNTING |
-- | FORD   | RESEARCH   |
-- | ADAMS  | RESEARCH   |
-- | SCOTT  | RESEARCH   |
-- | JONES  | RESEARCH   |
-- | SMITH  | RESEARCH   |
-- | JAMES  | SALES      |
-- | TURNER | SALES      |
-- | BLAKE  | SALES      |
-- | MARTIN | SALES      |
-- | WARD   | SALES      |
-- | ALLEN  | SALES      |
-- | NULL   | OPERATIONS |
-- +--------+------------+
-- 15 rows in set (0.00 sec)

-- Q5 WAQTD all department numbers, department names 
-- and employee names, including departments without employees.

SELECT D.DEPTNO, D.DNAME, E.ENAME
FROM EMP E
RIGHT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
-- +--------+------------+--------+
-- | DEPTNO | DNAME      | ENAME  |
-- +--------+------------+--------+
-- |     10 | ACCOUNTING | MILLER |
-- |     10 | ACCOUNTING | KING   |
-- |     10 | ACCOUNTING | CLARK  |
-- |     20 | RESEARCH   | FORD   |
-- |     20 | RESEARCH   | ADAMS  |
-- |     20 | RESEARCH   | SCOTT  |
-- |     20 | RESEARCH   | JONES  |
-- |     20 | RESEARCH   | SMITH  |
-- |     30 | SALES      | JAMES  |
-- |     30 | SALES      | TURNER |
-- |     30 | SALES      | BLAKE  |
-- |     30 | SALES      | MARTIN |
-- |     30 | SALES      | WARD   |
-- |     30 | SALES      | ALLEN  |
-- |     40 | OPERATIONS | NULL   |
-- +--------+------------+--------+
-- 15 rows in set (0.00 sec)

-- Q6 WAQTD department name, location and 
-- employee job, including departments where no employee is working.

SELECT D.DNAME, D.LOC, E.JOB
FROM EMP E
RIGHT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
-- +------------+----------+-----------+
-- | DNAME      | LOC      | JOB       |
-- +------------+----------+-----------+
-- | ACCOUNTING | NEW YORK | CLERK     |
-- | ACCOUNTING | NEW YORK | PRESIDENT |
-- | ACCOUNTING | NEW YORK | MANAGER   |
-- | RESEARCH   | DALLAS   | ANALYST   |
-- | RESEARCH   | DALLAS   | CLERK     |
-- | RESEARCH   | DALLAS   | ANALYST   |
-- | RESEARCH   | DALLAS   | MANAGER   |
-- | RESEARCH   | DALLAS   | CLERK     |
-- | SALES      | CHICAGO  | CLERK     |
-- | SALES      | CHICAGO  | SALESMAN  |
-- | SALES      | CHICAGO  | MANAGER   |
-- | SALES      | CHICAGO  | SALESMAN  |
-- | SALES      | CHICAGO  | SALESMAN  |
-- | SALES      | CHICAGO  | SALESMAN  |
-- | OPERATIONS | BOSTON   | NULL      |
-- +------------+----------+-----------+
-- 15 rows in set (0.00 sec)

-- Q7 WAQTD all employee names and department names, including 
-- unmatched employees and unmatched departments.

SELECT E.ENAME, D.DNAME
FROM EMP E
LEFT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
    
UNION
    
SELECT E.ENAME, D.DNAME
FROM EMP E
RIGHT OUTER JOIN DEPT D
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
-- | NULL   | OPERATIONS |
-- +--------+------------+
-- 15 rows in set (0.01 sec)

-- Q8 WAQTD all employee names, jobs, department names 
-- and locations, including unmatched rows from both tables.

SELECT E.ENAME, E.JOB, D.DNAME, D.LOC
FROM EMP E
LEFT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO

UNION

SELECT E.ENAME, E.JOB, D.DNAME, D.LOC
FROM EMP E
RIGHT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
-- +--------+-----------+------------+----------+
-- | ENAME  | JOB       | DNAME      | LOC      |
-- +--------+-----------+------------+----------+
-- | SMITH  | CLERK     | RESEARCH   | DALLAS   |
-- | ALLEN  | SALESMAN  | SALES      | CHICAGO  |
-- | WARD   | SALESMAN  | SALES      | CHICAGO  |
-- | JONES  | MANAGER   | RESEARCH   | DALLAS   |
-- | MARTIN | SALESMAN  | SALES      | CHICAGO  |
-- | BLAKE  | MANAGER   | SALES      | CHICAGO  |
-- | CLARK  | MANAGER   | ACCOUNTING | NEW YORK |
-- | SCOTT  | ANALYST   | RESEARCH   | DALLAS   |
-- | KING   | PRESIDENT | ACCOUNTING | NEW YORK |
-- | TURNER | SALESMAN  | SALES      | CHICAGO  |
-- | ADAMS  | CLERK     | RESEARCH   | DALLAS   |
-- | JAMES  | CLERK     | SALES      | CHICAGO  |
-- | FORD   | ANALYST   | RESEARCH   | DALLAS   |
-- | MILLER | CLERK     | ACCOUNTING | NEW YORK |
-- | NULL   | NULL      | OPERATIONS | BOSTON   |
-- +--------+-----------+------------+----------+
-- 15 rows in set (0.00 sec)

-- Q9 WAQTD all employee numbers, employee names and 
-- department names, preserving unmatched rows from both EMP and DEPT.

SELECT E.EMPNO, E.ENAME, D.DNAME
FROM EMP E
LEFT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO

UNION

SELECT E.EMPNO, E.ENAME, D.DNAME
FROM EMP E
RIGHT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
-- +-------+--------+------------+
-- | EMPNO | ENAME  | DNAME      |
-- +-------+--------+------------+
-- |  7369 | SMITH  | RESEARCH   |
-- |  7499 | ALLEN  | SALES      |
-- |  7521 | WARD   | SALES      |
-- |  7566 | JONES  | RESEARCH   |
-- |  7654 | MARTIN | SALES      |
-- |  7698 | BLAKE  | SALES      |
-- |  7782 | CLARK  | ACCOUNTING |
-- |  7788 | SCOTT  | RESEARCH   |
-- |  7839 | KING   | ACCOUNTING |
-- |  7844 | TURNER | SALES      |
-- |  7876 | ADAMS  | RESEARCH   |
-- |  7900 | JAMES  | SALES      |
-- |  7902 | FORD   | RESEARCH   |
-- |  7934 | MILLER | ACCOUNTING |
-- |  NULL | NULL   | OPERATIONS |
-- +-------+--------+------------+
-- 15 rows in set (0.00 sec)

-- Q10 WAQTD all employee names, salaries, department numbers and 
-- department locations, including unmatched employees and department SELECT E.ENAME, E.SAL, D.DEPTNO, D.LOC
 FROM EMP E
 LEFT OUTER JOIN DEPT D
 ON E.DEPTNO = D.DEPTNO

 UNION

 SELECT E.ENAME, E.SAL, D.DEPTNO, D.LOC
 FROM EMP E
 RIGHT OUTER JOIN DEPT D
 ON E.DEPTNO = D.DEPTNO;
-- +--------+------+--------+----------+
-- | ENAME  | SAL  | DEPTNO | LOC      |
-- +--------+------+--------+----------+
-- | SMITH  |  800 |     20 | DALLAS   |
-- | ALLEN  | 1600 |     30 | CHICAGO  |
-- | WARD   | 1250 |     30 | CHICAGO  |
-- | JONES  | 2975 |     20 | DALLAS   |
-- | MARTIN | 1250 |     30 | CHICAGO  |
-- | BLAKE  | 2850 |     30 | CHICAGO  |
-- | CLARK  | 2450 |     10 | NEW YORK |
-- | SCOTT  | 3000 |     20 | DALLAS   |
-- | KING   | 5000 |     10 | NEW YORK |
-- | TURNER | 1500 |     30 | CHICAGO  |
-- | ADAMS  | 1100 |     20 | DALLAS   |
-- | JAMES  |  950 |     30 | CHICAGO  |
-- | FORD   | 3000 |     20 | DALLAS   |
-- | MILLER | 1300 |     10 | NEW YORK |
-- | NULL   | NULL |     40 | BOSTON   |
-- +--------+------+--------+----------+
-- 15 rows in set (0.00 sec)

