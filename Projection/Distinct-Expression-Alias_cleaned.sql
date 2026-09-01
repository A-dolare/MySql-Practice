-- ──────────────────────────────────────────────
-- 1. Distinct
-- ──────────────────────────────────────────────
-- mysql>
-- mysql>
-- mysql>  Q1 WAQTD distinct department names
-- mysql>
-- mysql>
SELECT DISTINCT DNAME
FROM DEPT;
-- +------------+
-- | DNAME      |
-- +------------+
-- | ACCOUNTING |
-- | RESEARCH   |
-- | SALES      |
-- | OPERATIONS |
-- +------------+
-- mysql>
-- mysql>  Q2 WAQTD distinct employee names
-- mysql>
-- mysql>
SELECT DISTINCT ENAME
FROM EMP;
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

-- Q3 WAQTD distinct salaries

SELECT DISTINCT SAL
FROM EMP;
-- +------+
-- | SAL  |
-- +------+
-- |  800 |
-- | 1600 |
-- | 1250 |
-- | 2975 |
-- | 2850 |
-- | 2450 |
-- | 3000 |
-- | 5000 |
-- | 1500 |
-- | 1100 |
-- |  950 |
-- | 1300 |
-- +------+
-- ──────────────────────────────────────────────
-- 2. Expression
-- ──────────────────────────────────────────────
-- mysql>
-- mysql>  Q1 WAQTD name and salary given to the employees .
-- mysql>
SELECT ENAME, SAL
FROM EMP;
-- +--------+------+
-- | ENAME  | SAL  |
-- +--------+------+
-- | SMITH  |  800 |
-- | ALLEN  | 1600 |
-- | WARD   | 1250 |
-- | JONES  | 2975 |
-- | MARTIN | 1250 |
-- | BLAKE  | 2850 |
-- | CLARK  | 2450 |
-- | SCOTT  | 3000 |
-- | KING   | 5000 |
-- | TURNER | 1500 |
-- | ADAMS  | 1100 |
-- | JAMES  |  950 |
-- | FORD   | 3000 |
-- | MILLER | 1300 |
-- +--------+------+

-- Q2 WAQTD name and annual salary of the employees .

SELECT ENAME, SAL * 12
FROM EMP;
-- +--------+------------+
-- | ENAME  | SAL * 12   |
-- +--------+------------+
-- | SMITH  |       9600 |
-- | ALLEN  |      19200 |
-- | WARD   |      15000 |
-- | JONES  |      35700 |
-- | MARTIN |      15000 |
-- | BLAKE  |      34200 |
-- | CLARK  |      29400 |
-- | SCOTT  |      36000 |
-- | KING   |      60000 |
-- | TURNER |      18000 |
-- | ADAMS  |      13200 |
-- | JAMES  |      11400 |
-- | FORD   |      36000 |
-- | MILLER |      15600 |
-- +--------+------------+


-- Q3 WAQTD all the details of the employee along with annual salary

SELECT EMP.*, SAL * 12
FROM EMP;
-- +-------+--------+-----------+------+------------+------+------+--------+------------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO | SAL * 12   |
-- +-------+--------+-----------+------+------------+------+------+--------+------------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |       9600 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |      19200 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |      15000 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |      35700 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |      15000 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |      34200 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |      29400 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |      36000 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |      60000 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1980-09-08 | 1500 |    0 |     30 |      18000 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |      13200 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |      11400 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |      36000 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |      15600 |
-- +-------+--------+-----------+------+------------+------+------+--------+------------+

-- Q4 WAQTD name and salary with a hike of 20% .

SELECT ENAME, SAL * 1.2
FROM EMP;
-- +--------+-----------+
-- | ENAME  | SAL * 1.2 |
-- +--------+-----------+
-- | SMITH  |     960.0 |
-- | ALLEN  |    1920.0 |
-- | WARD   |    1500.0 |
-- | JONES  |    3570.0 |
-- | MARTIN |    1500.0 |
-- | BLAKE  |    3420.0 |
-- | CLARK  |    2940.0 |
-- | SCOTT  |    3600.0 |
-- | KING   |    6000.0 |
-- | TURNER |    1800.0 |
-- | ADAMS  |    1320.0 |
-- | JAMES  |    1140.0 |
-- | FORD   |    3600.0 |
-- | MILLER |    1560.0 |
-- +--------+-----------+


-- Q5 WAQTD name and salary of an employee with a deduction Of 10% .

SELECT ENAME, SAL * 0.9
FROM EMP;
-- +--------+-------------+
-- | ENAME  | SAL * 0.9   |
-- +--------+-------------+
-- | SMITH  |       720.0 |
-- | ALLEN  |      1440.0 |
-- | WARD   |      1125.0 |
-- | JONES  |      2677.5 |
-- | MARTIN |      1125.0 |
-- | BLAKE  |      2565.0 |
-- | CLARK  |      2205.0 |
-- | SCOTT  |      2700.0 |
-- | KING   |      4500.0 |
-- | TURNER |      1350.0 |
-- | ADAMS  |       990.0 |
-- | JAMES  |       855.0 |
-- | FORD   |      2700.0 |
-- | MILLER |      1170.0 |
-- +--------+-------------+

-- ──────────────────────────────────────────────
-- 3. Alias
-- ──────────────────────────────────────────────

-- Q1 WAQTD annual salary for all the employees .
SELECT SAL * 12 AS ANNUAL_SAL
FROM EMP;
-- +------------+
-- | ANNUAL_SAL |
-- +------------+
-- |       9600 |
-- |      19200 |
-- |      15000 |
-- |      35700 |
-- |      15000 |
-- |      34200 |
-- |      29400 |
-- |      36000 |
-- |      60000 |
-- |      18000 |
-- |      13200 |
-- |      11400 |
-- |      36000 |
-- |      15600 |
-- +------------+
-- Q2 WAQTD name and salary with a deduction 32% .

SELECT ENAME, SAL * 0.68 AS DEDUCTED_SAL
FROM EMP;
-- +--------+-------+------+
-- | ENAME  | DEDUCTED_SAL |
-- +--------+--------------+
-- | SMITH  |       544.00 |
-- | ALLEN  |      1088.00 |
-- | WARD   |       850.00 |
-- | JONES  |      2023.00 |
-- | MARTIN |       850.00 |
-- | BLAKE  |      1938.00 |
-- | CLARK  |      1666.00 |
-- | SCOTT  |      2040.00 |
-- | KING   |      3400.00 |
-- | TURNER |      1020.00 |
-- | ADAMS  |       748.00 |
-- | JAMES  |       646.00 |
-- | FORD   |      2040.00 |
-- | MILLER |       884.00 |
-- +--------+--------------+


/*                               ASSIGNMENT ON EPRESSIONS AND ALIAS                                         */

-- Q1 WAQTD NAME OF THE EMPLOYEE ALONG WITH THEIR ANNUAL SALARY.

SELECT ENAME, SAL * 12 AS ANNUAL_SAL
FROM EMP;
-- +--------+------------+
-- | ENAME  | ANNUAL_SAL |
-- +--------+------------+
-- | SMITH  |       9600 |
-- | ALLEN  |      19200 |
-- | WARD   |      15000 |
-- | JONES  |      35700 |
-- | MARTIN |      15000 |
-- | BLAKE  |      34200 |
-- | CLARK  |      29400 |
-- | SCOTT  |      36000 |
-- | KING   |      60000 |
-- | TURNER |      18000 |
-- | ADAMS  |      13200 |
-- | JAMES  |      11400 |
-- | FORD   |      36000 |
-- | MILLER |      15600 |
-- +--------+------------+


-- Q2 WAQTD ENAME AND JOB FOR ALL THE EMPLOYEE WITH THEIR HALF TERM SALARY.

SELECT ENAME, JOB, SAL * 6 AS HALF_TERM_SAL
FROM EMP;
-- +--------+-----------+---------------+
-- | ENAME  | JOB       | HALF_TERM_SAL |
-- +--------+-----------+---------------+
-- | SMITH  | CLERK     |          4800 |
-- | ALLEN  | SALESMAN  |          9600 |
-- | WARD   | SALESMAN  |          7500 |
-- | JONES  | MANAGER   |         17850 |
-- | MARTIN | SALESMAN  |          7500 |
-- | BLAKE  | MANAGER   |         17100 |
-- | CLARK  | MANAGER   |         14700 |
-- | SCOTT  | ANALYST   |         18000 |
-- | KING   | PRESIDENT |         30000 |
-- | TURNER | SALESMAN  |          9000 |
-- | ADAMS  | CLERK     |          6600 |
-- | JAMES  | CLERK     |          5700 |
-- | FORD   | ANALYST   |         18000 |
-- | MILLER | CLERK     |          7800 |
-- +--------+-----------+---------------+


-- Q3 WAQTD ALL THE DETAILS OF THE EMPLOYEES ALONG WITH AN ANNUALBONUS OF 2000.

SELECT EMP.*, SAL + 2000
FROM EMP;
-- +-------+--------+-----------+------+------------+------+------+--------+------------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO | SAL + 2000 |
-- +-------+--------+-----------+------+------------+------+------+--------+------------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |       2800 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |       3600 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |       3250 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |       4975 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |       3250 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |       4850 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |       4450 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |       5000 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |       7000 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1980-09-08 | 1500 |    0 |     30 |       3500 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |       3100 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |       2950 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |       5000 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |       3300 |
-- +-------+--------+-----------+------+------------+------+------+--------+------------+


-- Q4 WAQTD NAME SALARY AND SALARY WITH A HIKE OF 10%.

SELECT ENAME, SAL, SAL * 1.10 AS HIKE_SAL
FROM EMP;
-- +--------+------+----------+
-- | ENAME  | SAL  | HIKE_SAL |
-- +--------+------+----------+
-- | SMITH  |  800 |   880.00 |
-- | ALLEN  | 1600 |  1760.00 |
-- | WARD   | 1250 |  1375.00 |
-- | JONES  | 2975 |  3272.50 |
-- | MARTIN | 1250 |  1375.00 |
-- | BLAKE  | 2850 |  3135.00 |
-- | CLARK  | 2450 |  2695.00 |
-- | SCOTT  | 3000 |  3300.00 |
-- | KING   | 5000 |  5500.00 |
-- | TURNER | 1500 |  1650.00 |
-- | ADAMS  | 1100 |  1210.00 |
-- | JAMES  |  950 |  1045.00 |
-- | FORD   | 3000 |  3300.00 |
-- | MILLER | 1300 |  1430.00 |
-- +--------+------+----------+


-- Q5 WAQTD NAME AND SALARY WITH DEDUCTION OF 25%.

SELECT ENAME, SAL * 0.75 AS REDUCED_SAL
FROM EMP;
-- +--------+-------------+
-- | ENAME  | REDUCED_SAL |
-- +--------+-------------+
-- | SMITH  |      600.00 |
-- | ALLEN  |     1200.00 |
-- | WARD   |      937.50 |
-- | JONES  |     2231.25 |
-- | MARTIN |      937.50 |
-- | BLAKE  |     2137.50 |
-- | CLARK  |     1837.50 |
-- | SCOTT  |     2250.00 |
-- | KING   |     3750.00 |
-- | TURNER |     1125.00 |
-- | ADAMS  |      825.00 |
-- | JAMES  |      712.50 |
-- | FORD   |     2250.00 |
-- | MILLER |      975.00 |
-- +--------+-------------+


-- Q6 WAQTD NAME AND SALARY WITH MONTHLY HIKE OF 50.

SELECT ENAME, SAL + 50 AS MONTHLY_HIKE
FROM EMP;
-- +--------+--------------+
-- | ENAME  | MONTHLY_HIKE |
-- +--------+--------------+
-- | SMITH  |          850 |
-- | ALLEN  |         1650 |
-- | WARD   |         1300 |
-- | JONES  |         3025 |
-- | MARTIN |         1300 |
-- | BLAKE  |         2900 |
-- | CLARK  |         2500 |
-- | SCOTT  |         3050 |
-- | KING   |         5050 |
-- | TURNER |         1550 |
-- | ADAMS  |         1150 |
-- | JAMES  |         1000 |
-- | FORD   |         3050 |
-- | MILLER |         1350 |
-- +--------+--------------+


-- Q7 WAQTD NAME AND ANNUAL SALARY WITH DEDUCTION OF 10%.

SELECT ENAME, SAL * 12 * 0.9 AS REDUCED_ANNUAL_SAL
FROM EMP;
-- +--------+--------------------+
-- | ENAME  | REDUCED_ANNUAL_SAL |
-- +--------+--------------------+
-- | SMITH  |             8640.0 |
-- | ALLEN  |            17280.0 |
-- | WARD   |            13500.0 |
-- | JONES  |            32130.0 |
-- | MARTIN |            13500.0 |
-- | BLAKE  |            30780.0 |
-- | CLARK  |            26460.0 |
-- | SCOTT  |            32400.0 |
-- | KING   |            54000.0 |
-- | TURNER |            16200.0 |
-- | ADAMS  |            11880.0 |
-- | JAMES  |            10260.0 |
-- | FORD   |            32400.0 |
-- | MILLER |            14040.0 |
-- +--------+--------------------+


-- Q8 WAQTD TOTAL SALARY GIVEN TO EACH EMPLOYEE (SAL+COMM).

SELECT ENAME, SAL + IFNULL(COMM, 0) AS TOTAL_SAL
FROM EMP;
-- +--------+-----------+
-- | ENAME  | TOTAL_SAL |
-- +--------+-----------+
-- | SMITH  |       800 |
-- | ALLEN  |      1900 |
-- | WARD   |      1750 |
-- | JONES  |      2975 |
-- | MARTIN |      2650 |
-- | BLAKE  |      2850 |
-- | CLARK  |      2450 |
-- | SCOTT  |      3000 |
-- | KING   |      5000 |
-- | TURNER |      1500 |
-- | ADAMS  |      1100 |
-- | JAMES  |       950 |
-- | FORD   |      3000 |
-- | MILLER |      1300 |
-- +--------+-----------+


-- Q9 WAQTD DETAILS OF ALL THE EMPLOYEES ALONG WITH ANNUAL SALARY.

SELECT EMP.*, SAL * 12 AS ANNUAL_SAL
FROM EMP;
-- +-------+--------+-----------+------+------------+------+------+--------+------------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO | ANNUAL_SAL |
-- +-------+--------+-----------+------+------------+------+------+--------+------------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |       9600 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |      19200 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |      15000 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |      35700 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |      15000 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |      34200 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |      29400 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |      36000 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |      60000 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1980-09-08 | 1500 |    0 |     30 |      18000 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |      13200 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |      11400 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |      36000 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |      15600 |
-- +-------+--------+-----------+------+------------+------+------+--------+------------+


-- Q10 WAQTD NAME AND DESIGNATION ALONG WITH 100 PENALTY IN SALARY

SELECT ENAME, JOB, SAL - 100 AS REDUCED_SAL
FROM EMP;
-- +--------+-----------+-------------+
-- | ENAME  | JOB       | REDUCED_SAL |
-- +--------+-----------+-------------+
-- | SMITH  | CLERK     |         700 |
-- | ALLEN  | SALESMAN  |        1500 |
-- | WARD   | SALESMAN  |        1150 |
-- | JONES  | MANAGER   |        2875 |
-- | MARTIN | SALESMAN  |        1150 |
-- | BLAKE  | MANAGER   |        2750 |
-- | CLARK  | MANAGER   |        2350 |
-- | SCOTT  | ANALYST   |        2900 |
-- | KING   | PRESIDENT |        4900 |
-- | TURNER | SALESMAN  |        1400 |
-- | ADAMS  | CLERK     |        1000 |
-- | JAMES  | CLERK     |         850 |
-- | FORD   | ANALYST   |        2900 |
-- | MILLER | CLERK     |        1200 |
-- +--------+-----------+-------------+