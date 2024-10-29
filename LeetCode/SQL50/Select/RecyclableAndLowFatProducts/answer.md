### 📂 Problem Title: Recyclable and Low Fat Products

**Platform**: Leetcode

- 🔗 [**Problem Link**](https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50)
- 🕒 **Difficulty**: ![Difficulty Badge](https://img.shields.io/badge/Difficulty-Easy-brightgreen)
- 📁 **Category**: ![SQL Badge](https://img.shields.io/badge/SQL-Basic%20Select-blue)

### ⚠️ Warning

![Warning Badge](https://img.shields.io/badge/Warning-MS%20SQL%20Server%20Only-red)

> **Note**: The following solution is tailored for **MS SQL Server**. Certain syntax or functions may differ in other SQL databases like MySQL or PostgreSQL.

---

#### 📄 Description

Write a solution to find the ids of products that are both low fat and recyclable.

Return the result table in any order.

#### 💡 Solution

```sql
SELECT
    PRODUCT_ID
FROM
    PRODUCTS
WHERE
    LOW_FATS = 'Y'
    AND RECYCLABLE = 'Y';
```
