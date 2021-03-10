-- Membuat Tabel Agama
CREATE TABLE IF NOT EXISTS agama(
	kode	SMALLINT, 	
	nama	VARCHAR (12),
	PRIMARY KEY (kode)
);

-- Cara lain
-- CREATE TABLE IF NOT EXISTS agama(
-- 	kode	INT NOT NULL AUTO_INCREMENT, 	
-- 	nama	VARCHAR (12),
-- 	PRIMARY KEY (kode)
-- );

-- Menghapus Table
-- DROP TABLE agama;

-- -- Menghapus Primary Key
-- DELETE FROM agama;

-- Memasukkan values atau nilai ke dalam table
-- INSERT INTO agama values
-- (1, 'Islam'),
-- (2, 'Katolik'),
-- (3, 'Protestan'),
-- (4, 'Hindu'),
-- (5, 'Buddha'),
-- (6, 'Kepercayaan');


-- DROP PROCEDURE sp_agama_pegawai;

-- Membuat Procedure sp_agama_pegawai;
DELIMITER ;;

CREATE PROCEDURE sp_agama_pegawai(
	kode INT,
	nama VARCHAR(12)
)

BEGIN
	INSERT INTO agama VALUES (kode, nama);
END;;	

DELIMITER ;
