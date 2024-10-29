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