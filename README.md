# SQL for Beginners 🚀

> A structured SQL practice repository designed to help beginners learn SQL step-by-step through topic-wise questions, complete solutions, output tables.
<!-- and explanations.-->

Most SQL practice platforms are excellent for interview preparation, but beginners often struggle to find a structured learning path. This repository aims to bridge that gap by organizing SQL concepts from the ground up 
<!--and providing everything needed to understand not just *what* query works, but *why* it works.-->

---

## ✨ Features

- 📚 200-300 topic-wise SQL practice questions
- 🏗️ Designed for absolute beginners
- 📝 Correct SQL query for every question
- 📊 Expected output table included <!-- - 💡 Explanation for every solution -->
- 🔄 Uses ANSI SQL syntax wherever possible
- 🐬 Primarily tested on MySQL
- 🗄️ Standard SCOTT Schema for consistency
- 🚀 Progressive learning path from basics to advanced concepts

---

## 📂 Repository Structure

```text
.
├── Projection
│   ├── 01_Select_Clause.sql
│   └── 02_Distinct_Expression_Alias.sql
│
├── Selection
│   ├── 03_Where_Clause.sql
│   ├── 04_Relational_Operators.sql
│   │   ├── = Operator
│   │   ├── > Operator
│   │   ├── < Operator
│   │   ├── >= Operator
│   │   ├── <= Operator
│   │   └── <> / != Operator
│   │
│   ├── 05_Logical_Operators.sql
│   │   ├── AND Operator
│   │   ├── OR Operator
│   │   └── NOT Operator
│   │
│   └── 06_Special_Operators.sql
│       ├── IN Operator
│       ├── NOT IN Operator
│       ├── BETWEEN Operator
│       ├── NOT BETWEEN Operator
│       ├── IS NULL Operator
│       ├── IS NOT NULL Operator
│       ├── LIKE Operator
│       └── NOT LIKE Operator
|
├── Functions
│   ├── 07_Multi_Row_Functions.sql
│       ├── AVG()
│       └── COUNT()
│       ├── MAX()
│       └── MIN()
│       └── SUM()
│   ├── 21_Single_Row_Functions.sql
│       └── CONCAT()
│       └── UPPER()
│       └── LOWER()
│       └── SUBSTR()
│       └── REVERSE()
│       └── REPLACE()
│       └── MOD()
│       └── ROUND()
│       └── TRUNCATE()
│       └── INSTR()
│       └── LAST_DAY()
│       └── DATE_FORMAT()
│       └── IFNULL()
│       └── LPAD()
│       └── RPAD()
│       └── TIMESTAMPDIFF(MONTH, d1, d2)
│
├── Group and Filtering
│   ├── 08_GroupBY_Clause.sql
│   ├── 09_Having_Clause.sql
|
├── Subquerry
│   ├── 10_Subquerry_Case1.sql
│   ├── 11_Subquerry_Case2.sql
│   ├── 12_Subquerry_Case1_&_Case2.sql
│   ├── 13_Subquerry_Types.sql
│   ├── 14_Nested_Subquery.sql
│   ├── 15_Emp-Mgr-Relation(BONUS).sql
│   ├── 20_subquery_Co-related.sql
│
├── Joins
│   ├── 16_Cross-&-Inner_joins.sql
│   ├── 17_Outer_joins.sql
│       ├── Left_Outer_join
│       ├── Right_Outer_join
│       ├── Full_Outer_join
│   ├── 18_Natural_joins.sql
│   ├── 19_Self_joins.sql
|
│   ├── 23_INTERVIEW_ORIENTED_QUESTIONS.sql
|
├── db
│   └── scott.sql
│
├── README.md
├── LICENSE
└── .gitignore
```

---

# 🎯 Who Is This Repository For?

This repository is ideal for:

- Anyone preparing to learn SQL systematically before moving to interview questions

---

# 🚀 Getting Started

Before attempting the questions, you need to install MySQL and import the SCOTT database provided in the repository.

No prior MySQL experience is required.

Refer the Readme.md in db folder.

---

# 📈 Project Progress

## ✅ Completed

### Selection (Filtering)

- [x] SELECT Clause
- [x] DISTINCT Clause
  - [x] Expressions
  - [x] Aliases

- [x] WHERE Clause

- [x] Concatenation Operator (||)

- [x] Relational Operators
  - [x] =
  - [x] != / <>
  - [x] >
  - [x] <
  - [x] >=
  - [x] <=

- [x] Logical Operators
  - [x] AND
  - [x] OR
  - [x] NOT

- [x] Special Operators
  - [x] IN
  - [x] NOT IN
  - [x] BETWEEN
  - [x] NOT BETWEEN
  - [x] IS NULL
  - [x] IS NOT NULL
  - [x] LIKE
  - [x] NOT LIKE

### Multi Row Functions (Aggregate Functions)
- [x] MAX()
- [x] MIN()
- [x] SUM()
- [x] AVG()
- [x] COUNT()

### GROUP BY
- [x] GROUP BY Clause
- [x] Aggregate Queries with GROUP BY

### HAVING
- [x] HAVING Clause
- [x] Group Filtering
- [x] GROUP BY + HAVING
  
### Subqueries 1
- [x] Subqueries Case 1
- [x] Subqueries Case 2

### Subqueries 2
- [x] Single Row Subqueries
- [x] Multi Row Subqueries
- [x] Nested Subqueries
  
### Selection (Filtering)
- [x] Subquery Operators
- [x] ALL
- [x] ANY
- [x] EXISTS
- [x] NOT EXISTS

### Joins
- [x] Cartesian Join / Cross Join
- [x] Inner Join / Equi Join
- [x] Left Outer Join
- [x] Right Outer Join
- [x] Full Outer Join
- [x] Self Join

### Single Row Functions

- [x] LENGTH()
- [x] CONCAT()
- [x] UPPER()
- [x] LOWER()
- [x] SUBSTR()
- [x] REVERSE()
- [x] REPLACE()
- [x] MOD()
- [x] ROUND()
- [x] TRUNCATE()
- [x] INSTR()
- [x] LAST_DAY()
- [x] DATE_FORMAT()
- [x] IFNULL()
- [x] LPAD()
- [x] RPAD()
- [x] TIMESTAMPDIFF(MONTH, d1, d2)

### SQL Practice Sets
- [x] Topic-wise Assignments
- [x] Mixed Practice Questions
- [x] Interview-Oriented Questions

## 🚧 Currently In Progress



---

## 📌 Planned Topics

<!--# 📚 Learning Roadmap

Follow the files in order.

## Projection

- [x] SELECT Clause
- [x] DISTINCT Clause
- [x] Expressions
- [x] Aliases

---

## Filtering

- [ ] WHERE Clause
- [ ] ORDER BY
- [ ] LIMIT

---

## Functions

- [ ] Numeric Functions
- [ ] String Functions
- [ ] Date Functions

---

## Aggregation

- [ ] Aggregate Functions
- [ ] GROUP BY
- [ ] HAVING

---

## Joins

- [ ] Inner Join
- [ ] Left Join
- [ ] Right Join
- [ ] Full Join
- [ ] Self Join

---

## Advanced SQL

- [ ] Subqueries
- [ ] Correlated Subqueries
- [ ] Set Operators
- [ ] Views
- [ ] CTEs
- [ ] Window Functions

--->

# 🤝 Contributing

Contributions are welcome.

You can help by:

- Adding beginner-friendly questions
- Improving explanations
- Reporting incorrect outputs
- Reporting incorrect queries
- Improving formatting
- Suggesting additional SQL topics

Feel free to open an Issue or submit a Pull Request.

---

# ⭐ Support The Project

If this repository helps you learn SQL:

- Give the repository a ⭐
- Share it with friends and classmates
- Follow future updates as new SQL topics are added

Every star helps the project reach more learners.

---

# 📜 License

This project is licensed under the MIT License.

See the `LICENSE` file for details.

---

### Built for beginners, one query at a time. 🚀
