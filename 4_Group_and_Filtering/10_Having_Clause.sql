/*                                                                    FILTERING: HAVING CLAUSE                                                                 */

-- Q1 WAQTD the designations in which there are at lest 2 employees
-- Present .

SELECT JOB, COUNT(*)
FROM EMP
GROUP BY JOB
HAVING COUNT(*) > 1;
-- | JOB      | COUNT(*) |
-- | CLERK    |        4 |
-- | SALESMAN |        4 |
-- | MANAGER  |        3 |
-- | ANALYST  |        2 |

-- Q2 WAQTD the names that are repeated .

SELECT ENAME, COUNT(*)
FROM EMP
GROUP BY ENAME
HAVING COUNT(*) > 1;
-- Empty set (0.00 sec)

-- Q3 WAQTD names that are repeated exactly twice .

SELECT ENAME, COUNT(*)
FROM EMP
GROUP BY ENAME
HAVING COUNT(*) = 2;
-- Empty set (0.00 sec)

-- Q4 WAQTD the salary that is repeated .

SELECT COUNT(*), SAL
FROM EMP
GROUP BY SAL
HAVING COUNT(*) > 1;
-- +----------+------+
-- -- | COUNT(*) | SAL  |
-- +----------+------+
-- -- |        2 | 1250 |
-- -- |        2 | 3000 |
-- +----------+------+

-- Q5 WAQTD number of employees working in each dept having
-- At least 2 emp's Character 'A' or 'S' in their names

SELECT COUNT(*), DEPTNO
FROM EMP
WHERE ENAME LIKE '%A%' OR ENAME LIKE '%S%'
GROUP BY DEPTNO
HAVING COUNT(*) > 1;
-- | COUNT(*) | DEPTNO |
-- |        4 |     20 |
-- |        5 |     30 |

-- Q6 WAQTD job and total salary of each job , if the total salary
-- Of each job is greater than 3450 .

SELECT JOB, SUM(SAL)
FROM EMP
GROUP BY JOB
HAVING SUM(SAL) > 3450;
-- | JOB       | SUM(SAL) |
-- | CLERK     |     4150 |
-- | SALESMAN  |     5600 |
-- | MANAGER   |     8275 |
-- | ANALYST   |     6000 |
-- | PRESIDENT |     5000 |

-- Q7 WAQTD job and total salary of the employees if the employees
-- Are earning more than 1500.

SELECT JOB, SUM(SAL)
FROM EMP
WHERE SAL > 1500
GROUP BY JOB;
-- | JOB       | SUM(SAL) |
-- | SALESMAN  |     1600 |
-- | MANAGER   |     8275 |
-- | ANALYST   |     6000 |
-- | PRESIDENT |     5000 |

-- Q8 WAQTD Job wise maximum salary if the maximum salary
-- Of each job exceeds 2000 .

SELECT JOB, MAX(SAL)
FROM EMP
GROUP BY JOB
HAVING MAX(SAL) > 2000;
-- | JOB       | MAX(SAL) |
-- | MANAGER   |     2975 |
-- | ANALYST   |     3000 |
-- | PRESIDENT |     5000 |

-- Q9 WAQTD number of emp earning sal more than 1200 in each job
-- and the total sal needed to pay emp of each job must exceeds
-- 3800.

SELECT COUNT(*), JOB
FROM EMP
WHERE SAL > 1200
GROUP BY JOB
HAVING SUM(SAL) > 3800;
-- | COUNT(*) | JOB       |
-- |        4 | SALESMAN  |
-- |        3 | MANAGER   |
-- |        2 | ANALYST   |
-- |        1 | PRESIDENT |

/*                                                                  ASSIGNMENT QUESTIONS ON HAVING CLAUSE                                                     */

-- Q1 WAQTD DNO AND NUMBER OF EMP WORKING IN EACH
-- DEPT IF THERE
-- ARE ATLEAST 2 CLERKS IN EACH DEPT

SELECT DEPTNO, COUNT(*)
FROM EMP
WHERE JOB = 'CLERK'
GROUP BY DEPTNO
HAVING COUNT(*) > 1;
-- | DEPTNO | COUNT(*) |
-- |     20 |        2 |

-- Q2 WAQTD DNO AND TOTAL SAALARYNEEDED TO PAY ALL
-- EMP
-- IN EACH DEPT IF THERE ARE ATLEAST 4 EMP IN EACH
-- DEPT

SELECT DEPTNO, SUM(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) > 3;
-- | DEPTNO | SUM(SAL) |
-- |     20 |    10875 |
-- |     30 |     9400 |

-- Q3 WAQTD NUMBER OF EMP EARNING SAL MORE THAN 1200
-- IN EACH JOB
-- AND THE TOTAL SAL NEEDED TO PAY EMP OF EACH JOB
-- MUST EXCEES 3800

SELECT JOB,
COUNT(*)
FROM EMP
WHERE SAL > 1200
GROUP BY JOB
HAVING SUM(SAL) > 3800;
-- | JOB       | COUNT(*) |
-- | SALESMAN  |        4 |
-- | MANAGER   |        3 |
-- | ANALYST   |        2 |
-- | PRESIDENT |        1 |

-- Q4 WAQTD DEPTNO AND NUMBER OF EMP WORKING ONLY
-- IF THERE ARE 2 EMP WORKING IN EACH DEPT AS
-- MANAGER .

SELECT DEPTNO,
COUNT(*)
FROM EMP
WHERE JOB = 'MANAGER'
GROUP BY DEPTNO
HAVING COUNT(*) = 2;
Empty set (0.00 sec)

-- Q5 WAQTD JOB AND MAX SAL OF EMP IN EACH JOB IF THE
-- MAX SAL EXCEEDS 2600

SELECT JOB,
MAX(SAL)
FROM EMP
GROUP BY JOB
HAVING MAX(SAL) > 2600;
-- | JOB       | MAX(SAL) |
-- | MANAGER   |     2975 |
-- | ANALYST   |     3000 |
-- | PRESIDENT |     5000 |

-- Q6 WAQTD THE SALARIES WHICH ARE REPEATED IN EMP
-- TABLE

SELECT SAL,
COUNT(*)
FROM EMP
GROUP BY SAL
HAVING COUNT(*) > 1;
-- | SAL  | COUNT(*) |
-- | 1250 |        2 |
-- | 3000 |        2 |

-- Q7 WAQTD THE HIREDATE WHICH ARE DUPLICATED IN EMP
-- TABLE

SELECT HIREDATE,
COUNT(*)
FROM EMP
GROUP BY HIREDATE
HAVING COUNT(*) > 1;
-- | HIREDATE   | COUNT(*) |
-- | 1981-12-03 |        2 |

-- Q8 WAQTD AVG SALARY OF EACH DEPT IF AVG SAL IS LESS
-- THAN 3000

SELECT DEPTNO,
AVG(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) < 3000;
-- | DEPTNO | AVG(SAL)  |
-- |     20 | 2175.0000 |
-- |     30 | 1566.6667 |
-- |     10 | 2916.6667 |

-- Q9 WAQTD DEPTNO IF THERE ARE ATLEAST 3 EMP IN EACH
-- DEPT WHOS NAME
-- HAS CHAR 'A' OR 'S' .

SELECT DEPTNO
FROM EMP
WHERE ENAME LIKE '%A%'
OR ENAME LIKE '%S%'
GROUP BY DEPTNO
HAVING COUNT(*) >= 3;
-- | DEPTNO |
-- |     20 |
-- |     30 |

-- Q10 WAQTD MIN AND MAX SALARIES OF EACH JOB IF MIN
-- SAL IS MORE THAN 1000 AND MAX SAL IS LESS THAN 5000 .
SELECT JOB,
MIN(SAL),
MAX(SAL)
FROM EMP
GROUP BY JOB
HAVING MIN(SAL) > 1000
AND MAX(SAL) < 5000;
-- | JOB      | MIN(SAL) | MAX(SAL) |
-- | SALESMAN |     1250 |     1600 |
-- | MANAGER  |     2450 |     2975 |
-- | ANALYST  |     3000 |     3000 |
