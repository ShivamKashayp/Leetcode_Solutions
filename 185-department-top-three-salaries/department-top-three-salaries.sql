SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM Department d
JOIN (
    SELECT *,
           DENSE_RANK() OVER (
               PARTITION BY departmentId
               ORDER BY salary DESC
           ) AS rnk
    FROM Employee
) e
ON d.id = e.departmentId
WHERE e.rnk <= 3
ORDER BY d.name, e.salary DESC;