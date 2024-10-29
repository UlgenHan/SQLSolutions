### 📂 Problem Title: New Companies

**Platform**: HackerRank

- 🔗 [**Problem Link**](https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true)
- 🕒 **Difficulty**: ![Difficulty Badge](https://img.shields.io/badge/Difficulty-Medium-yellow)
- 📁 **Category**: ![SQL Badge](https://img.shields.io/badge/SQL-Advanced%20Select-purple)

### ⚠️ Warning

![Warning Badge](https://img.shields.io/badge/Warning-MS%20SQL%20Server%20Only-red)

> **Note**: The following solution is tailored for **MS SQL Server**. Certain syntax or functions may differ in other SQL databases like MySQL or PostgreSQL.

---

#### 📄 Description

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note:

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.

#### 💡 Solution

```sql
SELECT
    C.COMPANY_CODE,
    C.FOUNDER,
    COUNT(distinct E.LEAD_MANAGER_CODE),
    COUNT(distinct E.SENIOR_MANAGER_CODE),
    COUNT(distinct E.MANAGER_CODE),
    COUNT(distinct E.EMPLOYEE_CODE)
FROM
    COMPANY  C
    JOIN EMPLOYEE E
    on C.COMPANY_CODE = E.COMPANY_CODE
GROUP BY
    C.COMPANY_CODE,
    C.FOUNDER
ORDER BY
    C.COMPANY_CODE ASC;
```
