/*                                                                IN OPERATOR                                                                                */

-- Q1 WAQTD name and deptno of the employees working in
-- dept 10 or 30 .

SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO IN (10, 30);
-- +--------+--------+
-- | ENAME  | DEPTNO |
-- +--------+--------+
-- | ALLEN  |     30 |
-- | WARD   |     30 |
-- | MARTIN |     30 |
-- | BLAKE  |     30 |
-- | CLARK  |     10 |
-- | KING   |     10 |
-- | TURNER |     30 |
-- | JAMES  |     30 |
-- | MILLER |     10 |
-- +--------+--------+

-- Q2 WAQTD name and job of the employee working as a
-- clerk or manager Or salesman .

SELECT ENAME, JOB
FROM EMP
WHERE JOB IN ('CLERK', 'MANAGER', 'SALESMAN')
;
-- +--------+----------+
-- | ENAME  | JOB      |
-- +--------+----------+
-- | SMITH  | CLERK    |
-- | ALLEN  | SALESMAN |
-- | WARD   | SALESMAN |
-- | JONES  | MANAGER  |
-- | MARTIN | SALESMAN |
-- | BLAKE  | MANAGER  |
-- | CLARK  | MANAGER  |
-- | TURNER | SALESMAN |
-- | ADAMS  | CLERK    |
-- | JAMES  | CLERK    |
-- | MILLER | CLERK    |
-- +--------+----------+

-- Q3 WAQTD empno , ename and salary of the employees
-- whose empno Is 7902 or 7839 and getting salary more
-- than 2925.

SELECT EMPNO, ENAME, SAL
FROM EMP
WHERE EMPNO IN (7902, 7839) AND SAL > 2925;
-- +-------+-------+------+
-- | EMPNO | ENAME | SAL  |
-- +-------+-------+------+
-- |  7839 | KING  | 5000 |
-- |  7902 | FORD  | 3000 |
-- +-------+-------+------+

/*                                                                     NOT IN OPERATOR                                                                        */

-- Q1 WAQTD name and deptno of all the employees except
-- the emp Working in dept 10 or 40 .

SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO NOT IN (10, 40);
-- +--------+--------+
-- | ENAME  | DEPTNO |
-- +--------+--------+
-- | SMITH  |     20 |
-- | ALLEN  |     30 |
-- | WARD   |     30 |
-- | JONES  |     20 |
-- | MARTIN |     30 |
-- | BLAKE  |     30 |
-- | SCOTT  |     20 |
-- | TURNER |     30 |
-- | ADAMS  |     20 |
-- | JAMES  |     30 |
-- | FORD   |     20 |
-- +--------+--------+

-- Q2 WAQTD name , deptno and job of the employee
-- working in dept 20 but not as a clerk or manager .

SELECT ENAME, DEPTNO, JOB
FROM EMP
WHERE DEPTNO = 20 AND JOB NOT IN ('CLERK', 'MANAGER');
-- +-------+--------+---------+
-- | ENAME | DEPTNO | JOB     |
-- +-------+--------+---------+
-- | SCOTT |     20 | ANALYST |
-- | FORD  |     20 | ANALYST |
-- +-------+--------+---------+

/*                                                               BETWEEN OPERATOR                                                                             */

-- Q1 WAQTD name and salary of the employees if the emp is earning
-- Salary in the range 1000 to 3000 .

SELECT ENAME, SAL
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000;
-- +--------+------+
-- | ENAME  | SAL  |
-- +--------+------+
-- | ALLEN  | 1600 |
-- | WARD   | 1250 |
-- | JONES  | 2975 |
-- | MARTIN | 1250 |
-- | BLAKE  | 2850 |
-- | CLARK  | 2450 |
-- | SCOTT  | 3000 |
-- | TURNER | 1500 |
-- | ADAMS  | 1100 |
-- | FORD   | 3000 |
-- | MILLER | 1300 |
-- +--------+------+

-- Q2 WAQTD name and deptno of the employees
-- hired during 2019 (the entire year of 2019) .

SELECT ENAME, DEPTNO
FROM EMP
WHERE HIREDATE BETWEEN '2019-01-01' AND '2019-12-31';
-- Empty set (0.00 sec)

-- Q3 WAQTD name , sal and hiredate of the employees hired during
-- 2017 into dept 20 with a salary greater that 2000 .

SELECT ENAME, SAL, HIREDATE
FROM EMP
WHERE DEPTNO = 20 AND SAL > 2000 AND HIREDATE BETWEEN '2017-01-01' AND '2017-12-31';
-- Empty set (0.00 sec)

/*                                                              NOT BETWEEN OPERATOR                                                                         */

-- Q1 WAQTD name and salary of the employees if the emp is not
-- earning Salary in the range 1000 to 3000 .

SELECT ENAME, SAL
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 3000;
-- +-------+------+
-- | ENAME | SAL  |
-- +-------+------+
-- | SMITH |  800 |
-- | KING  | 5000 |
-- | JAMES |  950 |
-- +-------+------+

-- Q2 WAQTD name and deptno of the employees working in dept 10
-- And not hired during 2019 .

SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO = 10 AND HIREDATE NOT BETWEEN '2019-01-01' AND '2019-12-31';
-- +--------+--------+
-- | ENAME  | DEPTNO |
-- +--------+--------+
-- | CLARK  |     10 |
-- | KING   |     10 |
-- | MILLER |     10 |
-- +--------+--------+

-- Q3 WAQTD name , sal and hiredate of the employees who were not
-- hired during 2017 into dept 20 with a salary greater that 2000 .

SELECT ENAME, SAL, HIREDATE
FROM EMP
WHERE DEPTNO = 20
AND SAL > 2000
AND HIREDATE NOT BETWEEN '1981-01-01' AND '1981-12-31';
-- +-------+------+------------+
-- | ENAME | SAL  | HIREDATE   |
-- +-------+------+------------+
-- | SCOTT | 3000 | 1982-12-09 |
-- +-------+------+------------+

/*                                                                      IS OPERATOR                                                                          */

-- Q1 WAQTD name of the employee who is not getting salary .

SELECT ENAME
FROM EMP
WHERE SAL IS NULL;
-- Empty set (0.00 sec)

-- Q2 WAQTD name of the emp who doesn’t get commission .

SELECT ENAME
FROM EMP
WHERE COMM IS NULL;
-- +--------+
-- | ENAME  |
-- +--------+
-- | SMITH  |
-- | JONES  |
-- | BLAKE  |
-- | CLARK  |
-- | SCOTT  |
-- | KING   |
-- | ADAMS  |
-- | JAMES  |
-- | FORD   |
-- | MILLER |
-- +--------+

-- Q3 WAQTD name , sal and comm of the emp if the emp doesn’t earn
-- both .

SELECT ENAME, SAL, COMM
FROM EMP
WHERE COMM IS NULL AND SAL IS NULL;
-- Empty set (0.00 sec)

/*                                                                    IS NOT OPERATOR                                                                         */

-- Q1 WAQTD name of the employee who is getting salary .

SELECT ENAME
FROM EMP
WHERE SAL IS NOT NULL;
-- +--------+
-- | ENAME  |
-- +--------+
-- | SMITH  |
-- | ALLEN  |
-- | WARD   |
-- | JONES  |
-- | MARTIN |
-- | BLAKE  |
-- | CLARK  |
-- | SCOTT  |
-- | KING   |
-- | TURNER |
-- | ADAMS  |
-- | JAMES  |
-- | FORD   |
-- | MILLER |
-- +--------+

-- Q2 WAQTD name of the emp who gets commission .

SELECT ENAME
FROM EMP
WHERE COMM IS NOT NULL;
-- +--------+
-- | ENAME  |
-- +--------+
-- | ALLEN  |
-- | WARD   |
-- | MARTIN |
-- | TURNER |
-- +--------+

-- Q3 WAQTD name , sal and comm of the emp if the emp doesn’t earn
-- commission but gets salary .

SELECT ENAME, SAL, COMM
FROM EMP
WHERE COMM IS NULL AND SAL IS NOT NULL;
-- +--------+------+------+
-- | ENAME  | SAL  | COMM |
-- +--------+------+------+
-- | SMITH  |  800 | NULL |
-- | JONES  | 2975 | NULL |
-- | BLAKE  | 2850 | NULL |
-- | CLARK  | 2450 | NULL |
-- | SCOTT  | 3000 | NULL |
-- | KING   | 5000 | NULL |
-- | ADAMS  | 1100 | NULL |
-- | JAMES  |  950 | NULL |
-- | FORD   | 3000 | NULL |
-- | MILLER | 1300 | NULL |
-- +--------+------+------+

/*                                                                    LIKE OPERATOR                                                                           */

-- Q1  WAQTD details of an employee whose name is SMITH .

SELECT *
FROM EMP
WHERE ENAME = 'SMITH';
-- +-------+-------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-------+------+------------+------+------+--------+
-- |  7369 | SMITH | CLERK | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- +-------+-------+-------+------+------------+------+------+--------+

-- Q2 WAQTD details of the employee who's name starts with 'S' .

SELECT *
FROM EMP
WHERE ENAME LIKE 'S%';
-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- Q3 WAQTD details of the employee who's name ends with 'S' .

SELECT *
FROM EMP
WHERE ENAME LIKE '%S';
-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES | CLERK   | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- Q4 WAQTD names of the employees who have character 'S' in their
-- names .

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%S%';
-- +-------+
-- | ENAME |
-- +-------+
-- | SMITH |
-- | JONES |
-- | SCOTT |
-- | ADAMS |
-- | JAMES |
-- +-------+

-- Q5 WAQTD names that starts with 'J' and ends with 'S' .

SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'J%S';
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- | JAMES |
-- +-------+

-- Q6 WAQTD names of the employee if the emp has char 'A' as his
-- second character .

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '_A%';
-- +--------+
-- | ENAME  |
-- +--------+
-- | WARD   |
-- | MARTIN |
-- | JAMES  |
-- +--------+

-- Q7 WAQTD names of the employee if the emp has char 'A' as his Third
-- character .

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '__A%';
-- +-------+
-- | ENAME |
-- +-------+
-- | BLAKE |
-- | CLARK |
-- | ADAMS |
-- +-------+

-- Q8 WAQTD names of the employee if the emp has char 'A' as his
-- second character and 'S' is last character .

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '_A%S';
-- +-------+
-- | ENAME |
-- +-------+
-- | JAMES |
-- +-------+

-- Q9 WAQTD names of the employee if the emp has char 'A' present at at
-- least 2 times .

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%A%A%';
-- +-------+
-- | ENAME |
-- +-------+
-- | ADAMS |
-- +-------+

-- Q10 WAQTD names of the employee if the emp's salary's last 2 digit is
-- 50 rupees .

SELECT ENAME
FROM EMP
WHERE MOD(SAL, 100) = 50;
-- +--------+
-- | ENAME  |
-- +--------+
-- | WARD   |
-- | MARTIN |
-- | BLAKE  |
-- | CLARK  |
-- | JAMES  |
-- +--------+

-- Q11 WAQTD names of the employees hired in November .

SELECT ENAME
FROM EMP
WHERE MONTH(HIREDATE) = 11;
-- +-------+
-- | ENAME |
-- +-------+
-- | KING  |
-- +-------+

/*                                                                  NOT LIKE OPERATOR                                                                          */

/*                                                             ASSIGNMENT ON SPECIAL OPERATORS                                                                 */

-- Q1 LIST ALL THE EMPLOYEES WHOSE COMMISSION IS
-- NULL

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

-- Q2 LIST ALL THE EMPLOYEES WHO DON’T HAVE A
-- REPORTING MANAGER

SELECT *
FROM EMP
WHERE MGR IS NULL;
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- +-------+-------+-----------+------+------------+------+------+--------+

-- Q3 LIST ALL THE SALESMEN IN DEPT 30

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN' AND DEPTNO = 30;
-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- Q4 LIST ALL THE SALESMEN IN DEPT NUMBER 30 AND
-- HAVING SALARY GREATER THAN 1500

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN' AND DEPTNO = 30 AND SAL > 1500;
-- +-------+-------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+----------+------+------------+------+------+--------+
-- |  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- +-------+-------+----------+------+------------+------+------+--------+

-- Q5 LIST ALL THE EMPLOYEES WHOSE NAME STARTS
-- WITH ‘S’ OR ‘A’

SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'S%' OR ENAME LIKE 'A%';
-- +-------+
-- | ENAME |
-- +-------+
-- | SMITH |
-- | ALLEN |
-- | SCOTT |
-- | ADAMS |
-- +-------+

-- Q6 LIST ALL THE EMPLOYEES EXCEPT THOSE WHO ARE
-- WORKING IN DEPT 10 & 20

SELECT *
FROM EMP
WHERE DEPTNO NOT IN (10, 20)

;
-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- Q7 LIST THE EMPLOYEES WHOSE NAME DOES NOT START
-- WITH ‘S’

SELECT *
FROM EMP
WHERE ENAME NOT LIKE 'S%';
-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- Q8 LIST ALL THE EMPLOYEES WHO ARE HAVING
-- REPORTING MANAGERS IN DEPT 10

SELECT *
FROM EMP
WHERE MGR IS NOT NULL AND DEPTNO = 10;
-- +-------+--------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+---------+------+------------+------+------+--------+
-- |  7782 | CLARK  | MANAGER | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7934 | MILLER | CLERK   | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+---------+------+------------+------+------+--------+

-- Q9 LIST ALL THE EMPLOYEES WHOSE COMMISSION IS
-- NULL AND WORKING AS CLERK

SELECT *
FROM EMP
WHERE COMM IS NULL AND JOB = 'CLERK';
-- +-------+--------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7876 | ADAMS  | CLERK | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-------+------+------------+------+------+--------+

-- Q10

SELECT *
FROM EMP
WHERE MGR IS NULL AND DEPTNO IN (10, 30);
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- +-------+-------+-----------+------+------------+------+------+--------+

-- Q11 LIST ALL THE SALESMEN IN DEPT 30 WITH SAL MORE
-- THAN 2450

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN' AND DEPTNO = 30 AND SAL > 2450;
-- Empty set (0.00 sec)

-- Q12 LIST ALL THE ANALYST IN DEPT NUMBER 20 AND
-- HAVING SALARY GREATER THAN 2500

SELECT *
FROM EMP
WHERE JOB = 'ANALYST' AND DEPTNO = 20 AND SAL > 2500;
-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- Q13 LIST ALL THE EMPLOYEES WHOSE NAME STARTS
-- WITH ‘M’ OR ‘J’

SELECT *
FROM EMP
WHERE ENAME LIKE 'M%' OR ENAME LIKE 'J%';
-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- Q14 LIST ALL THE EMPLOYEES WITH ANNUAL SALARY
-- EXCEPT THOSE WHO ARE WORKING IN DEPT 30

SELECT ENAME, SAL * 12
FROM EMP
WHERE DEPTNO = 30;
-- +--------+----------+
-- | ENAME  | SAL * 12 |
-- +--------+----------+
-- | ALLEN  |    19200 |
-- | WARD   |    15000 |
-- | MARTIN |    15000 |
-- | BLAKE  |    34200 |
-- | TURNER |    18000 |
-- | JAMES  |    11400 |
-- +--------+----------+

-- Q15 LIST ALL THE EMPLOYEES WITH ANNUAL SALARY
-- EXCEPT THOSE WHO ARE WORKING IN DEPT 30

SELECT ENAME
FROM EMP
WHERE ENAME NOT LIKE '%ES' OR ENAME NOT LIKE '%R';
-- +--------+
-- | ENAME  |
-- +--------+
-- | SMITH  |
-- | ALLEN  |
-- | WARD   |
-- | JONES  |
-- | MARTIN |
-- | BLAKE  |
-- | CLARK  |
-- | SCOTT  |
-- | KING   |
-- | TURNER |
-- | ADAMS  |
-- | JAMES  |
-- | FORD   |
-- | MILLER |
-- +--------+

SELECT ENAME
FROM EMP
WHERE ENAME NOT LIKE '%ES' AND ENAME NOT LIKE '%R';
-- +--------+
-- | ENAME  |
-- +--------+
-- | SMITH  |
-- | ALLEN  |
-- | WARD   |
-- | MARTIN |
-- | BLAKE  |
-- | CLARK  |
-- | SCOTT  |
-- | KING   |
-- | ADAMS  |
-- | FORD   |
-- +--------+

-- Q16 LIST ALL THE EMPLOYEES WHO ARE HAVING
-- REPORTING MANAGERS IN DEPT 10 ALONG WITH 10%
-- HIKE IN SALARY

SELECT ENAME, SAL * 1.10
FROM EMP
WHERE MGR IS NOT NULL AND DEPTNO = 10;
-- +--------+------------+
-- | ENAME  | SAL * 1.10 |
-- +--------+------------+
-- | CLARK  |    2695.00 |
-- | MILLER |    1430.00 |
-- +--------+------------+

-- Q17 DISPLAY ALL THE EMPLOYEE WHO ARE
-- ‘SALESMAN’S HAVING ‘E’ AS THE LAST BUT ONE
-- CHARACTER IN ENAME BUT SALARY HAVING EXACTLY
-- 4 CHARACTER

SELECT ENAME
FROM EMP
WHERE JOB = 'SALESMAN' AND ENAME LIKE '%E_'
AND SAL LIKE '____';
-- Empty set (0.00 sec)

-- Q18 DISPLAY ALL THE EMPLOYEE WHO ARE JOINED
-- AFTER YEAR 81

SELECT ENAME
FROM EMP
WHERE HIREDATE > '1981-12-31';
-- +--------+
-- | ENAME  |
-- +--------+
-- | SCOTT  |
-- | ADAMS  |
-- | MILLER |
-- +--------+

-- Q19 DISPLAY ALL THE EMPLOYEE WHO ARE JOINED IN
-- FEB

SELECT ENAME
FROM EMP
WHERE HIREDATE LIKE '%02%';
-- +-------+
-- | ENAME |
-- +-------+
-- | ALLEN |
-- | WARD  |
-- | JONES |
-- +-------+

-- Q20 LIST THE EMPLOYEES WHO ARE NOT WORKING AS
-- MANAGERS AND CLERKS IN DEPT 10 AND 20 WITH A
-- SALARY IN THE RANGE OF 1000 TO 3000.

SELECT ENAME
FROM EMP
WHERE JOB NOT IN ('MANAGER', 'CLERK') AND DEPTNO IN (20, 10) AND SAL BETWEEN 1000 AND 3000;
-- +-------+
-- | ENAME |
-- +-------+
-- | SCOTT |
-- | FORD  |
-- +-------+
