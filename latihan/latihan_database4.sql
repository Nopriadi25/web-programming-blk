CREATE TABLE IF NOT EXISTS nilai (
	nama	VARCHAR(12),
	teori_Nyata	TINYINT,
	praktek_Nyata TINYINT,
	PRIMARY KEY (nama, teori_Nyata, praktek_Nyata)
);

-- DELETE FROM nilai;

-- INSERT INTO nilai VALUES
-- ('Mimo', 90, 100),
-- ('Milo', 80, 85),
-- ('Molly', 70, 65),
-- ('Krista', 50, 50),
-- ('Dzakiy', 50, 49);

-- CREATE VIEW vw_nilai AS
-- SELECT *
-- FROM nilai;

SELECT
	nama,
	teori_Nyata AS Nilai_Teori_nyata,
	teori_Nyata*0.3 AS 'Nilai Teori 30%',

	praktek_Nyata AS Nilai_Praktek_nyata,
	praktek_Nyata*0.7 AS 'Nilai Praktek 70%',

	teori_Nyata*0.3 + praktek_Nyata*0.7 AS Total,

	CASE 
		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 90
			THEN 'A'
		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 80
			THEN 'B'	
		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 70
			THEN 'C'
		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 50
			THEN 'D'
		ELSE 'E'		
	END AS Grade,
	
	CASE
		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 80
			THEN 'K'
		ELSE 'BK'	
	END AS Kompetensi,
	
	CASE
		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 90
			THEN 'Memuaskan'		
		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 80
			THEN 'Baik'	
		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 70
			THEN 'Cukup'	
		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 50
			THEN 'Kurang'	
		ELSE 'Kurang'	
	END AS Keterangan
	
	FROM nilai
	ORDER BY teori_Nyata DESC;
