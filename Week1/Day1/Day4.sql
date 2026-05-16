
46. SELECT * FROM Employee ORDER BY salary DESC LIMIT 1;

47. SELECT * FROM Employee 
WHERE salary > (SELECT AVG(salary) FROM Employee);

48. SELECT MAX(salary) AS second_highest_salary 
FROM Employee 
WHERE salary < (SELECT MAX(salary) FROM Employee);

49. SELECT department_id 
FROM Employee 
GROUP BY department_id 
ORDER BY COUNT(*) DESC 
LIMIT 1;

50. SELECT * FROM Employee e
WHERE salary > (
SELECT AVG(salary)
FROM Employee
WHERE department_id = e.department_id
);

51. SELECT DISTINCT salary
FROM Employee e1
WHERE 3 = (
SELECT COUNT(DISTINCT salary)
FROM Employee e2
WHERE e2.salary >= e1.salary
);

52. SELECT *
FROM Employee
WHERE age > ALL (
SELECT age
FROM Employee
WHERE department_id = (
SELECT department_id
FROM Department
WHERE name = 'HR'
)
);

53. SELECT department_id
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

54. SELECT *
FROM Employee
WHERE department_id IN (
SELECT department_id
FROM Project
GROUP BY department_id
HAVING COUNT(project_id) >= 2
);

55. SELECT *
FROM Employee
WHERE hire_date = (
SELECT hire_date
FROM Employee
WHERE name = 'Jane Smith'
);

56. SELECT SUM(salary) AS total_salary
FROM Employee
WHERE YEAR(hire_date) = 2020;

57. SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
ORDER BY avg_salary DESC;

58. SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 1 AND AVG(salary) > 55000;

59. SELECT *
FROM Employee
WHERE hire_date >= CURDATE() - INTERVAL 2 YEAR
ORDER BY hire_date;

60. SELECT department_id, COUNT(*) AS total_employees, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

61. SELECT name, salary
FROM Employee e
WHERE salary > (
SELECT AVG(salary)
FROM Employee
WHERE department_id = e.department_id
);

62. SELECT name
FROM Employee
WHERE hire_date = (
SELECT MIN(hire_date)
FROM Employee
);

63. SELECT d.name, COUNT(p.project_id) AS total_projects
FROM Department d
JOIN Employee e ON d.department_id = e.department_id
JOIN Project p ON e.emp_id = p.emp_id
GROUP BY d.name
ORDER BY total_projects DESC;

64. SELECT department_id, name, salary
FROM Employee e
WHERE salary = (
SELECT MAX(salary)
FROM Employee
WHERE department_id = e.department_id
);

65. SELECT name, salary
FROM Employee e
WHERE age > (
SELECT AVG(age)
FROM Employee
WHERE department_id = e.department_id
);

