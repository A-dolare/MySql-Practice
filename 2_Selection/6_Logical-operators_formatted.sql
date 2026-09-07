
/*                                                              LOGICAL OPERATORS IN SQL                                                                     */

# AND OPERATOR

-- Q1 WAQTD name and deptno along with job for the
-- employee working in dept 10 .

SELECT ENAME, DEPTNO, JOB
FROM EMP
WHERE DEPTNO = 10;
+--------+--------+-----------+
| ENAME  | DEPTNO | JOB       |
+--------+--------+-----------+
| CLARK  |     10 | MANAGER   |
| KING   |     10 | PRESIDENT |
| MILLER |     10 | CLERK     |
+--------+--------+-----------+

-- Q2 WAQTD name and deptno along with job for the
-- employee working as manager in dept 10 .

SELECT ENAME, DEPTNO, JOB
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO = 10;
+-------+--------+---------+
| ENAME | DEPTNO | JOB     |
+-------+--------+---------+
| CLARK |     10 | MANAGER |
+-------+--------+---------+

-- Q3 WAQTD name , deptno , salary of the employee working
-- in dept 20 and earning less than 3000 .

SELECT ENAME, DEPTNO, SAL
FROM EMP
WHERE DEPTNO = 20 AND SAL < 3000;
+-------+--------+------+
| ENAME | DEPTNO | SAL  |
+-------+--------+------+
| SMITH |     20 |  800 |
| JONES |     20 | 2975 |
| ADAMS |     20 | 1100 |
+-------+--------+------+

-- Q4 WAQTD name and salary of the employee if emp earns
-- More than 1250 but less than 3000 .

SELECT ENAME, SAL
FROM EMP
WHERE SAL > 1250 AND SAL < 3000;
+--------+------+
| ENAME  | SAL  |
+--------+------+
| ALLEN  | 1600 |
| JONES  | 2975 |
| BLAKE  | 2850 |
| CLARK  | 2450 |
| TURNER | 1500 |
| MILLER | 1300 |
+--------+------+

-- Q5 WAQTD name and Job of the employees if the works
-- in dept 10 or 20

SELECT ENAME, JOB
FROM EMP
WHERE DEPTNO = 10 OR DEPTNO = 20;
+--------+-----------+
| ENAME  | JOB       |
+--------+-----------+
| SMITH  | CLERK     |
| JONES  | MANAGER   |
| CLARK  | MANAGER   |
| SCOTT  | ANALYST   |
| KING   | PRESIDENT |
| ADAMS  | CLERK     |
| FORD   | ANALYST   |
| MILLER | CLERK     |
+--------+-----------+

-- Q6 WAQTD name and sal and deptno of the employees
-- If emp gets more than 1250 but less than 4000 and works
-- in dept 20 .

SELECT ENAME, SAL, DEPTNO
FROM EMP
WHERE SAL > 1250 AND SAL < 4000 AND DEPTNO = 20;
+-------+------+--------+
| ENAME | SAL  | DEPTNO |
+-------+------+--------+
| JONES | 2975 |     20 |
| SCOTT | 3000 |     20 |
| FORD  | 3000 |     20 |
+-------+------+--------+

-- Q7 WAQTD name , job , deptno of the employees working
-- as a manager in dept 10 or 30

SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE JOB = 'MANAGER' AND (DEPTNO = 10 OR DEPTNO = 30);
+-------+---------+--------+
| ENAME | JOB     | DEPTNO |
+-------+---------+--------+
| BLAKE | MANAGER |     30 |
| CLARK | MANAGER |     10 |
+-------+---------+--------+

-- Q8 WAQTD name , deptno , job of the employees working
-- in dept 10 or 20 or 30 as a clerk .

SELECT ENAME, DEPTNO, JOB
FROM EMP
WHERE (DEPTNO = 10 OR DEPTNO = 20 OR DEPTNO = 30)
AND JOB = 'CLERK';
+--------+--------+-------+
| ENAME  | DEPTNO | JOB   |
+--------+--------+-------+
| SMITH  |     20 | CLERK |
| ADAMS  |     20 | CLERK |
| JAMES  |     30 | CLERK |
| MILLER |     10 | CLERK |
+--------+--------+-------+

-- Q9 WAQTD name , job and deptno of the employees
-- working as clerk or manager in dept 10 .

SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE (JOB = 'CLERK' OR JOB = 'MANAGER') AND DEPTNO = 10;
+--------+---------+--------+
| ENAME  | JOB     | DEPTNO |
+--------+---------+--------+
| CLARK  | MANAGER |     10 |
| MILLER | CLERK   |     10 |
+--------+---------+--------+

-- Q10 WAQTD name , job , deptno , sal of the employees
-- working as clerk or salesman in dept 10 or 30 and
-- earning more than 1800 .

SELECT ENAME, JOB, SAL
FROM EMP
WHERE (JOB = 'CLERK' OR JOB = 'SALESMAN') AND (DEPTNO = 10 OR DEPTNO = 30) AND SAL > 1800;
Empty set (0.00 sec)

/*                                                              ASSIGNMENT QUESTIONS ON LOGICAL OPERATORS                                                    */

-- Q1 WAQTD DETAILS OF THE EMPLOYEES WORKING
-- AS CLERK AND EARNING LESS THAN 1500

SELECT *
FROM EMP
WHERE JOB = 'CLERK' AND SAL < 1500;
+-------+--------+-------+------+------------+------+------+--------+
| EMPNO | ENAME  | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+-------+------+------------+------+------+--------+
|  7369 | SMITH  | CLERK | 7902 | 1980-12-17 |  800 | NULL |     20 |
|  7876 | ADAMS  | CLERK | 7788 | 1983-01-12 | 1100 | NULL |     20 |
|  7900 | JAMES  | CLERK | 7698 | 1981-12-03 |  950 | NULL |     30 |
|  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300 | NULL |     10 |
+-------+--------+-------+------+------------+------+------+--------+

-- Q2 WAQTD NAME AND HIREDATE OF THE EMPLOYEES
-- WORKING AS MANAGER IN DEPT 30

SELECT ENAME, HIREDATE
FROM EMP
WHERE JOB = 'MANAGER'
AND DEPTNO = 30;
+-------+------------+
| ENAME | HIREDATE   |
+-------+------------+
| BLAKE | 1981-05-01 |
+-------+------------+

-- Q3 WAQTD DETAILS OF THE EMP ALONG WITH
-- ANNUAL SALARY IF THEY ARE WORKING IN DEPT
-- 30 AS SALESMAN AND THEIR ANNUAL SALARY HAS
-- TO BE GREATER THAN 14000.

SELECT E.*, SAL * 12
FROM EMP E
WHERE E.DEPTNO = 30 AND JOB = 'SALESMAN' AND SAL * 12 > 14000;
+-------+--------+----------+------+------------+------+------+--------+----------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO | SAL * 12 |
+-------+--------+----------+------+------------+------+------+--------+----------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |    19200 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |    15000 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |    15000 |
|  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |    18000 |
+-------+--------+----------+------+------------+------+------+--------+----------+

-- Q4 WAQTD ALL THE DETAILS OF THE EMP WORKING
-- IN DEPT 30 OR AS ANALYST

SELECT *
FROM EMP
WHERE DEPTNO = 30 OR JOB = 'ANALYST';
+-------+--------+----------+------+------------+------+------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+----------+------+------------+------+------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000 | NULL |     20 |
+-------+--------+----------+------+------------+------+------+--------+

-- Q5 WAQTD NAMES OF THE EMPMLOYEES WHOS
-- SALARY IS LESS THAN 1100 AND THEIR
-- DESIGNATION IS CLERK

SELECT ENAME
FROM EMP
WHERE SAL < 1100 AND JOB = 'CLERK';
+-------+
| ENAME |
+-------+
| SMITH |
| JAMES |
+-------+

-- Q6 WAQTD NAME AND SAL , ANNUAL SAL AND
-- DEPTNO IF DEPTNO IS 20 EARNING MORE THAN 1100
-- AND ANNUAL SALARY EXCEEDS 12000

SELECT ENAME, SAL, SAL * 12, DEPTNO
FROM EMP
WHERE DEPTNO = 20 AND SAL > 1100 AND SAL * 12 > 12000;
+-------+------+----------+--------+
| ENAME | SAL  | SAL * 12 | DEPTNO |
+-------+------+----------+--------+
| JONES | 2975 |    35700 |     20 |
| SCOTT | 3000 |    36000 |     20 |
| FORD  | 3000 |    36000 |     20 |
+-------+------+----------+--------+

-- Q7 WAQTD EMPNO AND NAMES OF THE EMPLOYEES
-- WORKING AS MANAGER IN DEPT 20

SELECT EMPNO, ENAME
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO = 20;
+-------+-------+
| EMPNO | ENAME |
+-------+-------+
|  7566 | JONES |
+-------+-------+

-- Q8 WAQTD DETAILS OF EMPLOYEES WORKING IN
-- DEPT 20 OR 30

SELECT *
FROM EMP
WHERE DEPTNO = 20 OR DEPTNO = 30;
+-------+--------+----------+------+------------+------+------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+----------+------+------------+------+------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800 | NULL |     20 |
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100 | NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000 | NULL |     20 |
+-------+--------+----------+------+------------+------+------+--------+

-- Q9 WAQTD DETAILS OF EMPLOYEES WORKING AS
-- ANALYST IN DEPT 10 .

SELECT *
FROM EMP
WHERE JOB = 'ANALYST' AND DEPTNO = 10;
Empty set (0.00 sec)

-- Q10 WAQTD DETAILS OF EMPLOYEE WORKING AS
-- PRESIDENT WITH SALARY OF RUPEES 4000

SELECT *
FROM EMP
WHERE JOB = 'PRESIDENT' AND SAL = 4000;
Empty set (0.00 sec)

-- Q11 WAQTD NAMES AND DEPTNO , JOB OF EMPS
-- WORKING AS CLERK IN DEPT 10 OR 20

SELECT ENAME, DEPTNO, JOB
FROM EMP
WHERE JOB = 'CLERK'
AND (DEPTNO = 10 OR DEPTNO = 20);
+--------+--------+-------+
| ENAME  | DEPTNO | JOB   |
+--------+--------+-------+
| SMITH  |     20 | CLERK |
| ADAMS  |     20 | CLERK |
| MILLER |     10 | CLERK |
+--------+--------+-------+

-- Q12 WAQTD DETAILS OF EMPLOYEES WORKING AS
-- CLERK OR MANAGER IN DEPT 10 .

SELECT *
FROM EMP
WHERE (JOB = 'MANAGER' OR JOB = 'CLERK') AND DEPTNO = 10;
+-------+--------+---------+------+------------+------+------+--------+
| EMPNO | ENAME  | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+---------+------+------------+------+------+--------+
|  7782 | CLARK  | MANAGER | 7839 | 1981-06-09 | 2450 | NULL |     10 |
|  7934 | MILLER | CLERK   | 7782 | 1982-01-23 | 1300 | NULL |     10 |
+-------+--------+---------+------+------------+------+------+--------+

-- Q13 WAQTD NAMES OF EMPLOYEES WORKING IN
-- DEPT 10 , 20 , 30 , 40

SELECT ENAME
FROM EMP
WHERE DEPTNO = 10 OR DEPTNO = 20 OR DEPTNO = 30 OR DEPTNO = 40;
+--------+
| ENAME  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+

-- Q14 WAQTD DETAILS OF EMPLOYEES WITH EMPNO
-- 7902,7839.

SELECT *
FROM EMP
WHERE EMPNO = 7902 OR EMPNO = 7839;
+-------+-------+-----------+------+------------+------+------+--------+
| EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+-------+-----------+------+------------+------+------+--------+
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
+-------+-------+-----------+------+------------+------+------+--------+

-- Q15 WAQTD DETAILS OF EMPLOYEES WORKING AS
-- MANAGER OR SALESMAN OR CLERK

SELECT *
FROM EMP
WHERE JOB = 'MANAGER' OR JOB = 'SALESMAN' OR JOB = 'CLERK';
+-------+--------+----------+------+------------+------+------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+----------+------+------------+------+------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800 | NULL |     20 |
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450 | NULL |     10 |
|  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100 | NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300 | NULL |     10 |
+-------+--------+----------+------+------------+------+------+--------+

-- Q16 WAQTD NAMES OF EMPLOYEES HIRED AFTER 81
-- AND BEFORE 87

SELECT ENAME
FROM EMP
WHERE HIREDATE > '1981-12-31' AND HIREDATE < '1987-01-01';
+--------+
| ENAME  |
+--------+
| SCOTT  |
| ADAMS  |
| MILLER |
+--------+

-- Q17 WAQTD DETAILS OF EMPLOYEES EARNING MORE
-- THAN 1250 BUT LESS THAN 3000

SELECT *
FROM EMP
WHERE SAL > 1250 AND SAL < 3000;
+-------+--------+----------+------+------------+------+------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+----------+------+------------+------+------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450 | NULL |     10 |
|  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300 | NULL |     10 |
+-------+--------+----------+------+------------+------+------+--------+

-- Q18 WAQTD NAMES OF EMPLOYEES HIRED AFTER 81
-- INTO DEPT 10 OR 30

SELECT ENAME
FROM EMP
WHERE HIREDATE > '1981-12-31' AND DEPTNO = 10 OR DEPTNO = 30;
+--------+
| ENAME  |
+--------+
| ALLEN  |
| WARD   |
| MARTIN |
| BLAKE  |
| TURNER |
| JAMES  |
| MILLER |
+--------+

-- Q19 WAQTD NAMES OF EMPLOYEES ALONG WITH
-- ANNUAL SALARY FOR THE EMPLOYEES WORKING
-- AS MANAGER OR CLERK INTO DEPT 10 OR 30

SELECT ENAME, SAL * 12
FROM EMP
WHERE JOB = 'MANAGER' OR JOB = 'CLERK' AND (DEPTNO = 10 OR DEPTNO = 30);
+--------+----------+
| ENAME  | SAL * 12 |
+--------+----------+
| JONES  |    35700 |
| BLAKE  |    34200 |
| CLARK  |    29400 |
| JAMES  |    11400 |
| MILLER |    15600 |
+--------+----------+

-- Q20 WAQTD ALL THE DETAILS ALONG WITH ANNUAL
-- SALARY IF SAL IS BETWEEN 1000 AND 4000 ANNUAL
-- SALARY MORE THAN 15000

SELECT E.*, SAL * 12
FROM EMP E
WHERE SAL > 1000 AND SAL < 4000  AND SAL * 12 > 15000;
+-------+--------+----------+------+------------+------+------+--------+----------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO | SAL * 12 |
+-------+--------+----------+------+------------+------+------+--------+----------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |    19200 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975 | NULL |     20 |    35700 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |    34200 |
|  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450 | NULL |     10 |    29400 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000 | NULL |     20 |    36000 |
|  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |    18000 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000 | NULL |     20 |    36000 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300 | NULL |     10 |    15600 |
+-------+--------+----------+------+------------+------+------+--------+----------+

