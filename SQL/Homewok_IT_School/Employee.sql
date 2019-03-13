#1

SELECT e.name, d.name AS dep, chief.name, d.name AS chiefDepartment
FROM employee AS e
INNER JOIN employee AS chief
	ON e.chief_id = chief.id
LEFT JOIN department AS d
	ON e.department_id = d.id
INNER JOIN employee AS chiefDep
	ON d.id = chiefDep.department_id;

#2

SELECT e.name, e.salary, chief.name AS chiefName, chief.salary AS chiefSalary
FROM employee AS e
INNER JOIN employee AS chief
	ON e.chief_id = chief.id
WHERE e.salary < chief.salary;

#3

SELECT e.name, d.name AS depName, MAX(e.salary)
FROM employee AS e
LEFT JOIN department AS d
	ON e.department_id = d.id
GROUP BY d.name;

#4

SELECT department_id  FROM employee
GROUP BY department_id
HAVING COUNT(*) >= 3;

#5

SELECT e.name, e.department_id FROM employee AS e
INNER JOIN employee AS chief
	ON e.chief_id = chief.id
WHERE (e.chief_id <> e.id) AND (e.department_id <> chief.department_id);

#6

SELECT d.name AS depName FROM department AS d
LEFT JOIN employee AS e
	ON d.id = e.department_id
GROUP BY d.name
ORDER BY SUM(e.salary) DESC;

#7

SELECT name, salary FROM employee
ORDER BY salary DESC
LIMIT 2, 1;


