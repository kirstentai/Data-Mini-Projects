"""
Find the top 5 most expensive projects y the amount of budget allocated to each
employee on the project. Exclude projects with 0 employees. Assume each employee
works on only 1 project. The output should be the project title and the budget
that's allocated to each employee (i.e. budget-to-employee ratio).
Display the top 5 projects with the highest budget-to-employee ratio first.

tables:
    ms_projects: id | title | budget
    ms_emp_projects: emp_id | project_id

expected result: project | budget_emp_ratio
"""

-- project / budget_emp_ratio = budget/ count(employees)
-- inner join ms_emp_projects and ms_projects
-- group by title
-- budget/count(employee)
-- order by budget/count(employee)
-- limit 5

SELECT
    title as project,
    budget/ count(emp_id) AS budget_emp_ratio
FROM ms_projects p
INNER JOIN ms_emp_projects e
    ON p.id = e.project_id
GROUP BY 1, budget
ORDER BY 2 DESC
LIMIT 5
