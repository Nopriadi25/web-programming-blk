CREATE DATABASE IF NOT EXISTS book1;

USE book1;

CREATE TABLE IF NOT EXISTS sheet1(
	saklar_lampu VARCHAR(3)
);

-- INSERT INTO sheet1 VALUES
-- ('ON');
-- INSERT INTO sheet1 VALUES
-- ('OFF');

DELETE FROM sheet1;

ALTER TABLE sheet1
DROP PRIMARY KEY;

ALTER TABLE sheet1 
ADD PRIMARY KEY (saklar_lampu);

-- Memasukan 2 record sekaligus
INSERT INTO sheet1 (saklar_lampu) 
VALUES ("ON"), ("OFF");

-- INSERT INTO sheet1 (saklar_lampu) 
-- VALUES ("ON"), ("OFF");



SELECT saklar_lampu 
as 'Nama Saklar Lampu'/*jgn pakai ini karna tidak akan terbaca sbg data*/, 
COUNT(saklar_lampu) AS status_saklar_lampu
FROM sheet1
GROUP BY saklar_lampu
ORDER BY saklar_lampu ASC;



SELECT saklar_lampu AS 'SAKLAR LAMPU',
IF(saklar_lampu='ON','NYALA','MATI') AS STATUS_LAMPU
FROM sheet1;


-- TABEL LAMPU LALU LINTAS
CREATE TABLE IF NOT EXISTS sheet2(
	lampu_lalu_lintas VARCHAR(6) PRIMARY KEY
);

DELETE FROM sheet2;

INSERT INTO sheet2 (lampu_lalu_lintas) 
VALUES ("MERAH"), ("KUNING"), ("HIJAU");

SELECT lampu_lalu_lintas AS 'Lampu Lalu Lintas',
IF(lampu_lalu_lintas="MERAH","BERENTI",
	IF(lampu_lalu_lintas="KUNING","BERHATI-HATI","JALAN")) AS status_lampu_lalulintas
	FROM sheet2; 


-- TABEL STATUS PERNIKAHAN
CREATE TABLE IF NOT EXISTS warga (
	nama 			VARCHAR(6),
	jenis_kelamin 	VARCHAR(6),
	status 			VARCHAR(7)
	-- keterangan VARCHAR(7)
);


-- UNTUK MEMBUANG DATA YANG SEBELUMNYA MASUK
DELETE FROM warga;

-- UNTUK MENGHAPUS PRIMARY KEY YANG SEBELUMNYA ADA
ALTER TABLE warga
DROP PRIMARY KEY;

-- MENAMBAHKAN PRIMARY KEY PADA KOLOM NAMA
ALTER TABLE warga
ADD PRIMARY KEY (nama_warga);

-- MEMASUKAN ISI DARI KOLOM NAMA, jenis_kelamin, STATUS
INSERT INTO warga VALUES
("Amin", "pria", "sendiri"),
("Rahman", "pria", "kawin"),
("Luki", "pria", "cerai"),
("Dea", "wanita", "sendiri"),
("Yani", "wanita", "kawin"),
("Endah", "wanita", "cerai");
-- ("Endah", "wanita", "cerai"),
-- ("Amin", "pria", "sendiri");

-- MENAMPILKAN SELURUH KOLOM DAN KOLOM TAMBAHAN (KETERANGAN) YANG SUDAH DIBERI LOGIKA IF
SELECT *,
IF(jenis_kelamin="pria",
	IF(status="sendiri","perjaka",
IF(status="kawin","MENIKAH","DUDA")),
IF(status="sendiri","PERAWAN",
	IF(status="kawin","MENIKAH","JANDA"))) AS keterangan
FROM warga;
