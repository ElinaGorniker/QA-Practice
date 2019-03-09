USE world;

SELECT * FROM city;

SELECT Name, District FROM city;

SELECT * FROM city 
WHERE CountryCode = 'RUS' 
ORDER BY Name;
	
SELECT CountryCode, District FROM city 
ORDER BY CountryCode;
	
SELECT * FROM city 
WHERE CountryCode IN ('ESP' , 'GRC', 'PRT') 
ORDER BY Name DESC;
	
SELECT  Name, Population FROM city 
WHERE Population >= 300000 AND Population <= 500000;

SELECT Name FROM city 
WHERE Name LIKE 'A%';
    
SELECT Name FROM city 
WHERE Name LIKE '%A%';
	
SELECT Name, CountryCode, Population FROM city
 WHERE CountryCode = 'RUS' AND Population >= 1000000;
	
SELECT Name, CountryCode, Population FROM city 
WHERE (CountryCode = 'ESP' AND Name LIKE 'A%') 
OR (CountryCode = 'GRC' AND Population < 200000);
        
        