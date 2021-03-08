-- Membuat Database Luas Tanah
-- CREATE DATABASE IF NOT EXISTS fungsi_luas_tanah;

-- USE fungsi_luas_tanah;

-- Memasukkan rumus fungsi luas tanah
DELIMITER ;;
CREATE FUNCTION sp_luas_tanah(
	panjang_tanah		SMALLINT,
	operator_bilangan 	VARCHAR(9),
	lebar_tanah			SMALLINT
)
	RETURNS	SMALLINT DETERMINISTIC

BEGIN 
	RETURN
	CASE operator_bilangan
	WHEN 'hitung' THEN panjang_tanah * lebar_tanah
	END;
END;;
DELIMITER ;

-- Mencoba rumus dengan memasukkan nilai angka
SELECT sp_luas_tanah(5, 'hitung', 12);
