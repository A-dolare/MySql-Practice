-- Q1 WAQTD number of employees working in each dept except the
-- Employee working as analyst .

SELECT COUNT(*), DEPTNO
FROM EMP
WHERE JOB != 'ANALYST'
GROUP BY DEPTNO;
-- | COUNT(*) | DEPTNO |
-- |        3 |     20 |
-- |        6 |     30 |
-- |        3 |     10 |

-- Q2 WAQTD maximum salary given to each job .

SELECT MAX(SAL), JOB
FROM EMP
GROUP BY JOB;
-- | MAX(SAL) | JOB       |
-- |     1300 | CLERK     |
-- |     1600 | SALESMAN  |
-- |     2975 | MANAGER   |
-- |     3000 | ANALYST   |
-- |     5000 | PRESIDENT |

-- Q3 WAQTD number of employees working in each job if the
-- employees Have character 'A' in their names .

SELECT COUNT(*), JOB
FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY JOB;
-- | COUNT(*) | JOB      |
-- |        3 | SALESMAN |
-- |        2 | MANAGER  |
-- |        2 | CLERK    |

-- Q4 WAQTD number of employees getting commission in each
-- dept .

SELECT COUNT(*), DEPTNO
FROM EMP
WHERE COMM IS NOT NULL
GROUP BY DEPTNO;
-- | COUNT(*) | DEPTNO |
-- |        4 |     30 |

-- METHOD 2

SELECT DEPTNO, COUNT(COMM)
FROM EMP
GROUP BY DEPTNO;
-- | DEPTNO | COUNT(COMM) |
-- |     20 |           0 |
-- |     30 |           4 |
-- |     10 |           0 |

/*                                                                  ASSIGNMENT QUESTIONS ON GROUP BY                                                           */

-- Q1 WAQTD NUMBER OF EMPLOYEES WORKING IN EACH
-- DEPARTEMENT EXCEPT PRESIDENT

SELECT COUNT(*), DEPTNO
FROM EMP
WHERE JOB != 'PRESIDENT'
GROUP BY DEPTNO;
-- | COUNT(*) | DEPTNO |
-- |        5 |     20 |
-- |        6 |     30 |
-- |        2 |     10 |

-- Q2 WAQTD TOTAL SALARY NEEDED TO PAY ALL THE
-- EMPLOYEES IN EACH JOB.

SELECT SUM(SAL), JOB
FROM EMP
GROUP BY JOB;
-- | SUM(SAL) | JOB       |
-- |     4150 | CLERK     |
-- |     5600 | SALESMAN  |
-- |     8275 | MANAGER   |
-- |     6000 | ANALYST   |
-- |     5000 | PRESIDENT |

-- Q3 WAQTD NUMBER OF EMPLOYEEES WORKING AS
-- MANAGER IN EACH DEPARTMENT .

SELECT COUNT(*), DEPTNO
FROM EMP
WHERE JOB = 'MANAGER'
GROUP BY DEPTNO;
-- | COUNT(*) | DEPTNO |
-- |        1 |     20 |
-- |        1 |     30 |
-- |        1 |     10 |

-- Q4 WAQTD AVG SALARY NEEDED TO PAY ALL THE
-- EMPLOYEES IN EACH DEPARTMENT EXCLUDING THE
-- EMPLOYEES OF DEPTNO 20.

SELECT AVG(SAL), DEPTNO
FROM EMP
WHERE DEPTNO != 20
GROUP BY DEPTNO;
-- | AVG(SAL)  | DEPTNO |
-- | 1566.6667 |     30 |
-- | 2916.6667 |     10 |

-- Q5 WAQTD NUMBER OF EMPLOYEES HAVING CHARACTER
-- 'A' IN THEIR NAMES IN EACH JOB .

SELECT COUNT(*), JOB
FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY JOB;
-- | COUNT(*) | JOB      |
-- |        3 | SALESMAN |
-- |        2 | MANAGER  |
-- |        2 | CLERK    |

-- Q6 WAQTD NUMBER OF EMPLOYEES AND AVG SALARY
-- NEEDED TO PAY THE EMPLOYEES WHO SALARY IN
-- GREATER THAN 2000 IN EACH DEPT.

SELECT COUNT(*), AVG(SAL), DEPTNO
FROM EMP
WHERE SAL > 2000
GROUP BY DEPTNO;
-- | COUNT(*) | AVG(SAL)  | DEPTNO |
-- |        3 | 2991.6667 |     20 |
-- |        1 | 2850.0000 |     30 |
-- |        2 | 3725.0000 |     10 |

-- Q7 WAQDTD TOTAL SALARY NEEDED TO PAY AND NUMBER
-- OF SALESMANS IN EACH DEPT.
SELECT SUM(SAL), COUNT(*), DEPTNO
FROM EMP
WHERE JOB = 'SALESMAN'
GROUP BY DEPTNO;
-- | SUM(SAL) | COUNT(*) | DEPTNO |
-- |     5600 |        4 |     30 |

SELECT SUM(SAL), COUNT(*), DEPTNO
FROM EMP
WHERE JOB = 'SALESMAN'
GROUP BY DEPTNO;
-- | SUM(SAL) | COUNT(*) | DEPTNO |
-- |     5600 |        4 |     30 |

-- Q8 WAQTD NUMBER OF EMPLOYEES WITH THEIR MAXIMUM
-- SALARIES IN EACH JOB.

SELECT COUNT(*), MAX(SAL), JOB
FROM EMP
GROUP BY JOB;
-- | COUNT(*) | MAX(SAL) | JOB       |
-- |        4 |     1300 | CLERK     |
-- |        4 |     1600 | SALESMAN  |
-- |        3 |     2975 | MANAGER   |
-- |        2 |     3000 | ANALYST   |
-- |        1 |     5000 | PRESIDENT |

-- Q9 WAQTD MAXIMUM SALARIES GIVEN TO AN EMPLOYEE
-- WORKING IN EACH DEPT.

SELECT MAX(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO;
-- | MAX(SAL) | DEPTNO |
-- |     3000 |     20 |
-- |     2850 |     30 |
-- |     5000 |     10 |

-- Q10 WAQTD NUMBER OF TIMES THE SALARIES PRESENT IN
-- EMPLOYEE TABLE .

SELECT COUNT(*), SAL
FROM EMP
GROUP BY SAL;
-- | COUNT(*) | SAL  |
-- |        1 |  800 |
-- |        1 | 1600 |
-- |        2 | 1250 |
-- |        1 | 2975 |
-- |        1 | 2850 |
-- |        1 | 2450 |
-- |        2 | 3000 |
-- |        1 | 5000 |
-- |        1 | 1500 |
-- |        1 | 1100 |
-- |        1 |  950 |
-- |        1 | 1300 |
