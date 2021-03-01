CREATE DATABASE IF NOT EXISTS book1;

USE book1;

CREATE TABLE IF NOT EXISTS sheet1 (
	saklar_lampu 	VARCHAR(3)
);

INSERT INTO sheet1 VALUES
	('ON');

INSERT INTO sheet1 VALUES
	('OFF');

SELECT 	saklar_lampu, 
		COUNT(saklar_lampu)
FROM 	sheet1
ORDER BY 	saklar_lampu ASC;
