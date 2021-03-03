CREATE DATABASE IF NOT EXISTS book1;

USE book1;

CREATE TABLE IF NOT EXISTS sheet1 (
	saklar_lampu 	VARCHAR(3)
);

INSERT INTO sheet1 VALUES
	('ON');

INSERT INTO sheet1 VALUES
	('OFF');

ALTER TABLE sheet1 
ADD PRIMARY KEY (saklar_lampu);

