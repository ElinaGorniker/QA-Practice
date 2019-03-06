USE world;

SELECT * FROM country;

SELECT UPPER(Name) AS Name_Up, LOWER(Region) AS Region_Low, CHAR_LENGTH(Name) AS Count_char FROM country ORDER BY Count_char DESC;
	
SELECT Name, (SQRT(SurfaceArea / PI())) AS Radius FROM country ORDER BY Radius DESC;
    