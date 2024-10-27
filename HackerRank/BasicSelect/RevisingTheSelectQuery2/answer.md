### 📂 Problem Title: Revising the Selected Query 1

**Platform**: HackerRank

- 🔗 [**Problem Link**](https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true)
- 🕒 **Difficulty**: ![Difficulty Badge](https://img.shields.io/badge/Difficulty-Easy-brightgreen)
- 📁 **Category**: ![SQL Badge](https://img.shields.io/badge/SQL-Basic%20Select-blue)

### ⚠️ Warning

![Warning Badge](https://img.shields.io/badge/Warning-MS%20SQL%20Server%20Only-red)

> **Note**: The following solution is tailored for **MS SQL Server**. Certain syntax or functions may differ in other SQL databases like MySQL or PostgreSQL.

---

#### 📄 Description

Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

#### 💡 Solution

```sql
SELECT
  NAME
FROM
  CITY
WHERE
  POPULATION > 120000
  AND COUNTRYCODE = 'USA';
```
