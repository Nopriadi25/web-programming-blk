-- Membuat Function
DELIMITER ;;
CREATE FUNCTION IF NOT EXISTS sp_kalkulator (
	bilangan_A 	SMALLINT,
	operator_bilangan	VARCHAR(6),
	bilangan_B	SMALLINT
)	RETURNS	SMALLINT DETERMINISTIC

BEGIN
	RETURN
	CASE operator_bilangan
		WHEN 'tambah' THEN bilangan_A + bilangan_B
		WHEN 'kurang' THEN bilangan_A - bilangan_B
		WHEN 'kali' THEN bilangan_A * bilangan_B
		ELSE bilangan_A / bilangan_B
	END;
END;;
DELIMITER ;

SELECT sp_kalkulator(10, 'tambah', 5);
SELECT sp_kalkulator(10, 'kurang', 5);
SELECT sp_kalkulator(10, 'kali', 5);
SELECT sp_kalkulator(10, 'bagi', 5);
