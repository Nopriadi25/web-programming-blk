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
			ProsenPraktek,
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
			ProsenPraktek,
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
		ProsenPraktek,
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

-- Cara Lain 
-- IF(grade="A","Memuaskan", 
-- 		-- 	IF(grade="B","Baik", 
-- 		-- 		IF(grade="C","Cukup",
-- 		-- 			IF(grade="D","Kurang",
-- 		-- 				"E")))) AS keterangan

FROM vw_nilai_kompetensi;

-- Untuk menampilkan dan menghitung jumlah grade
DROP VIEW vw_jml_grade;

CREATE VIEW vw_jml_grade AS
	SELECT 	grade,
			COUNT(grade) AS jumlah_grade
	FROM vw_keterangan
	-- WHERE kompetensi = 'K' and keterangan = 'Memuaskan'
	GROUP BY grade
	ORDER BY grade ASC;


-- Untuk menampilkan dan menghitung Jumlah Kompetensi
DROP VIEW vw_jml_kompetensi;

CREATE VIEW vw_jml_kompetensi AS
	SELECT 	kompetensi,
			COUNT(kompetensi) AS jumlah_kompetensi
	FROM	vw_keterangan
	GROUP BY kompetensi
	ORDER BY kompetensi ASC;


-- -- Untuk menampilkan dan menghitung Jumlah Keterangan
DROP VIEW vw_jml_keterangan;

CREATE VIEW vw_jml_keterangan AS
	SELECT 	keterangan,
			COUNT(keterangan) AS jumlah_keterangan
	FROM	vw_keterangan
	GROUP BY keterangan
	ORDER BY keterangan ASC;
