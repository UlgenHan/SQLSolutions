### 📂 Problem Title: Exchange Seats

**Platform**: Leetcode

- 🔗 [**Problem Link**](https://leetcode.com/problems/exchange-seats/?envType=study-plan-v2&envId=top-sql-50)
- 🕒 **Difficulty**: ![Difficulty Badge](https://img.shields.io/badge/Difficulty-Medium-yellow)
- 📁 **Category**: ![SQL Badge](https://img.shields.io/badge/SQL-SubQuery-blue)

### ⚠️ Warning

![Warning Badge](https://img.shields.io/badge/Warning-MS%20SQL%20Server%20Only-red)

> **Note**: The following solution is tailored for **MS SQL Server**. Certain syntax or functions may differ in other SQL databases like MySQL or PostgreSQL.

---

#### 📄 Description

Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.

Return the result table ordered by id in ascending order.

The result format is in the following example.

#### 💡 Solution

```sql
SELECT
    CASE
        WHEN id = (
            SELECT
                MAX(id)
            FROM
                Seat
        ) AND id % 2 = 1 THEN
            id
        WHEN id % 2 = 0 THEN
            id - 1
        WHEN id % 2 = 1 THEN
            id + 1
    END as id,
    student
FROM
    Seat
ORDER BY
    id;
```
