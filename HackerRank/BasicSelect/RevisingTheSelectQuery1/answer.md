### 📂 Problem Title: Revising the Selected Query 2

**Platform**: HackerRank

- 🔗 [**Problem Link**](https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true)
- 🕒 **Difficulty**: ![Difficulty Badge](https://img.shields.io/badge/Difficulty-Easy-brightgreen)
- 📁 **Category**: ![SQL Badge](https://img.shields.io/badge/SQL-Basic%20Select-blue)

### ⚠️ Warning

![Warning Badge](https://img.shields.io/badge/Warning-MS%20SQL%20Server%20Only-red)

> **Note**: The following solution is tailored for **MS SQL Server**. Certain syntax or functions may differ in other SQL databases like MySQL or PostgreSQL.

---

#### 📄 Description

Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

#### 💡 Solution

```sql
SELECT
  *
FROM
  CITY
WHERE
  COUNTRYCODE = 'USA'
  AND POPULATION > 100000;
```
