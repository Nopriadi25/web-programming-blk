-- Membuat Tabel Warga
CREATE TABLE IF NOT EXISTS warga (
	nama 			VARCHAR(6),
	jenis_kelamin 	VARCHAR(6),
	status 			VARCHAR(7),
	PRIMARY KEY (nama, jenis_kelamin, status)
		);

-- Memasukkan Values ke dalam tabel Warga
-- INSERT INTO warga VALUES
-- ("Amin", "pria", "sendiri"),
-- ("Rahman", "pria", "kawin"),
-- ("Luki", "pria", "cerai"),
-- ("Dea", "wanita", "sendiri"),
-- ("Yani", "wanita", "kawin"),
-- ("Endah", "wanita", "cerai");

-- Menghapus View Tabel vw_warga
DROP VIEW vw_warga;

-- Membuat View Tabel vw_warga
CREATE VIEW IF NOT EXISTS vw_warga AS
SELECT *
FROM warga;

-- Menghapus View Tabel vw_seluruh_warga
-- DROP VIEW  vw_seluruh_warga;

-- Membuat View Tabel vw_seluruh_warga
CREATE VIEW vw_seluruh_warga AS
SELECT	nama,
		jenis_kelamin,
		status,

IF(jenis_kelamin="pria",
	IF(status="sendiri",
		"PERJAKA",
		IF(status="kawin",
			"MENIKAH",
			"DUDA"
		)
	),

	IF(status="sendiri",
		"PERAWAN",
		IF(status="kawin",
			"MENIKAH",
			"JANDA"
			)
		)
	) AS KETERANGAN_IF,

	CASE jenis_kelamin
		WHEN "pria" THEN
		CASE status
			WHEN "sendiri"	THEN "PERJAKA"
			WHEN "kawin" 	THEN "MENIKAH"
			ELSE "DUDA"
		END
ELSE	
		CASE status
			WHEN "sendiri"	THEN "PERAWAN"
			WHEN "kawin" 	THEN "MENIKAH"
			ELSE "JANDA"
		END
END AS KETERANGAN_CASE
FROM vw_warga;
