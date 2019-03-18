#1 Исправлено

SELECT e.name, dep.name AS dep, chief.name, d.name AS chiefDepartment
FROM employee AS e
LEFT JOIN employee AS chief
	ON e.chief_id = chief.id 
LEFT JOIN department AS dep
ON e.department_id = dep.id
LEFT JOIN department AS d
	ON chief.department_id = d.id;

#2 Исправлено

SELECT e.name, e.salary, chief.name AS chiefName, chief.salary AS chiefSalary
FROM employee AS e
LEFT JOIN employee AS chief
	ON e.chief_id = chief.id
WHERE e.salary > chief.salary;

/*#3 Исправлено, но не знаю, как по стандарту сделать так, чтобы выводилось имя сотрудника, а группировка была по отделу*/

SELECT name, department_id, MAX(salary) 
FROM employee
GROUP BY department_id;

#4 Перенесен COUNT из HAVING в SELECT

SELECT department_id, COUNT(*) AS emp FROM employee
GROUP BY department_id
HAVING emp >= 3;

#5 Исправлено

SELECT e.name, e.department_id FROM employee AS e
LEFT JOIN employee AS chief
	ON e.chief_id = chief.id
WHERE e.department_id <> chief.department_id;

#6 Исправлено частично, но не знаю, как сделать, не применяя LIMIT

SELECT d.name AS depName, SUM(e.salary) AS com_sum FROM department AS d
LEFT JOIN employee AS e
	ON d.id = e.department_id
GROUP BY d.name
ORDER BY com_sum DESC
LIMIT 1;

#7 Не исправлено, пока не могу понять, как сделать без LIMIT

SELECT name, salary FROM employee
ORDER BY salary DESC
LIMIT 2, 1;




