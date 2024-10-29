### 📂 Problem Title: Replace Employee Id With The Unique Identifier

**Platform**: Leetcode

- 🔗 [**Problem Link**](https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/?envType=study-plan-v2&envId=top-sql-50)
- 🕒 **Difficulty**: ![Difficulty Badge](https://img.shields.io/badge/Difficulty-Easy-brightgreen)
- 📁 **Category**: ![SQL Badge](https://img.shields.io/badge/SQL-Basic%20Join-blue)

### ⚠️ Warning

![Warning Badge](https://img.shields.io/badge/Warning-MS%20SQL%20Server%20Only-red)

> **Note**: The following solution is tailored for **MS SQL Server**. Certain syntax or functions may differ in other SQL databases like MySQL or PostgreSQL.

---

#### 📄 Description

Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

Return the result table in any order.

#### 💡 Solution

```sql
SELECT
    U.UNIQUE_ID,
    E.NAME
FROM
    EMPLOYEES   E
    LEFT JOIN EMPLOYEEUNI U
    ON E.ID = U.ID;
```
