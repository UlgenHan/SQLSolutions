### 📂 Problem Title: Binary Tree Node

**Platform**: HackerRank

- 🔗 [**Problem Link**](https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true)
- 🕒 **Difficulty**: ![Difficulty Badge](https://img.shields.io/badge/Difficulty-Medium-yellow)
- 📁 **Category**: ![SQL Badge](https://img.shields.io/badge/SQL-Advanced%20Select-purple)

### ⚠️ Warning

![Warning Badge](https://img.shields.io/badge/Warning-MS%20SQL%20Server%20Only-red)

> **Note**: The following solution is tailored for **MS SQL Server**. Certain syntax or functions may differ in other SQL databases like MySQL or PostgreSQL.

---

#### 📄 Description

You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.

#### 💡 Solution

```sql
SELECT
    CONCAT( N, ' ',
        CASE
            WHEN P is NULL THEN
                'Root'
            WHEN NOT EXISTS (
                SELECT
                    1
                FROM
                    BST AS B
                WHERE
                    B.P = BST.N
            ) THEN
                'Leaf'
            ELSE
                'Inner'
        END )
FROM
    BST
ORDER BY
    N;
```
