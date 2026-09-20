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
│   ├── 04_Concatenation_Operators.sql
│   ├── 05_Relational_Operators.sql
│   │   ├── = Operator
│   │   ├── > Operator
│   │   ├── < Operator
│   │   ├── >= Operator
│   │   ├── <= Operator
│   │   └── <> / != Operator
│   │
│   ├── 06_Logical_Operators.sql
│   │   ├── AND Operator
│   │   ├── OR Operator
│   │   └── NOT Operator
│   │
│   └── 07_Special_Operators.sql
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
│   ├── 08_Multi_Row_Functions.sql
│       ├── MAX()
│       ├── MIN()
│       ├── SUM()
│       ├── AVG()
│       └── COUNT()
│
├── Group and Filtering
│   ├── 09_GroupBY_Clause.sql
│   ├── 10_Having_Clause.sql
|
├── Subquerry
│   ├── 11_Subquerry_Case1.sql
│   ├── 12_Subquerry_Case2.sql
│   ├── 13_Subquerry_Case1_&_Case2.sql
│   ├── 14_Subquerry_Types.sql
│   ├── 15_Emp-Mgr-Relation(BONUS).sql
│
├── Joins
│   ├── 16_Cross-&-Inner_joins.sql
│   ├── 17_Outer_joins.sql
│   ├── 18_Self_joins.sql
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

---

## 🚧 Currently In Progress

### Subqueries 2
- [ ] Single Row Subqueries
- [ ] Multi Row Subqueries
- [ ] Nested Subqueries

---

## 📌 Planned Topics

### Selection (Filtering)

- [ ] Subquery Operators
  - [ ] ALL
  - [ ] ANY
  - [ ] EXISTS
  - [ ] NOT EXISTS

### Joins
- [ ] Cartesian Join / Cross Join
- [ ] Inner Join / Equi Join
- [ ] Left Outer Join
- [ ] Right Outer Join
- [ ] Full Outer Join
- [ ] Self Join

### Single Row Functions

#### String Functions
- [ ] LENGTH()
- [ ] CONCAT()
- [ ] UPPER()
- [ ] LOWER()
- [ ] INITCAP()
- [ ] INSTR()
- [ ] SUBSTR()
- [ ] LPAD()
- [ ] RPAD()

#### Numeric Functions
- [ ] MOD()
- [ ] TRUNC()
- [ ] ROUND()

#### Date Functions
- [ ] MONTHS_BETWEEN()
- [ ] LAST_DAY()

### SQL Practice Sets
- [ ] Topic-wise Assignments
- [ ] Mixed Practice Questions
- [ ] Interview-Oriented Questions

---

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
