DELIMITER $$
CREATE PROCEDURE test_data()
BEGIN
	DECLARE i INT DEFAULT 1;
    WHILE i<=100 DO
		INSERT INTO category (name)
        VALUES (CONCAT('category',i));
        SET i=i+1;
	END WHILE;
END $$

CALL test_data();

DELIMITER $$
CREATE PROCEDURE test_data2()
BEGIN
	DECLARE i INT DEFAULT 1;
    WHILE i<=500 DO
		INSERT INTO product (name, price, categoryId)
        VALUES (CONCAT('name',i), (SELECT FLOOR(1000 + (RAND() * 25000))), (SELECT FLOOR(1 + (RAND() * 102))));
        SET i=i+1;
	END WHILE;
END $$

CALL test_data2();

/*Не знаю как решить проблему: когда во второй процедуре выставляю число 5000, то времени на связь с сервером (30.498 sec) не хватает для выполнения, пробовала делать последовательными процедурами (начинать с i=800, например), но когда числа становятся четырех значными, сбивается само именование). Пока сделала 500 строк. Можно ли как-то увеличить время на соединение с сервером, чтобы разом добавить 5000 строк или здесь дело в быстродействии ПК? */

