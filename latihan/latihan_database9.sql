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
-- DELETE FROM pegawai;
-- Memasukkan values atau nilai ke dalam table
-- INSERT INTO agama values
-- (1, 'Islam'),
-- (2, 'Katolik'),
-- (3, 'Protestan'),
-- (4, 'Hindu'),
-- (5, 'Buddha'),
-- (6, 'Kepercayaan');



-- DROP PROCEDURE sp_agama_pegawai;

-- -- Membuat Procedure sp_agama_pegawai;
-- DELIMITER ;;

-- CREATE PROCEDURE IF NOT EXISTS sp_agama_pegawai(
-- 	kode_agama SMALLINT,
-- 	nama_agama VARCHAR(12)
-- )

-- BEGIN
-- 	INSERT INTO agama VALUES (kode_agama, nama_agama);
-- END;;	

-- DELIMITER ;

-- Memanggil fungsi sp_agama_pegawai dengan kode dan nama agama
-- CALL sp_agama_pegawai(1,'Islam');
-- CALL sp_agama_pegawai(2,'Katolik');
-- CALL sp_agama_pegawai(3,'Protestan');
-- CALL sp_agama_pegawai(4,'Hindu');
-- CALL sp_agama_pegawai(5,'Buddha');
-- CALL sp_agama_pegawai(6,'Kepercayaan');


--  -- DROP PROCEDURE sp_pegawai_agama

-- -- Membuat Prosedur dari tabel gabungan Pegawai dengan Agama
DELIMITER ;;

CREATE PROCEDURE IF NOT EXISTS sp_pegawai_agama(
	nip_p	VARCHAR(18),
	kode_p SMALLINT
)

BEGIN
	UPDATE pegawai SET kode = kode_p
	WHERE nip_pegawai = nip_p;

	SELECT 	pegawai.nip_pegawai,
			pegawai.nama_pegawai,
			agama.nama
	FROM pegawai JOIN agama
	ON pegawai.kode_agama = agama.kode;

END;;
DELIMITER ;

-- Memanggil fungsi sp_agama_pegawai dengan kode dan nama agama
CALL sp_agama_pegawai('197209172005011002', 1);
-- CALL sp_agama_pegawai('198201312010052001', 2);
-- CALL sp_agama_pegawai('200901202015071004', 3);
-- CALL sp_agama_pegawai('201507142019031002', 4); 
-- CALL sp_agama_pegawai('201411142020102003', 5);

-- Membuat Prosedur list agama
DELIMITER ;;

CREATE PROCEDURE list_agama(
	kode_list_agama INT(1)
)

BEGIN
	DECLARE i INT;
	SET i = 1;
	WHILE i <= kode_list_agama DO
		INSERT INTO agama VALUES(
			CONVERT(i, CHAR),
			elt(i, 'Islam', 'Katolik', 'Protestan', 'Hindu', 'Buddha', 'Kepercayaan')
		);
		SET i = i + 1;
	END WHILE;
	SELECT *
	FROM agama;
END;;
DELIMITER ;

ALTER 
