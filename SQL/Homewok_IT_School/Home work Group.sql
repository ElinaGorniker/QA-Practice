SELECT CountryCode, COUNT(*) AS Count_of_city, AVG(Population) 
FROM city 
GROUP BY CountryCode
ORDER BY AVG(Population) DESC;
	
SELECT CountryCode AS Country, COUNT(*) AS Count_of_city 
FROM city 
GROUP BY CountryCode;
	
SELECT CountryCode AS Country, COUNT(*) AS Count_of_city 
FROM city 
GROUP BY CountryCode 
HAVING COUNT(*) >= 2;
	
SELECT CountryCode AS Country, COUNT(*) AS Count_of_city 
FROM city 
WHERE Population >= 1000000 
GROUP BY CountryCode 
HAVING COUNT(*) >= 2;
USE world
