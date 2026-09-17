/*TYPES OF SUB - QUERY :
     1. SINGLE ROW SUB QUERY
     2. MULTI ROW SUB QUERY
     */

# SINGLEROW SUB QUERY - If the sub query returns exactly 1 record / value we call it as
-- Single Row Sub Query .

-- Q1 WAQTD dname of ALLEN .

SELECT DNAME
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'ALLEN');
+-------+
-- | DNAME |
+-------+
-- | SALES |
+-------+

# MULTIROW SUBQUERY - If the sub query returns more than1 record / value we call it
# as Multi Row Sub Query .

# Q1 WAQTD ename and salary of the employees earning more than
# Employees of dept 10 .

SELECT ENAME, SAL
FROM EMP
WHERE SAL > (SELECT SAL
FROM EMP
WHERE DEPTNO = 10);
-- ERROR 1242 (21000): Subquery returns more than 1 row

/* Here we cannot use > symbol to compare
Multiple values .
We cant use IN or. NOT IN as well because
It is used for = and != symbols .
Therefore we have to use Sub Query Operators
For Comparing Relational Operators such as
( > , < , >= , <= ) .
*/

# CORRECTED QUERY
SELECT ENAME, SAL
FROM EMP
WHERE SAL > ALL (
SELECT SAL
FROM EMP
WHERE DEPTNO = 10
);

/* We have to use only Special Operators to
       compare the values */

/*                                                                Subquerry opertors                                                                       */

# 1. ALL OPERATOR: "It is special Op used along with a relational Op ( > , < , > = , <= )
to compare the values present at the RHS ".

-- EX WAQTD SAL AND NAME OF EMPLOYEES HAVING SAL MORE THAN ALL THE EMPLOYEES IN DEPTNO = 10;

SELECT ENAME, SAL
FROM EMP
WHERE SAL > ALL (SELECT SAL
FROM EMP
WHERE DEPTNO = 10);

# 2. ANY OPERATOR: "It is special Op used along with a relational Op ( > , < , > = , <= )
to compare the values present at the RHS ".

-- EX WAQTD SAL AND NAME OF EMPLOYEES HAVING SAL MORE THAN ANY OF THE EMPLOYEES IN DEPTNO = 10;

SELECT ENAME, SAL
FROM EMP
WHERE SAL > ANY (SELECT SAL
FROM EMP
WHERE DEPTNO = 10);
+--------+------+
-- | ENAME  | SAL  |
+--------+------+
-- | ALLEN  | 1600 |
-- | JONES  | 2975 |
-- | BLAKE  | 2850 |
-- | CLARK  | 2450 |
-- | SCOTT  | 3000 |
-- | KING   | 5000 |
-- | TURNER | 1500 |
-- | FORD   | 3000 |
+--------+------+

# COMBINED EXAMPLE QUESTIONS FOR ALL AND ANY OPERATORS

-- Q1  WAQTD name of the employee if the employee earns less than
-- The employees working as salesman .

SELECT ENAME
FROM EMP
WHERE SAL < ALL (SELECT SAL
FROM EMP
WHERE JOB = 'SALESMAN');
+-------+
-- | ENAME |
+-------+
-- | SMITH |
-- | ADAMS |
-- | JAMES |
+-------+

-- Q2 WAQTD name of the employee if the employee earns less than
-- At least a salesman .
SELECT ENAME
FROM EMP
WHERE SAL < ANY (SELECT SAL
FROM EMP
WHERE JOB = 'SALESMAN');
+--------+
-- | ENAME  |
+--------+
-- | SMITH  |
-- | WARD   |
-- | MARTIN |
-- | TURNER |
-- | ADAMS  |
-- | JAMES  |
-- | MILLER |
+--------+

-- Q3 WAQTD names of the employees earning more than ADAMS .

SELECT ENAME
FROM EMP
WHERE SAL > ALL (SELECT SAL
FROM EMP
WHERE ENAME = 'ADAMS');
+--------+
-- | ENAME  |
+--------+
-- | ALLEN  |
-- | WARD   |
-- | JONES  |
-- | MARTIN |
-- | BLAKE  |
-- | CLARK  |
-- | SCOTT  |
-- | KING   |
-- | TURNER |
-- | FORD   |
-- | MILLER |
+--------+

/*                                                                   ASSIGNMENT QUESTIONS ON SUBQUERY OPERATORS                                                */

-- Q51 WAQTD NAME OF THE EMPLOYEES EARNING SALARY
-- MORE THAN THE SALESMAN

SELECT ENAME
FROM EMP
WHERE SAL > ALL (SELECT SAL
FROM EMP
WHERE JOB = 'SALESMAN');
+-------+
-- | ENAME |
+-------+
-- | JONES |
-- | BLAKE |
-- | CLARK |
-- | SCOTT |
-- | KING  |
-- | FORD  |
+-------+

-- Q52 WAQTD DETAILS OF THE EMPLOYEES HIRED AFTER ALL
-- THE CLERKS
SELECT E.*
FROM EMP E
WHERE E.HIREDATE > ALL (SELECT HIREDATE
FROM EMP
WHERE JOB = 'CLERK');

-- Q53 WAQTD NAME AND SALARY FOR ALL THE EMPLOYEES IF
-- THEY ARE EARNING LESS THAN ATLEST A MANAGER

SELECT ENAME, SAL
FROM EMP
WHERE SAL < ANY (SELECT SAL
FROM EMP
WHERE JOB = 'MANAGER');
+--------+------+
-- | ENAME  | SAL  |
+--------+------+
-- | SMITH  |  800 |
-- | ALLEN  | 1600 |
-- | WARD   | 1250 |
-- | MARTIN | 1250 |
-- | BLAKE  | 2850 |
-- | CLARK  | 2450 |
-- | TURNER | 1500 |
-- | ADAMS  | 1100 |
-- | JAMES  |  950 |
-- | MILLER | 1300 |
+--------+------+

-- Q54 WAQTD NAME AND HIREDATE OF EMPLOYEES HIRED
-- BEFORE ALL THE MANAGERS

SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE < ALL (SELECT HIREDATE
FROM EMP
WHERE JOB = 'MANAGER');
+--------+------------+
-- | ENAME  | HIREDATE   |
+--------+------------+
-- | SMITH  | 1980-12-17 |
-- | ALLEN  | 1981-02-20 |
-- | WARD   | 1981-02-22 |
-- | TURNER | 1980-09-08 |
+--------+------------+

-- Q55 WAQTD NAMES OF THE EMPLOYEES HIRED AFTER ALL
-- THE MANAGERS AND EARNING SALARY MORE THAN ALL
-- THE CLERKS

SELECT ENAME
FROM EMP
WHERE HIREDATE > ALL (SELECT HIREDATE
FROM EMP
WHERE JOB = 'MANAGER')
AND        SAL > ALL (SELECT SAL
FROM EMP
WHERE JOB = 'CLERK');
+-------+
-- | ENAME |
+-------+
-- | SCOTT |
-- | KING  |
-- | FORD  |
+-------+

-- Q56 WAQTD DETAILS OF THE EMPLOYEES WORKING AS
-- CLERK AND HIRED BEFORE ATLEST A SALESMAN

SELECT *
FROM EMP
WHERE JOB = 'CLERK' AND HIREDATE < ANY (SELECT HIREDATE
FROM EMP
WHERE JOB = 'SALESMAN');
+-------+-------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+-------+-------+------+------------+------+------+--------+
-- |  7369 | SMITH | CLERK | 7902 | 1980-12-17 |  800 | NULL |     20 |
+-------+-------+-------+------+------------+------+------+--------+

-- 57 WAQTD DETAILS OF EMPLOYEES WORKING IN
-- ACCOUNTING OR SALES DEPT

SELECT *
FROM EMP
WHERE DEPTNO IN (SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'ACCOUNTING' OR DNAME = 'SALES');
+-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+-----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
+-------+--------+-----------+------+------------+------+------+--------+

-- Q58 WAQTD DEPARTMENT NAMES OF THE EMPOYEES WITH
-- NAME SMITH , KING AND MILLER
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO
FROM EMP
WHERE ENAME IN ('MILLER', 'SMITH', 'KING'));
+------------+
-- | DNAME      |
+------------+
-- | ACCOUNTING |
-- | RESEARCH   |
+------------+

-- Q59 WAQTD DETAILS OF EMPLOYEES WORKING NEWYORK
-- OR CHICAGO
SELECT *
FROM EMP
WHERE DEPTNO IN (SELECT DEPTNO
FROM DEPT
WHERE LOC IN ('CHICAGO', 'NEW YORK'));
+-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+-----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
+-------+--------+-----------+------+------------+------+------+--------+

-- METHOD 2:

SELECT *
FROM EMP
WHERE DEPTNO = ANY (SELECT DEPTNO
FROM DEPT
WHERE LOC IN ('CHICAGO', 'NEW YORK'));
+-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+-----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
+-------+--------+-----------+------+------------+------+------+--------+

-- Q60 WAQTD EMP NAMES IF EMPLOYEES ARE HIRED AFTER
-- ALL THE EMPLOYEES OF DEPT 10

SELECT ENAME
FROM EMP
WHERE HIREDATE > ALL (SELECT HIREDATE
FROM EMP
WHERE DEPTNO = 10);
+-------+
-- | ENAME |
+-------+
-- | SCOTT |
-- | ADAMS |
+-------+
