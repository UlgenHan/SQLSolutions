### 📂 Problem Title: The PADS

**Platform**: HackerRank

- 🔗 [**Problem Link**](https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true)
- 🕒 **Difficulty**: ![Difficulty Badge](https://img.shields.io/badge/Difficulty-Medium-yellow)
- 📁 **Category**: ![SQL Badge](https://img.shields.io/badge/SQL-Advanced%20Select-purple)

### ⚠️ Warning

![Warning Badge](https://img.shields.io/badge/Warning-MS%20SQL%20Server%20Only-red)

> **Note**: The following solution is tailored for **MS SQL Server**. Certain syntax or functions may differ in other SQL databases like MySQL or PostgreSQL.

---

#### 📄 Description

Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

#### 💡 Solution

```sql
SELECT Name + '(' + SUBSTRING(Occupation , 1 , 1 ) + ')'
FROM OCCUPATIONS
ORDER BY Name;

SELECT 'There are a total of ' + CAST(COUNT(Name) AS VARCHAR) + ' ' + LOWER(Occupation) + 's.'
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Name), Occupation;
```
