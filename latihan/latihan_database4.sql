CREATE TABLE IF NOT EXISTS nilai (
	nama	VARCHAR(12),
	teori_Nyata	TINYINT,
	praktek_Nyata TINYINT,
	PRIMARY KEY (nama, teori_Nyata, praktek_Nyata)
);

-- Untuk menghapus values table
DELETE FROM nilai;

-- Memasukkan values atau nilai ke dalam table
INSERT INTO nilai VALUES
('Mimo', 90, 100),
('Milo', 80, 85),
('Molly', 70, 65),
('Krista', 50, 50),
('Dzakiy', 50, 49);

-- Membuat View (Tabel virtual)
CREATE VIEW vw_nilai AS
SELECT *
FROM nilai;

-- Menghapus View (Tabel Virtual)
DROP VIEW vw_nilai;
CREATE VIEW vw_nilai AS
SELECT *
FROM nilai;


-- Cara Instruktur yang lebih mudah

-- Untuk menampilkan Nilai Prosentase
DROP VIEW vw_nilai_PersenTP;

CREATE VIEW vw_nilai_PersenTP AS
	SELECT 	nama,
			teori_Nyata,
			teori_Nyata * 0.3 AS ProsenTeori,
			praktek_Nyata,
			praktek_Nyata * 0.7 AS ProsenPraktek
FROM 	nilai;


-- Untuk menampilkan Nilai Total
DROP VIEW vw_nilai_total;

CREATE VIEW vw_nilai_total AS
	SELECT 	nama,
			teori_Nyata,
			ProsenTeori,
			praktek_Nyata,
			ProsenPraktek,
			ProsenTeori + ProsenPraktek AS total_nl

FROM 	vw_nilai_PersenTP;


-- Untuk menampilkan Nilai Grade
DROP VIEW vw_nilai_grade;

CREATE VIEW vw_nilai_grade AS
	SELECT 	nama,
			teori_Nyata,
			ProsenTeori,
			praktek_Nyata,
			total_nl,
			IF(total_nl>= 90,"A",
				IF(total_nl>= 80,"B",
					IF(total_nl>= 70,"C",
						IF(total_nl<= 50,"D","E")))) AS grade
FROM vw_nilai_total;
	

-- Untuk menampilkan Nilai Kompetensi
DROP VIEW vw_nilai_kompetensi;

CREATE VIEW vw_nilai_kompetensi AS
	SELECT 	nama,
			teori_Nyata,
			ProsenTeori,
			praktek_Nyata,
			total_nl,
			grade,
			IF(total_nl>=80,"K","BK") AS kompetensi
FROM vw_nilai_grade;


-- Untuk menampilkan Keterangan
DROP VIEW vw_keterangan;

CREATE VIEW vw_keterangan AS
SELECT	nama,
		teori_Nyata,
		ProsenTeori,
		praktek_Nyata,

		total_nl,
		grade,
		kompetensi,
		CASE grade
			WHEN 'A' THEN 'Memuaskan'
			WHEN 'B' THEN 'Baik'
			WHEN 'C' THEN 'Cukup'
			WHEN 'D' THEN 'Kurang'
			ELSE'Kurang'
		END AS keterangan	
FROM vw_nilai_kompetensi;


-- SELECT
-- 	nama,
-- 	teori_Nyata AS Nilai_Teori_nyata,
-- 	teori_Nyata*0.3 AS 'Nilai Teori 30%',

-- 	praktek_Nyata AS Nilai_Praktek_nyata,
-- 	praktek_Nyata*0.7 AS 'Nilai Praktek 70%',

-- 	teori_Nyata*0.3 + praktek_Nyata*0.7 AS Total,

-- 	CASE 
-- 		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 90
-- 			THEN 'A'
-- 		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 80
-- 			THEN 'B'	
-- 		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 70
-- 			THEN 'C'
-- 		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 50
-- 			THEN 'D'
-- 		ELSE 'E'		
-- 	END AS Grade,
	
-- 	CASE
-- 		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 80
-- 			THEN 'K'
-- 		ELSE 'BK'	
-- 	END AS Kompetensi,
	
-- 	CASE
-- 		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 90
-- 			THEN 'Memuaskan'		
-- 		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 80
-- 			THEN 'Baik'	
-- 		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 70
-- 			THEN 'Cukup'	
-- 		WHEN teori_Nyata*0.3 + praktek_Nyata*0.7 > 50
-- 			THEN 'Kurang'	
-- 		ELSE 'Kurang'	
-- 	END AS Keterangan
	
-- 	FROM nilai
-- 	ORDER BY teori_Nyata DESC;
