SELECT ctr.name, c.name, c.population 
FROM country AS ctr
LEFT JOIN city AS c 
	ON ctr.code = c.countrycode
WHERE c.population = (SELECT MIN(population) FROM city 
					  WHERE countrycode = c.countrycode)
GROUP BY ctr.name, c.name, c.population;