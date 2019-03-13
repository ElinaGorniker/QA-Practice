SELECT * FROM country 
CROSS JOIN city;

SELECT ctr.code, ctr.name, c.name 
FROM country AS ctr 
INNER JOIN city AS c 
	ON ctr.capital = c.ID;

SELECT c.name, c.Population, ctr.code, ctr.name 
FROM country AS ctr 
INNER JOIN city AS c 
	ON ctr.code = c.countrycode;

SELECT ctr.continent, COUNT(c.id) AS city_count 
FROM country AS ctr 
LEFT JOIN city AS c 
	ON c.countrycode = ctr.code
GROUP BY ctr.continent;

SELECT ctr.name, COUNT(la.countrycode) AS lang_count 
FROM country AS ctr 
LEFT JOIN countrylanguage AS la
	ON ctr.code = la.countrycode 
WHERE la.isofficial = 'T'
GROUP BY ctr.name
ORDER BY lang_count DESC;
