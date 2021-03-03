CREATE TABLE IF NOT EXISTS nilai (
	nama	VARCHAR(12),
	teori	TINYINT,
	praktek TINYINT,
	PRIMARY KEY (nama, teori, praktek)
);

INSERT INTO nilai VALUES
('Mimo', 90, 100),
('Milo', 80, 85),
('Molly', 70, 65),
('Krista', 50, 50),
('Dzakiy', 50, 49);

-- CREATE VIEW vw_nilai AS
-- SELECT *
-- FROM nilai;

SELECT
	Nama,
	Teori AS Nilai_Teori
	Teori*30/100 AS 'Nilai_Teori 30%',

	Praktek AS Nilai_Praktek
	Praktek*70/100 AS 'Nilai_Praktek 70%',

	Teori*30/100 + Praktek*70/100 AS Total,

	CASE 
		WHEN Teori*30/100 + Praktek*70/100 > 90
			THEN 'A'
		WHEN Teori*30/100 + Praktek*70/100 > 80
			THEN 'B'	
		WHEN Teori*30/100 + Praktek*70/100 > 70
			THEN 'C'
		WHEN Teori*30/100 + Praktek*70/100 > 50
			THEN 'D'
		ELSE 'E'		
	END AS Grade,
	
	CASE
		WHEN Teori*30/100 + Praktek*70/100 > 80
			THEN 'K'
		ELSE 'BK'	
	END AS Kompetensi,
	
	CASE
		WHEN Teori*30/100 + Praktek*70/100 > 90
			THEN 'Memuaskan'		
		WHEN Teori*30/100 + Praktek*70/100 > 80
			THEN 'Baik'	
		WHEN Teori*30/100 + Praktek*70/100 > 70
			THEN 'Cukup'	
		WHEN Teori*30/100 + Praktek*70/100 > 50
			THEN 'Kurang'	
		ELSE 'Kurang'	
	END AS Keterangan
	
	FROM nilai
	ORDER BY Teori DESC;	
