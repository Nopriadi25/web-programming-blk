-- DROP DATABASE pns;
CREATE DATABASE IF NOT EXISTS pns;

USE pns;

-- Menghapus Tabel Agama
-- DROP TABLE tabel_agama;

DELETE FROM tabel_agama;
-- DELETE FROM pegawai;

-- Membuat Tabel Agama
CREATE TABLE IF NOT EXISTS tabel_agama(
	kode SMALLINT PRIMARY KEY,
	list_agama VARCHAR(12)
);

-- Memasukkan values atau nilai ke dalam table agama
-- INSERT INTO tabel_agama values
-- (1, 'Islam'),
-- (2, 'Katolik'),
-- (3, 'Protestan'),
-- (4, 'Hindu'),
-- (5, 'Buddha'),
-- (6, 'Kepercayaan');

-- UPDATE pegawai SET kode_pgw = '1' WHERE list_agama = "ISLAM";

-- SELECT pegawai.*, tabel_agama.*
-- FROM pegawai LEFT JOIN tabel_agama
-- ON pegawai.kode_pgw=tabel_agama.kode;

-- Membuat Prosedure sp_agama_ref
DELIMITER ;;
CREATE PROCEDURE IF NOT EXISTS sp_agama_ref(
	kode_ref SMALLINT,
	list_agama_ref VARCHAR(12)
)
BEGIN 
	INSERT INTO tabel_agama VALUES (kode_ref, list_agama_ref);
END;;
DELIMITER ;

CALL sp_agama_ref(1,'Islam');
CALL sp_agama_ref(2,'Katolik');
CALL sp_agama_ref(3,'Protestan');
CALL sp_agama_ref(4,'Hindu');
CALL sp_agama_ref(5,'Buddha');
CALL sp_agama_ref(6,'Kepercayaan');

-- Membuat Prosedur list agama
DELIMITER ;;

CREATE PROCEDURE IF NOT EXISTS list_agama(
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

-- ALTER TABLE	 pegawai
-- 	ADD COLUMN kode SMALLINT;

DROP PROCEDURE sp_pegawai_update;
-- Membuat Prosedur sp_pegawai_update
DELIMITER ;;
CREATE PROCEDURE IF NOT EXISTS sp_pegawai_update(
	nip_agama VARCHAR(18),
	nama_agama VARCHAR(12),
	kode_agama VARCHAR(1)
)
BEGIN 
	INSERT INTO pegawai(nip_pegawai, nama_pegawai, kode) VALUES
	(nip_agama, nama_agama, kode_agama);

	SELECT nip_pegawai, nama_pegawai, kode FROM pegawai;
END;;
DELIMITER ;

-- Memanggil dan menambahkan fungsi dengan NIP, Nama, dan Kode
-- CALL sp_pegawai_update('198003102009121003', 'Eren', '6');
-- CALL sp_pegawai_update('198704062014042001', 'Itadori', '2');
-- CALL sp_pegawai_update('197107261998021002', 'Vee', '3');
-- CALL sp_pegawai_update('197304232014092002', 'Reiner', '4'); 
-- CALL sp_pegawai_update('196108281992031003', 'Historia', '5'); 
-- CALL sp_pegawai_update('197209172005011002', 'Willy P.Johansyah','1');
-- CALL sp_pegawai_update('198201312010052001', 'Devi R. Bidari','2');
-- CALL sp_pegawai_update('200901202015071004', 'M.N.Dzakiy','3');
-- CALL sp_pegawai_update('201411142020102003', 'Erin Eftiana','4');
-- CALL sp_pegawai_update('201507142019031002', 'M.N.Dzaka','6');


-- DROP PROCEDURE sp_update_agama2;
-- -- Membuat Prosedur sp_update_agama2
DELIMITER ;;
CREATE PROCEDURE IF NOT EXISTS sp_update_agama2(
	kode_new VARCHAR(5),
	nip_new VARCHAR(18)
)
BEGIN 
	UPDATE pegawai
	SET kode = kode_new
	WHERE nip_pegawai = nip_new;
	SELECT *
	FROM pegawai;
END;;
DELIMITER ;

-- Memanggil fungsi dengan Kode dan NIP
CALL sp_update_agama2('197209172005011002', 1);
-- CALL sp_update_agama2('198201312010052001', 2);
-- CALL sp_update_agama2('200901202015071004', 3);
-- CALL sp_update_agama2('201507142019031002', 4); 
-- CALL sp_update_agama2('201411142020102003', 5);

-- Menampilkan NIP, Nama, dan Agama dari tabel pegawai(kolom), tabel agama(kolom)
SELECT nip_pegawai,
	   nama_pegawai,
	   list_agama
FROM pegawai, tabel_agama
WHERE pegawai.kode = tabel_agama.kode;

-- Membuat View Semua Agama
CREATE VIEW vw_semua_agama AS
SELECT nip,
	   nama,

	   DATE_FORMAT(CONCAT(LEFT(nip,8)), "%W, %d %M %Y") 
	   AS tgl_lahir_2,

	   DATE_FORMAT(CONCAT(MID(nip,9,6),"01"), "%M %Y") 
	   AS tgl_angkat_2,

	   IF(MID(nip,15,1)="1","Pria","Wanita") AS jns_kel,
	   RIGHT(nip,3) AS nomer_urut,
	   list_agama

	   FROM pegawai, tabel_agama
	   WHERE pegawai.kode = tabel_agama.kode;

