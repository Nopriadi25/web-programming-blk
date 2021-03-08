-- Membuat Tabel Lampu Lalu Lintas
CREATE TABLE IF NOT EXISTS sheet2(
	lampu_lalu_lintas VARCHAR(6) PRIMARY KEY
);

-- Memasukkan values ke dalam tabel sheet 2
-- INSERT INTO sheet2 (lampu_lalu_lintas) 
-- VALUES ("MERAH"), ("KUNING"), ("HIJAU");

SELECT lampu_lalu_lintas AS 'Lampu Lalu Lintas',
	IF(lampu_lalu_lintas="MERAH",
		"BERENTI",
		IF(lampu_lalu_lintas="KUNING",
			"BERHATI-HATI",
			"JALAN"
			)
		) AS status_lampu_lalulintas
	FROM sheet2; 
