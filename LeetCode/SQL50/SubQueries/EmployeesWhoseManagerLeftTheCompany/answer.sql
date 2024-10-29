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