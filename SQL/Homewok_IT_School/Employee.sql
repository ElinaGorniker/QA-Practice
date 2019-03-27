#1 Выполнено

SELECT e.name, dep.name AS dep, chief.name, d.name AS chiefDepartment
FROM employee AS e
LEFT JOIN employee AS chief
	ON e.chief_id = chief.id 
LEFT JOIN department AS dep
ON e.department_id = dep.id
LEFT JOIN department AS d
	ON chief.department_id = d.id;

#2 Выполнено

SELECT e.name, e.salary, chief.name AS chiefName, chief.salary AS chiefSalary
FROM employee AS e
INNER JOIN employee AS chief
	ON e.chief_id = chief.id
WHERE e.salary > chief.salary;

/*#3 Исправлено, но не знаю, как по стандарту сделать так, чтобы выводилось имя сотрудника, а группировка была по отделу*/

SELECT name, salary
FROM employee 
WHERE salary = (SELECT MAX(salary) FROM employee GROUP BY department_id);


#4 Выполнено

SELECT department_id FROM employee
GROUP BY department_id
HAVING COUNT(*) >= 3;

#5 Выполнено

SELECT e.name, e.department_id FROM employee AS e
LEFT JOIN employee AS chief
	ON e.chief_id = chief.id
WHERE e.department_id <> chief.department_id;

#6 Выполнено

SELECT d.name AS depName, SUM(e.salary) AS com_sum FROM department AS d
LEFT JOIN employee AS e
	ON d.id = e.department_id
GROUP BY d.name
ORDER BY com_sum DESC
LIMIT 1;

#7 Выполнено

SELECT name, salary FROM employee
ORDER BY salary DESC
LIMIT 2, 1;




