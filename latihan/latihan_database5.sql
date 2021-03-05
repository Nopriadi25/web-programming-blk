-- Membuat Database
-- DROP DATABASE pns;

CREATE DATABASE IF NOT EXISTS PNS;

USE pns;

CREATE TABLE IF NOT EXISTS pegawai(
	nip_pegawai		VARCHAR(20), 
	nama_pegawai 	VARCHAR(18),
	PRIMARY KEY (nip_pegawai)
);

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

					   
-- Membuat Kakulator dengan RETURN dan RETURNS function di MYSQL
DELIMITER ;;
CREATE FUNCTION sp_kalkulator (
	bilangan_A 	SMALLINT,
	operator_bilangan	VARCHAR(6),
	bilangan_B	SMALLINT
)	RETURNS	SMALLINT DETERMINISTIC

BEGIN
	RETURN
	CASE operator_bilangan
		WHEN 'tambah' THEN bilangan_A + bilangan_B
		WHEN 'kurang' THEN bilangan_A - bilangan_B
		WHEN 'kali' THEN bilangan_A * bilangan_B
		ELSE bilangan_A / bilangan_B
	END
END;;
DELIMITER ;
					   
SELECT sp_kalkulator(10, 'tambah', 5);
SELECT sp_kalkulator(10, 'kurang', 5);
SELECT sp_kalkulator(10, 'kali', 5);
SELECT sp_kalkulator(10, 'bagi', 5);
					   
					   
