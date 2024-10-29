### 📂 Problem Title: Employees Whose Manager Left The Company

**Platform**: Leetcode

- 🔗 [**Problem Link**](https://leetcode.com/problems/employees-whose-manager-left-the-company/?envType=study-plan-v2&envId=top-sql-50)
- 🕒 **Difficulty**: ![Difficulty Badge](https://img.shields.io/badge/Difficulty-Easy-brightgreen)
- 📁 **Category**: ![SQL Badge](https://img.shields.io/badge/SQL-SubQuery-blue)

### ⚠️ Warning

![Warning Badge](https://img.shields.io/badge/Warning-MS%20SQL%20Server%20Only-red)

> **Note**: The following solution is tailored for **MS SQL Server**. Certain syntax or functions may differ in other SQL databases like MySQL or PostgreSQL.

---

#### 📄 Description

Find the IDs of the employees whose salary is strictly less than $30000 and whose manager left the company. When a manager leaves the company, their information is deleted from the Employees table, but the reports still have their manager_id set to the manager that left.

Return the result table ordered by employee_id.

#### 💡 Solution

```sql
SELECT
    employee_id
FROM
    Employees
WHERE
    salary < 30000
    AND manager_id IS NOT NULL
    AND NOT EXISTS (
        SELECT
            1
        FROM
            Employees as Manager
        WHERE
            Manager.employee_id = Employees.manager_id
    )
ORDER BY
    employee_id
```
