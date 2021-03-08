-- Membuat Database
-- DROP DATABASE pns;

CREATE DATABASE IF NOT EXISTS PNS;

USE pns;

CREATE TABLE IF NOT EXISTS pegawai(
	nip_pegawai		VARCHAR(20), 
	nama_pegawai 	VARCHAR(18),
	PRIMARY KEY (nip_pegawai)
);


-- DELIMITER ;;
-- CREATE PROCEDURE IF NOT EXISTS sp_ins_pegawai ()
-- BEGIN
-- 	SELECT 	*
-- 	FROM 	pegawai;
-- END;;
-- DELIMITER ;

-- Menghapus Prosedur Insert pegawai
-- DROP PROCEDURE sp_ins_pegawai;

-- Menghapus Primrary Key
DELETE FROM pegawai;
-- Membuat Prosedure Nama dan NIP Pegawai
DELIMITER ;;
CREATE PROCEDURE IF NOT EXISTS sp_ins_pegawai (
	m_nip_pgw VARCHAR(20),
	m_nama_pgw VARCHAR(18)
)
BEGIN
	INSERT INTO pegawai VALUES
	(m_nip_pgw, m_nama_pgw);

	SELECT 	nip_pegawai, nama_pegawai
	FROM 	pegawai;
	
END;;
DELIMITER ;

-- Cara memanggil fungsi
CALL sp_ins_pegawai('197209172005011002','Willy P. Johansyah');
CALL sp_ins_pegawai('198201312010052001','Devi R. Bidari');
CALL sp_ins_pegawai('200901202015071004','M.N. Dzakiy');
CALL sp_ins_pegawai('201411142020102003','Erin Eftiana');

-- Menambah dan menghapus isi Tabel Pegawai
-- -- DROP TABLE pegawai;

-- INSERT INTO pegawai VALUES
-- ('197209172005011002','Willy P. Johansyah'),
-- ('198201312010052001','Devi R. Bidari'),
-- ('200901202015071004','M.N. Dzakiy'),
-- ('201507142019031002','M.N Dzaka'),
-- ('201411142020102003','Erin Eftiana');

-- Menambah dan menghapus view pegawai
DROP VIEW vw_pegawai;

CREATE VIEW vw_pegawai AS
	SELECT *
	FROM pegawai;

-- Membuat dan menghapus view tanggal lahir
DROP VIEW vw_tgl_lahir;

CREATE VIEW vw_tgl_lahir AS
	SELECT *,
			CONCAT(SUBSTRING(nip_pegawai,1,4),"-",SUBSTRING(nip_pegawai,5,2),"-",SUBSTRING(nip_pegawai,7,2)) AS Tanggal_lahir
	FROM pegawai;

-- Membuat dan menghapus view tanggal pengangkatan
DROP VIEW vw_tgl_pengangkatan;

CREATE VIEW vw_tgl_pengangkatan AS
	SELECT *,
			CONCAT(SUBSTRING(nip_pegawai,9,4),"-",SUBSTRING(nip_pegawai,13,2)) AS Tanggal_pengangkatan
	FROM vw_tgl_lahir;

-- -- Membuat dan menghapus view jenis kelamin
DROP VIEW vw_jenis_kelamin;

CREATE VIEW vw_jenis_kelamin AS
	SELECT 	*,
			IF(SUBSTRING(nip_pegawai,15,1)='1','PRIA','WANITA') AS Jenis_kelamin
	FROM vw_tgl_pengangkatan;		

-- -- Membuat dan menghapus view no urut
DROP VIEW vw_no_urut;

CREATE VIEW vw_no_urut AS
	SELECT 	*,
			RIGHT(nip_pegawai,3) AS No_urut
	FROM vw_jenis_kelamin;

-- Membuat dan menghapus data pegawai secara keseluruhan
DROP VIEW vw_data_pegawai;

CREATE VIEW vw_data_pegawai AS
	SELECT 	nip_pegawai,
			nama_pegawai,
			DATE_FORMAT(LEFT(nip_pegawai,8), "%W, %d %M %Y") AS Tanggal_lahir,
			-- Cara lain
			-- DATE_FORMAT(CONCAT(SUBSTRING(nip_pegawai,1,4),"-",SUBSTRING(nip_pegawai,5,2),"-",SUBSTRING(nip_pegawai,7,2)),"%W, %e %M %Y") AS Tanggal_lahir,
			
			DATE_FORMAT(CONCAT(SUBSTRING(nip_pegawai,9,4),"-",SUBSTRING(nip_pegawai,13,2),"-",SUBSTRING(nip_pegawai,7,2)),"%M, %Y") AS Tanggal_pengangkatan,
			Jenis_kelamin,
			No_urut
	FROM vw_no_urut;


-- Membuat Database baru
-- CREATE DATABASE fungsi_database_sp;

-- USE fungsi_sp;

-- Menghapus Prosedur Jenis Kelamin Pegawai
-- DROP PROCEDURE sp_info_pgw_jnskel;

-- Membuat Prosedur Jenis Kelamin Pegawai
-- DELIMITER ;;
-- CREATE PROCEDURE IF NOT EXISTS sp_info_pgw_jnskel (
-- 	m_jns_kel VARCHAR(6)
-- )
-- BEGIN
-- 	SELECT 	nama_pegawai,
-- 			Jenis_kelamin
-- 	FROM 	vw_data_pegawai
-- 	WHERE Jenis_kelamin = m_jns_kel;
-- END;;
-- DELIMITER ;

-- -- -- Cara memanggil fungsi
-- CALL sp_info_pgw_jnskel('PRIA');
-- CALL sp_info_pgw_jnskel('WANITA');

-- Cara lain sederhana memanggil fungsi hanya mengganti values 'WANITA'
-- SELECT 		nama_pegawai,
-- 			Jenis_kelamin
-- 	FROM 	vw_data_pegawai
-- 	WHERE Jenis_kelamin = 'WANITA';
