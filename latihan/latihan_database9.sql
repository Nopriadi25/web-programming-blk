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
DELETE FROM agama;

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

CREATE PROCEDURE IF NOT EXISTS sp_agama_pegawai(
	kode INT,
	nama VARCHAR(12)
)

BEGIN
	INSERT INTO agama VALUES (kode, nama);
END;;	

DELIMITER ;

-- Memanggil fungsi sp_agama_pegawai dengan kode dan nama agama
CALL sp_agama_pegawai(1,'Islam');
CALL sp_agama_pegawai(2,'Katolik');
CALL sp_agama_pegawai(3,'Protestan');
CALL sp_agama_pegawai(4,'Hindu');
CALL sp_agama_pegawai(5,'Buddha');
CALL sp_agama_pegawai(6,'Kepercayaan');
