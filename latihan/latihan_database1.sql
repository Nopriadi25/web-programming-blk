CREATE DATABASE IF NOT EXISTS book1;

USE book1;

CREATE TABLE IF NOT EXISTS sheet1 (
	saklar_lampu 	VARCHAR(3) PRIMARY KEY
);

-- Memasukkan values ke dalam tabel sheet1
-- INSERT INTO sheet1 VALUES
-- 	('ON'),
-- 	('OFF');

-- Mendeklarasikan ON dan OFF pada kolom
SELECT saklar_lampu AS 'Saklar Lampu',
	IF(saklar_lampu='ON','NYALA','MATI') AS Status_lampu
FROM sheet1;

-- Menghitung jumlah values pada kolom
SELECT
	COUNT(saklar_lampu)
FROM sheet1
GROUP BY saklar_lampu
ORDER BY saklar_lampu ASC;
